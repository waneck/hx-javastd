package sun.security.pkcs12;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*/
extern class PKCS12KeyStore extends java.security.KeyStoreSpi
{
	/**
	* This class provides the keystore implementation referred to as "PKCS12".
	* Implements the PKCS#12 PFX protected using the Password privacy mode.
	* The contents are protected using Password integrity mode.
	*
	* Currently we support following PBE algorithms:
	*  - pbeWithSHAAnd3KeyTripleDESCBC to encrypt private keys
	*  - pbeWithSHAAnd40BitRC2CBC to encrypt certificates
	*
	* Supported encryption of various implementations :
	*
	* Software and mode.     Certificate encryption  Private key encryption
	* ---------------------------------------------------------------------
	* MSIE4 (domestic            40 bit RC2.            40 bit RC2
	* and xport versions)
	* PKCS#12 export.
	*
	* MSIE4, 5 (domestic         40 bit RC2,            40 bit RC2,
	* and export versions)       3 key triple DES       3 key triple DES
	* PKCS#12 import.
	*
	* MSIE5                      40 bit RC2             3 key triple DES,
	* PKCS#12 export.                                   with SHA1 (168 bits)
	*
	* Netscape Communicator      40 bit RC2             3 key triple DES,
	* (domestic and export                              with SHA1 (168 bits)
	* versions) PKCS#12 export
	*
	* Netscape Communicator      40 bit ciphers only    All.
	* (export version)
	* PKCS#12 import.
	*
	* Netscape Communicator      All.                   All.
	* (domestic or fortified
	* version) PKCS#12 import.
	*
	* OpenSSL PKCS#12 code.      All.                   All.
	* ---------------------------------------------------------------------
	*
	* NOTE: Currently PKCS12 KeyStore does not support TrustedCertEntries.
	* PKCS#12 is mainly used to deliver private keys with their associated
	* certificate chain and aliases. In a PKCS12 keystore, entries are
	* identified by the alias, and a localKeyId is required to match the
	* private key with the certificate.
	*
	* @author Seema Malkani
	* @author Jeff Nisewanger
	* @author Jan Luehe
	*
	* @see KeyProtector
	* @see java.security.KeyStoreSpi
	* @see KeyTool
	*
	*
	*/
	@:public @:static @:final public static var VERSION_3(default, null) : Int;
	
	/**
	* Returns the key associated with the given alias, using the given
	* password to recover it.
	*
	* @param alias the alias name
	* @param password the password for recovering the key
	*
	* @return the requested key, or null if the given alias does not exist
	* or does not identify a <i>key entry</i>.
	*
	* @exception NoSuchAlgorithmException if the algorithm for recovering the
	* key cannot be found
	* @exception UnrecoverableKeyException if the key cannot be recovered
	* (e.g., the given password is wrong).
	*/
	@:overload @:public override public function engineGetKey(alias : String, password : java.NativeArray<java.StdTypes.Char16>) : java.security.Key;
	
	/**
	* Returns the certificate chain associated with the given alias.
	*
	* @param alias the alias name
	*
	* @return the certificate chain (ordered with the user's certificate first
	* and the root certificate authority last), or null if the given alias
	* does not exist or does not contain a certificate chain (i.e., the given
	* alias identifies either a <i>trusted certificate entry</i> or a
	* <i>key entry</i> without a certificate chain).
	*/
	@:overload @:public override public function engineGetCertificateChain(alias : String) : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the certificate associated with the given alias.
	*
	* <p>If the given alias name identifies a
	* <i>trusted certificate entry</i>, the certificate associated with that
	* entry is returned. If the given alias name identifies a
	* <i>key entry</i>, the first element of the certificate chain of that
	* entry is returned, or null if that entry does not have a certificate
	* chain.
	*
	* @param alias the alias name
	*
	* @return the certificate, or null if the given alias does not exist or
	* does not contain a certificate.
	*/
	@:overload @:public override public function engineGetCertificate(alias : String) : java.security.cert.Certificate;
	
	/**
	* Returns the creation date of the entry identified by the given alias.
	*
	* @param alias the alias name
	*
	* @return the creation date of this entry, or null if the given alias does
	* not exist
	*/
	@:overload @:public override public function engineGetCreationDate(alias : String) : java.util.Date;
	
	/**
	* Assigns the given key to the given alias, protecting it with the given
	* password.
	*
	* <p>If the given key is of type <code>java.security.PrivateKey</code>,
	* it must be accompanied by a certificate chain certifying the
	* corresponding public key.
	*
	* <p>If the given alias already exists, the keystore information
	* associated with it is overridden by the given key (and possibly
	* certificate chain).
	*
	* @param alias the alias name
	* @param key the key to be associated with the alias
	* @param password the password to protect the key
	* @param chain the certificate chain for the corresponding public
	* key (only required if the given key is of type
	* <code>java.security.PrivateKey</code>).
	*
	* @exception KeyStoreException if the given key cannot be protected, or
	* this operation fails for some other reason
	*/
	@:overload @:public @:synchronized override public function engineSetKeyEntry(alias : String, key : java.security.Key, password : java.NativeArray<java.StdTypes.Char16>, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* Assigns the given key (that has already been protected) to the given
	* alias.
	*
	* <p>If the protected key is of type
	* <code>java.security.PrivateKey</code>, it must be accompanied by a
	* certificate chain certifying the corresponding public key. If the
	* underlying keystore implementation is of type <code>jks</code>,
	* <code>key</code> must be encoded as an
	* <code>EncryptedPrivateKeyInfo</code> as defined in the PKCS #8 standard.
	*
	* <p>If the given alias already exists, the keystore information
	* associated with it is overridden by the given key (and possibly
	* certificate chain).
	*
	* @param alias the alias name
	* @param key the key (in protected format) to be associated with the alias
	* @param chain the certificate chain for the corresponding public
	* key (only useful if the protected key is of type
	* <code>java.security.PrivateKey</code>).
	*
	* @exception KeyStoreException if this operation fails.
	*/
	@:overload @:public @:synchronized override public function engineSetKeyEntry(alias : String, key : java.NativeArray<java.StdTypes.Int8>, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* Assigns the given certificate to the given alias.
	*
	* <p>If the given alias already exists in this keystore and identifies a
	* <i>trusted certificate entry</i>, the certificate associated with it is
	* overridden by the given certificate.
	*
	* @param alias the alias name
	* @param cert the certificate
	*
	* @exception KeyStoreException if the given alias already exists and does
	* identify a <i>key entry</i>, or on an attempt to create a
	* <i>trusted cert entry</i> which is currently not supported.
	*/
	@:overload @:public @:synchronized override public function engineSetCertificateEntry(alias : String, cert : java.security.cert.Certificate) : Void;
	
	/**
	* Deletes the entry identified by the given alias from this keystore.
	*
	* @param alias the alias name
	*
	* @exception KeyStoreException if the entry cannot be removed.
	*/
	@:overload @:public @:synchronized override public function engineDeleteEntry(alias : String) : Void;
	
	/**
	* Lists all the alias names of this keystore.
	*
	* @return enumeration of the alias names
	*/
	@:overload @:public override public function engineAliases() : java.util.Enumeration<String>;
	
	/**
	* Checks if the given alias exists in this keystore.
	*
	* @param alias the alias name
	*
	* @return true if the alias exists, false otherwise
	*/
	@:overload @:public override public function engineContainsAlias(alias : String) : Bool;
	
	/**
	* Retrieves the number of entries in this keystore.
	*
	* @return the number of entries in this keystore
	*/
	@:overload @:public override public function engineSize() : Int;
	
	/**
	* Returns true if the entry identified by the given alias is a
	* <i>key entry</i>, and false otherwise.
	*
	* @return true if the entry identified by the given alias is a
	* <i>key entry</i>, false otherwise.
	*/
	@:overload @:public override public function engineIsKeyEntry(alias : String) : Bool;
	
	/**
	* Returns true if the entry identified by the given alias is a
	* <i>trusted certificate entry</i>, and false otherwise.
	*
	* @return true if the entry identified by the given alias is a
	* <i>trusted certificate entry</i>, false otherwise.
	*/
	@:overload @:public override public function engineIsCertificateEntry(alias : String) : Bool;
	
	/**
	* Returns the (alias) name of the first keystore entry whose certificate
	* matches the given certificate.
	*
	* <p>This method attempts to match the given certificate with each
	* keystore entry. If the entry being considered
	* is a <i>trusted certificate entry</i>, the given certificate is
	* compared to that entry's certificate. If the entry being considered is
	* a <i>key entry</i>, the given certificate is compared to the first
	* element of that entry's certificate chain (if a chain exists).
	*
	* @param cert the certificate to match with.
	*
	* @return the (alias) name of the first entry with matching certificate,
	* or null if no such entry exists in this keystore.
	*/
	@:overload @:public override public function engineGetCertificateAlias(cert : java.security.cert.Certificate) : String;
	
	/**
	* Stores this keystore to the given output stream, and protects its
	* integrity with the given password.
	*
	* @param stream the output stream to which this keystore is written.
	* @param password the password to generate the keystore integrity check
	*
	* @exception IOException if there was an I/O problem with data
	* @exception NoSuchAlgorithmException if the appropriate data integrity
	* algorithm could not be found
	* @exception CertificateException if any of the certificates included in
	* the keystore data could not be stored
	*/
	@:overload @:public @:synchronized override public function engineStore(stream : java.io.OutputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Loads the keystore from the given input stream.
	*
	* <p>If a password is given, it is used to check the integrity of the
	* keystore data. Otherwise, the integrity of the keystore is not checked.
	*
	* @param stream the input stream from which the keystore is loaded
	* @param password the (optional) password used to check the integrity of
	* the keystore.
	*
	* @exception IOException if there is an I/O or format problem with the
	* keystore data
	* @exception NoSuchAlgorithmException if the algorithm used to check
	* the integrity of the keystore cannot be found
	* @exception CertificateException if any of the certificates in the
	* keystore could not be loaded
	*/
	@:overload @:public @:synchronized override public function engineLoad(stream : java.io.InputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	
}
@:native('sun$security$pkcs12$PKCS12KeyStore$KeyEntry') @:internal extern class PKCS12KeyStore_KeyEntry
{
	
}
@:native('sun$security$pkcs12$PKCS12KeyStore$CertEntry') @:internal extern class PKCS12KeyStore_CertEntry
{
	
}
