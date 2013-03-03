package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class P11KeyStore extends java.security.KeyStoreSpi
{
	/**
	* Returns the key associated with the given alias.
	* The key must have been associated with
	* the alias by a call to <code>setKeyEntry</code>,
	* or by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code> or <code>SecretKeyEntry</code>.
	*
	* @param alias the alias name
	* @param password the password, which must be <code>null</code>
	*
	* @return the requested key, or null if the given alias does not exist
	* or does not identify a key-related entry.
	*
	* @exception NoSuchAlgorithmException if the algorithm for recovering the
	* key cannot be found
	* @exception UnrecoverableKeyException if the key cannot be recovered
	*/
	@:overload @:public @:synchronized override public function engineGetKey(alias : String, password : java.NativeArray<java.StdTypes.Char16>) : java.security.Key;
	
	/**
	* Returns the certificate chain associated with the given alias.
	* The certificate chain must have been associated with the alias
	* by a call to <code>setKeyEntry</code>,
	* or by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code>.
	*
	* @param alias the alias name
	*
	* @return the certificate chain (ordered with the user's certificate first
	* and the root certificate authority last), or null if the given alias
	* does not exist or does not contain a certificate chain
	*/
	@:overload @:public @:synchronized override public function engineGetCertificateChain(alias : String) : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Returns the certificate associated with the given alias.
	*
	* <p> If the given alias name identifies an entry
	* created by a call to <code>setCertificateEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>TrustedCertificateEntry</code>,
	* then the trusted certificate contained in that entry is returned.
	*
	* <p> If the given alias name identifies an entry
	* created by a call to <code>setKeyEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code>,
	* then the first element of the certificate chain in that entry
	* (if a chain exists) is returned.
	*
	* @param alias the alias name
	*
	* @return the certificate, or null if the given alias does not exist or
	* does not contain a certificate.
	*/
	@:overload @:public @:synchronized override public function engineGetCertificate(alias : String) : java.security.cert.Certificate;
	
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
	* <code>java.security.PrivateKey</code>,
	* it must be accompanied by a certificate chain certifying the
	* corresponding public key.
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
	@:overload @:public override public function engineSetKeyEntry(alias : String, key : java.NativeArray<java.StdTypes.Int8>, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* Assigns the given certificate to the given alias.
	*
	* <p> If the given alias identifies an existing entry
	* created by a call to <code>setCertificateEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>TrustedCertificateEntry</code>,
	* the trusted certificate in the existing entry
	* is overridden by the given certificate.
	*
	* @param alias the alias name
	* @param cert the certificate
	*
	* @exception KeyStoreException if the given alias already exists and does
	* not identify an entry containing a trusted certificate,
	* or this operation fails for some other reason.
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
	@:overload @:public @:synchronized override public function engineAliases() : java.util.Enumeration<String>;
	
	/**
	* Checks if the given alias exists in this keystore.
	*
	* @param alias the alias name
	*
	* @return true if the alias exists, false otherwise
	*/
	@:overload @:public @:synchronized override public function engineContainsAlias(alias : String) : Bool;
	
	/**
	* Retrieves the number of entries in this keystore.
	*
	* @return the number of entries in this keystore
	*/
	@:overload @:public @:synchronized override public function engineSize() : Int;
	
	/**
	* Returns true if the entry identified by the given alias
	* was created by a call to <code>setKeyEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code> or a <code>SecretKeyEntry</code>.
	*
	* @param alias the alias for the keystore entry to be checked
	*
	* @return true if the entry identified by the given alias is a
	* key-related, false otherwise.
	*/
	@:overload @:public @:synchronized override public function engineIsKeyEntry(alias : String) : Bool;
	
	/**
	* Returns true if the entry identified by the given alias
	* was created by a call to <code>setCertificateEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>TrustedCertificateEntry</code>.
	*
	* @param alias the alias for the keystore entry to be checked
	*
	* @return true if the entry identified by the given alias contains a
	* trusted certificate, false otherwise.
	*/
	@:overload @:public @:synchronized override public function engineIsCertificateEntry(alias : String) : Bool;
	
	/**
	* Returns the (alias) name of the first keystore entry whose certificate
	* matches the given certificate.
	*
	* <p>This method attempts to match the given certificate with each
	* keystore entry. If the entry being considered was
	* created by a call to <code>setCertificateEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>TrustedCertificateEntry</code>,
	* then the given certificate is compared to that entry's certificate.
	*
	* <p> If the entry being considered was
	* created by a call to <code>setKeyEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code>,
	* then the given certificate is compared to the first
	* element of that entry's certificate chain.
	*
	* @param cert the certificate to match with.
	*
	* @return the alias name of the first entry with matching certificate,
	* or null if no such entry exists in this keystore.
	*/
	@:overload @:public @:synchronized override public function engineGetCertificateAlias(cert : java.security.cert.Certificate) : String;
	
	/**
	* engineStore currently is a No-op.
	* Entries are stored to the token during engineSetEntry
	*
	* @param stream this must be <code>null</code>
	* @param password this must be <code>null</code>
	*/
	@:overload @:public @:synchronized override public function engineStore(stream : java.io.OutputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* engineStore currently is a No-op.
	* Entries are stored to the token during engineSetEntry
	*
	* @param param this must be <code>null</code>
	*
	* @exception IllegalArgumentException if the given
	*          <code>KeyStore.LoadStoreParameter</code>
	*          input is not <code>null</code>
	*/
	@:overload @:public @:synchronized override public function engineStore(param : java.security.KeyStore.KeyStore_LoadStoreParameter) : Void;
	
	/**
	* Loads the keystore.
	*
	* @param stream the input stream, which must be <code>null</code>
	* @param password the password used to unlock the keystore,
	*          or <code>null</code> if the token supports a
	*          CKF_PROTECTED_AUTHENTICATION_PATH
	*
	* @exception IOException if the given <code>stream</code> is not
	*          <code>null</code>, if the token supports a
	*          CKF_PROTECTED_AUTHENTICATION_PATH and a non-null
	*          password is given, of if the token login operation failed
	*/
	@:overload @:public @:synchronized override public function engineLoad(stream : java.io.InputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Loads the keystore using the given
	* <code>KeyStore.LoadStoreParameter</code>.
	*
	* <p> The <code>LoadStoreParameter.getProtectionParameter()</code>
	* method is expected to return a <code>KeyStore.PasswordProtection</code>
	* object.  The password is retrieved from that object and used
	* to unlock the PKCS#11 token.
	*
	* <p> If the token supports a CKF_PROTECTED_AUTHENTICATION_PATH
	* then the provided password must be <code>null</code>.
	*
	* @param param the <code>KeyStore.LoadStoreParameter</code>
	*
	* @exception IllegalArgumentException if the given
	*          <code>KeyStore.LoadStoreParameter</code> is <code>null</code>,
	*          or if that parameter returns a <code>null</code>
	*          <code>ProtectionParameter</code> object.
	*          input is not recognized
	* @exception IOException if the token supports a
	*          CKF_PROTECTED_AUTHENTICATION_PATH and the provided password
	*          is non-null, or if the token login operation fails
	*/
	@:overload @:public @:synchronized override public function engineLoad(param : java.security.KeyStore.KeyStore_LoadStoreParameter) : Void;
	
	/**
	* Get a <code>KeyStore.Entry</code> for the specified alias
	*
	* @param alias get the <code>KeyStore.Entry</code> for this alias
	* @param protParam this must be <code>null</code>
	*
	* @return the <code>KeyStore.Entry</code> for the specified alias,
	*          or <code>null</code> if there is no such entry
	*
	* @exception KeyStoreException if the operation failed
	* @exception NoSuchAlgorithmException if the algorithm for recovering the
	*          entry cannot be found
	* @exception UnrecoverableEntryException if the specified
	*          <code>protParam</code> were insufficient or invalid
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:synchronized override public function engineGetEntry(alias : String, protParam : java.security.KeyStore.KeyStore_ProtectionParameter) : java.security.KeyStore.KeyStore_Entry;
	
	/**
	* Save a <code>KeyStore.Entry</code> under the specified alias.
	*
	* <p> If an entry already exists for the specified alias,
	* it is overridden.
	*
	* <p> This KeyStore implementation only supports the standard
	* entry types, and only supports X509Certificates in
	* TrustedCertificateEntries.  Also, this implementation does not support
	* protecting entries using a different password
	* from the one used for token login.
	*
	* <p> Entries are immediately stored on the token.
	*
	* @param alias save the <code>KeyStore.Entry</code> under this alias
	* @param entry the <code>Entry</code> to save
	* @param protParam this must be <code>null</code>
	*
	* @exception KeyStoreException if this operation fails
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:public @:synchronized override public function engineSetEntry(alias : String, entry : java.security.KeyStore.KeyStore_Entry, protParam : java.security.KeyStore.KeyStore_ProtectionParameter) : Void;
	
	/**
	* Determines if the keystore <code>Entry</code> for the specified
	* <code>alias</code> is an instance or subclass of the specified
	* <code>entryClass</code>.
	*
	* @param alias the alias name
	* @param entryClass the entry class
	*
	* @return true if the keystore <code>Entry</code> for the specified
	*          <code>alias</code> is an instance or subclass of the
	*          specified <code>entryClass</code>, false otherwise
	*/
	@:overload @:public @:synchronized override public function engineEntryInstanceOf(alias : String, entryClass : Class<java.security.KeyStore.KeyStore_Entry>) : Bool;
	
	
}
/**
* The underlying token may contain multiple certs belonging to the
* same "personality" (for example, a signing cert and encryption cert),
* all sharing the same CKA_LABEL.  These must be resolved
* into unique keystore aliases.
*
* In addition, private keys and certs may not have a CKA_LABEL.
* It is assumed that a private key and corresponding certificate
* share the same CKA_ID, and that the CKA_ID is unique across the token.
* The CKA_ID may not be human-readable.
* These pairs must be resolved into unique keystore aliases.
*
* Furthermore, secret keys are assumed to have a CKA_LABEL
* unique across the entire token.
*
* When the KeyStore is loaded, instances of this class are
* created to represent the private keys/secret keys/certs
* that reside on the token.
*/
@:native('sun$security$pkcs11$P11KeyStore$AliasInfo') @:internal extern class P11KeyStore_AliasInfo
{
	@:overload @:public public function new(label : String) : Void;
	
	@:overload @:public public function new(label : String, id : java.NativeArray<java.StdTypes.Int8>, trusted : Bool, cert : java.security.cert.X509Certificate) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
/**
* callback handler for passing password to Provider.login method
*/
@:native('sun$security$pkcs11$P11KeyStore$PasswordCallbackHandler') @:internal extern class P11KeyStore_PasswordCallbackHandler implements javax.security.auth.callback.CallbackHandler
{
	@:overload @:public public function handle(callbacks : java.NativeArray<javax.security.auth.callback.Callback>) : Void;
	
	@:overload @:protected private function finalize() : Void;
	
	
}
/**
* getTokenObject return value.
*
* if object is not found, type is set to null.
* otherwise, type is set to the requested type.
*/
@:native('sun$security$pkcs11$P11KeyStore$THandle') @:internal extern class P11KeyStore_THandle
{
	
}
