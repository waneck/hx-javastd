package java.security;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class represents a storage facility for cryptographic
* keys and certificates.
*
* <p> A <code>KeyStore</code> manages different types of entries.
* Each type of entry implements the <code>KeyStore.Entry</code> interface.
* Three basic <code>KeyStore.Entry</code> implementations are provided:
*
* <ul>
* <li><b>KeyStore.PrivateKeyEntry</b>
* <p> This type of entry holds a cryptographic <code>PrivateKey</code>,
* which is optionally stored in a protected format to prevent
* unauthorized access.  It is also accompanied by a certificate chain
* for the corresponding public key.
*
* <p> Private keys and certificate chains are used by a given entity for
* self-authentication. Applications for this authentication include software
* distribution organizations which sign JAR files as part of releasing
* and/or licensing software.
*
* <li><b>KeyStore.SecretKeyEntry</b>
* <p> This type of entry holds a cryptographic <code>SecretKey</code>,
* which is optionally stored in a protected format to prevent
* unauthorized access.
*
* <li><b>KeyStore.TrustedCertificateEntry</b>
* <p> This type of entry contains a single public key <code>Certificate</code>
* belonging to another party. It is called a <i>trusted certificate</i>
* because the keystore owner trusts that the public key in the certificate
* indeed belongs to the identity identified by the <i>subject</i> (owner)
* of the certificate.
*
* <p>This type of entry can be used to authenticate other parties.
* </ul>
*
* <p> Each entry in a keystore is identified by an "alias" string. In the
* case of private keys and their associated certificate chains, these strings
* distinguish among the different ways in which the entity may authenticate
* itself. For example, the entity may authenticate itself using different
* certificate authorities, or using different public key algorithms.
*
* <p> Whether aliases are case sensitive is implementation dependent. In order
* to avoid problems, it is recommended not to use aliases in a KeyStore that
* only differ in case.
*
* <p> Whether keystores are persistent, and the mechanisms used by the
* keystore if it is persistent, are not specified here. This allows
* use of a variety of techniques for protecting sensitive (e.g., private or
* secret) keys. Smart cards or other integrated cryptographic engines
* (SafeKeyper) are one option, and simpler mechanisms such as files may also
* be used (in a variety of formats).
*
* <p> Typical ways to request a KeyStore object include
* relying on the default type and providing a specific keystore type.
*
* <ul>
* <li>To rely on the default type:
* <pre>
*    KeyStore ks = KeyStore.getInstance(KeyStore.getDefaultType());
* </pre>
* The system will return a keystore implementation for the default type.
* <p>
*
* <li>To provide a specific keystore type:
* <pre>
*      KeyStore ks = KeyStore.getInstance("JKS");
* </pre>
* The system will return the most preferred implementation of the
* specified keystore type available in the environment. <p>
* </ul>
*
* <p> Before a keystore can be accessed, it must be
* {@link #load(java.io.InputStream, char[]) loaded}.
* <pre>
*    KeyStore ks = KeyStore.getInstance(KeyStore.getDefaultType());
*
*    // get user password and file input stream
*    char[] password = getPassword();
*
*    java.io.FileInputStream fis = null;
*    try {
*        fis = new java.io.FileInputStream("keyStoreName");
*        ks.load(fis, password);
*    } finally {
*        if (fis != null) {
*            fis.close();
*        }
*    }
* </pre>
*
* To create an empty keystore using the above <code>load</code> method,
* pass <code>null</code> as the <code>InputStream</code> argument.
*
* <p> Once the keystore has been loaded, it is possible
* to read existing entries from the keystore, or to write new entries
* into the keystore:
* <pre>
*    KeyStore.ProtectionParameter protParam =
*        new KeyStore.PasswordProtection(password);
*
*    // get my private key
*    KeyStore.PrivateKeyEntry pkEntry = (KeyStore.PrivateKeyEntry)
*        ks.getEntry("privateKeyAlias", protParam);
*    PrivateKey myPrivateKey = pkEntry.getPrivateKey();
*
*    // save my secret key
*    javax.crypto.SecretKey mySecretKey;
*    KeyStore.SecretKeyEntry skEntry =
*        new KeyStore.SecretKeyEntry(mySecretKey);
*    ks.setEntry("secretKeyAlias", skEntry, protParam);
*
*    // store away the keystore
*    java.io.FileOutputStream fos = null;
*    try {
*        fos = new java.io.FileOutputStream("newKeyStoreName");
*        ks.store(fos, password);
*    } finally {
*        if (fos != null) {
*            fos.close();
*        }
*    }
* </pre>
*
* Note that although the same password may be used to
* load the keystore, to protect the private key entry,
* to protect the secret key entry, and to store the keystore
* (as is shown in the sample code above),
* different passwords or other protection parameters
* may also be used.
*
* <p> Every implementation of the Java platform is required to support
* the following standard <code>KeyStore</code> type:
* <ul>
* <li><tt>PKCS12</tt></li>
* </ul>
* This type is described in the <a href=
* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyStore">
* KeyStore section</a> of the
* Java Cryptography Architecture Standard Algorithm Name Documentation.
* Consult the release documentation for your implementation to see if any
* other types are supported.
*
* @author Jan Luehe
*
* @see java.security.PrivateKey
* @see javax.crypto.SecretKey
* @see java.security.cert.Certificate
*
* @since 1.2
*/
@:require(java2) extern class KeyStore
{
	/**
	* Creates a KeyStore object of the given type, and encapsulates the given
	* provider implementation (SPI object) in it.
	*
	* @param keyStoreSpi the provider implementation.
	* @param provider the provider.
	* @param type the keystore type.
	*/
	@:overload private function new(keyStoreSpi : java.security.KeyStoreSpi, provider : java.security.Provider, type : String) : Void;
	
	/**
	* Returns a keystore object of the specified type.
	*
	* <p> This method traverses the list of registered security Providers,
	* starting with the most preferred Provider.
	* A new KeyStore object encapsulating the
	* KeyStoreSpi implementation from the first
	* Provider that supports the specified type is returned.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the type of keystore.
	* See the KeyStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard keystore types.
	*
	* @return a keystore object of the specified type.
	*
	* @exception KeyStoreException if no Provider supports a
	*          KeyStoreSpi implementation for the
	*          specified type.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(type : String) : java.security.KeyStore;
	
	/**
	* Returns a keystore object of the specified type.
	*
	* <p> A new KeyStore object encapsulating the
	* KeyStoreSpi implementation from the specified provider
	* is returned.  The specified provider must be registered
	* in the security provider list.
	*
	* <p> Note that the list of registered providers may be retrieved via
	* the {@link Security#getProviders() Security.getProviders()} method.
	*
	* @param type the type of keystore.
	* See the KeyStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard keystore types.
	*
	* @param provider the name of the provider.
	*
	* @return a keystore object of the specified type.
	*
	* @exception KeyStoreException if a KeyStoreSpi
	*          implementation for the specified type is not
	*          available from the specified provider.
	*
	* @exception NoSuchProviderException if the specified provider is not
	*          registered in the security provider list.
	*
	* @exception IllegalArgumentException if the provider name is null
	*          or empty.
	*
	* @see Provider
	*/
	@:overload public static function getInstance(type : String, provider : String) : java.security.KeyStore;
	
	/**
	* Returns a keystore object of the specified type.
	*
	* <p> A new KeyStore object encapsulating the
	* KeyStoreSpi implementation from the specified Provider
	* object is returned.  Note that the specified Provider object
	* does not have to be registered in the provider list.
	*
	* @param type the type of keystore.
	* See the KeyStore section in the <a href=
	* "{@docRoot}/../technotes/guides/security/StandardNames.html#KeyStore">
	* Java Cryptography Architecture Standard Algorithm Name Documentation</a>
	* for information about standard keystore types.
	*
	* @param provider the provider.
	*
	* @return a keystore object of the specified type.
	*
	* @exception KeyStoreException if KeyStoreSpi
	*          implementation for the specified type is not available
	*          from the specified Provider object.
	*
	* @exception IllegalArgumentException if the specified provider is null.
	*
	* @see Provider
	*
	* @since 1.4
	*/
	@:require(java4) @:overload public static function getInstance(type : String, provider : java.security.Provider) : java.security.KeyStore;
	
	/**
	* Returns the default keystore type as specified in the Java security
	* properties file, or the string
	* &quot;jks&quot; (acronym for &quot;Java keystore&quot;)
	* if no such property exists.
	* The Java security properties file is located in the file named
	* &lt;JAVA_HOME&gt;/lib/security/java.security.
	* &lt;JAVA_HOME&gt; refers to the value of the java.home system property,
	* and specifies the directory where the JRE is installed.
	*
	* <p>The default keystore type can be used by applications that do not
	* want to use a hard-coded keystore type when calling one of the
	* <code>getInstance</code> methods, and want to provide a default keystore
	* type in case a user does not specify its own.
	*
	* <p>The default keystore type can be changed by setting the value of the
	* "keystore.type" security property (in the Java security properties
	* file) to the desired keystore type.
	*
	* @return the default keystore type as specified in the
	* Java security properties file, or the string &quot;jks&quot;
	* if no such property exists.
	*/
	@:overload @:final public static function getDefaultType() : String;
	
	/**
	* Returns the provider of this keystore.
	*
	* @return the provider of this keystore.
	*/
	@:overload @:final public function getProvider() : java.security.Provider;
	
	/**
	* Returns the type of this keystore.
	*
	* @return the type of this keystore.
	*/
	@:overload @:final public function getType() : String;
	
	/**
	* Returns the key associated with the given alias, using the given
	* password to recover it.  The key must have been associated with
	* the alias by a call to <code>setKeyEntry</code>,
	* or by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code> or <code>SecretKeyEntry</code>.
	*
	* @param alias the alias name
	* @param password the password for recovering the key
	*
	* @return the requested key, or null if the given alias does not exist
	* or does not identify a key-related entry.
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	* @exception NoSuchAlgorithmException if the algorithm for recovering the
	* key cannot be found
	* @exception UnrecoverableKeyException if the key cannot be recovered
	* (e.g., the given password is wrong).
	*/
	@:overload @:final public function getKey(alias : String, password : java.NativeArray<java.StdTypes.Char16>) : java.security.Key;
	
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
	* followed by zero or more certificate authorities), or null if the given alias
	* does not exist or does not contain a certificate chain
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function getCertificateChain(alias : String) : java.NativeArray<java.security.cert.Certificate>;
	
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
	* is returned.
	*
	* @param alias the alias name
	*
	* @return the certificate, or null if the given alias does not exist or
	* does not contain a certificate.
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function getCertificate(alias : String) : java.security.cert.Certificate;
	
	/**
	* Returns the creation date of the entry identified by the given alias.
	*
	* @param alias the alias name
	*
	* @return the creation date of this entry, or null if the given alias does
	* not exist
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function getCreationDate(alias : String) : java.util.Date;
	
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
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded), the given key cannot be protected, or this operation fails
	* for some other reason
	*/
	@:overload @:final public function setKeyEntry(alias : String, key : java.security.Key, password : java.NativeArray<java.StdTypes.Char16>, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
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
	*          key (only useful if the protected key is of type
	*          <code>java.security.PrivateKey</code>).
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded), or if this operation fails for some other reason.
	*/
	@:overload @:final public function setKeyEntry(alias : String, key : java.NativeArray<java.StdTypes.Int8>, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* Assigns the given trusted certificate to the given alias.
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
	* @exception KeyStoreException if the keystore has not been initialized,
	* or the given alias already exists and does not identify an
	* entry containing a trusted certificate,
	* or this operation fails for some other reason.
	*/
	@:overload @:final public function setCertificateEntry(alias : String, cert : java.security.cert.Certificate) : Void;
	
	/**
	* Deletes the entry identified by the given alias from this keystore.
	*
	* @param alias the alias name
	*
	* @exception KeyStoreException if the keystore has not been initialized,
	* or if the entry cannot be removed.
	*/
	@:overload @:final public function deleteEntry(alias : String) : Void;
	
	/**
	* Lists all the alias names of this keystore.
	*
	* @return enumeration of the alias names
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function aliases() : java.util.Enumeration<String>;
	
	/**
	* Checks if the given alias exists in this keystore.
	*
	* @param alias the alias name
	*
	* @return true if the alias exists, false otherwise
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function containsAlias(alias : String) : Bool;
	
	/**
	* Retrieves the number of entries in this keystore.
	*
	* @return the number of entries in this keystore
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function size() : Int;
	
	/**
	* Returns true if the entry identified by the given alias
	* was created by a call to <code>setKeyEntry</code>,
	* or created by a call to <code>setEntry</code> with a
	* <code>PrivateKeyEntry</code> or a <code>SecretKeyEntry</code>.
	*
	* @param alias the alias for the keystore entry to be checked
	*
	* @return true if the entry identified by the given alias is a
	* key-related entry, false otherwise.
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function isKeyEntry(alias : String) : Bool;
	
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
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function isCertificateEntry(alias : String) : Bool;
	
	/**
	* Returns the (alias) name of the first keystore entry whose certificate
	* matches the given certificate.
	*
	* <p> This method attempts to match the given certificate with each
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
	* @return the alias name of the first entry with a matching certificate,
	* or null if no such entry exists in this keystore.
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	*/
	@:overload @:final public function getCertificateAlias(cert : java.security.cert.Certificate) : String;
	
	/**
	* Stores this keystore to the given output stream, and protects its
	* integrity with the given password.
	*
	* @param stream the output stream to which this keystore is written.
	* @param password the password to generate the keystore integrity check
	*
	* @exception KeyStoreException if the keystore has not been initialized
	* (loaded).
	* @exception IOException if there was an I/O problem with data
	* @exception NoSuchAlgorithmException if the appropriate data integrity
	* algorithm could not be found
	* @exception CertificateException if any of the certificates included in
	* the keystore data could not be stored
	*/
	@:overload @:final public function store(stream : java.io.OutputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Stores this keystore using the given <code>LoadStoreParameter</code>.
	*
	* @param param the <code>LoadStoreParameter</code>
	*          that specifies how to store the keystore,
	*          which may be <code>null</code>
	*
	* @exception IllegalArgumentException if the given
	*          <code>LoadStoreParameter</code>
	*          input is not recognized
	* @exception KeyStoreException if the keystore has not been initialized
	*          (loaded)
	* @exception IOException if there was an I/O problem with data
	* @exception NoSuchAlgorithmException if the appropriate data integrity
	*          algorithm could not be found
	* @exception CertificateException if any of the certificates included in
	*          the keystore data could not be stored
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function store(param : java.security.KeyStore.KeyStore_LoadStoreParameter) : Void;
	
	/**
	* Loads this KeyStore from the given input stream.
	*
	* <p>A password may be given to unlock the keystore
	* (e.g. the keystore resides on a hardware token device),
	* or to check the integrity of the keystore data.
	* If a password is not given for integrity checking,
	* then integrity checking is not performed.
	*
	* <p>In order to create an empty keystore, or if the keystore cannot
	* be initialized from a stream, pass <code>null</code>
	* as the <code>stream</code> argument.
	*
	* <p> Note that if this keystore has already been loaded, it is
	* reinitialized and loaded again from the given input stream.
	*
	* @param stream the input stream from which the keystore is loaded,
	* or <code>null</code>
	* @param password the password used to check the integrity of
	* the keystore, the password used to unlock the keystore,
	* or <code>null</code>
	*
	* @exception IOException if there is an I/O or format problem with the
	* keystore data, if a password is required but not given,
	* or if the given password was incorrect. If the error is due to a
	* wrong password, the {@link Throwable#getCause cause} of the
	* <code>IOException</code> should be an
	* <code>UnrecoverableKeyException</code>
	* @exception NoSuchAlgorithmException if the algorithm used to check
	* the integrity of the keystore cannot be found
	* @exception CertificateException if any of the certificates in the
	* keystore could not be loaded
	*/
	@:overload @:final public function load(stream : java.io.InputStream, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Loads this keystore using the given <code>LoadStoreParameter</code>.
	*
	* <p> Note that if this KeyStore has already been loaded, it is
	* reinitialized and loaded again from the given parameter.
	*
	* @param param the <code>LoadStoreParameter</code>
	*          that specifies how to load the keystore,
	*          which may be <code>null</code>
	*
	* @exception IllegalArgumentException if the given
	*          <code>LoadStoreParameter</code>
	*          input is not recognized
	* @exception IOException if there is an I/O or format problem with the
	*          keystore data. If the error is due to an incorrect
	*         <code>ProtectionParameter</code> (e.g. wrong password)
	*         the {@link Throwable#getCause cause} of the
	*         <code>IOException</code> should be an
	*         <code>UnrecoverableKeyException</code>
	* @exception NoSuchAlgorithmException if the algorithm used to check
	*          the integrity of the keystore cannot be found
	* @exception CertificateException if any of the certificates in the
	*          keystore could not be loaded
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function load(param : java.security.KeyStore.KeyStore_LoadStoreParameter) : Void;
	
	/**
	* Gets a keystore <code>Entry</code> for the specified alias
	* with the specified protection parameter.
	*
	* @param alias get the keystore <code>Entry</code> for this alias
	* @param protParam the <code>ProtectionParameter</code>
	*          used to protect the <code>Entry</code>,
	*          which may be <code>null</code>
	*
	* @return the keystore <code>Entry</code> for the specified alias,
	*          or <code>null</code> if there is no such entry
	*
	* @exception NullPointerException if
	*          <code>alias</code> is <code>null</code>
	* @exception NoSuchAlgorithmException if the algorithm for recovering the
	*          entry cannot be found
	* @exception UnrecoverableEntryException if the specified
	*          <code>protParam</code> were insufficient or invalid
	* @exception UnrecoverableKeyException if the entry is a
	*          <code>PrivateKeyEntry</code> or <code>SecretKeyEntry</code>
	*          and the specified <code>protParam</code> does not contain
	*          the information needed to recover the key (e.g. wrong password)
	* @exception KeyStoreException if the keystore has not been initialized
	*          (loaded).
	* @see #setEntry(String, KeyStore.Entry, KeyStore.ProtectionParameter)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function getEntry(alias : String, protParam : java.security.KeyStore.KeyStore_ProtectionParameter) : java.security.KeyStore.KeyStore_Entry;
	
	/**
	* Saves a keystore <code>Entry</code> under the specified alias.
	* The protection parameter is used to protect the
	* <code>Entry</code>.
	*
	* <p> If an entry already exists for the specified alias,
	* it is overridden.
	*
	* @param alias save the keystore <code>Entry</code> under this alias
	* @param entry the <code>Entry</code> to save
	* @param protParam the <code>ProtectionParameter</code>
	*          used to protect the <code>Entry</code>,
	*          which may be <code>null</code>
	*
	* @exception NullPointerException if
	*          <code>alias</code> or <code>entry</code>
	*          is <code>null</code>
	* @exception KeyStoreException if the keystore has not been initialized
	*          (loaded), or if this operation fails for some other reason
	*
	* @see #getEntry(String, KeyStore.ProtectionParameter)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function setEntry(alias : String, entry : java.security.KeyStore.KeyStore_Entry, protParam : java.security.KeyStore.KeyStore_ProtectionParameter) : Void;
	
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
	*
	* @exception NullPointerException if
	*          <code>alias</code> or <code>entryClass</code>
	*          is <code>null</code>
	* @exception KeyStoreException if the keystore has not been
	*          initialized (loaded)
	*
	* @since 1.5
	*/
	@:require(java5) @:overload @:final public function entryInstanceOf(alias : String, entryClass : Class<java.security.KeyStore.KeyStore_Entry>) : Bool;
	
	
}
/**
* A marker interface for <code>KeyStore</code>
* {@link #load(KeyStore.LoadStoreParameter) load}
* and
* {@link #store(KeyStore.LoadStoreParameter) store}
* parameters.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$LoadStoreParameter') extern interface KeyStore_LoadStoreParameter
{
	/**
	* Gets the parameter used to protect keystore data.
	*
	* @return the parameter used to protect keystore data, or null
	*/
	@:overload public function getProtectionParameter() : java.security.KeyStore.KeyStore_ProtectionParameter;
	
	
}
/**
* A marker interface for keystore protection parameters.
*
* <p> The information stored in a <code>ProtectionParameter</code>
* object protects the contents of a keystore.
* For example, protection parameters may be used to check
* the integrity of keystore data, or to protect the
* confidentiality of sensitive keystore data
* (such as a <code>PrivateKey</code>).
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$ProtectionParameter') extern interface KeyStore_ProtectionParameter
{
	
}
/**
* A password-based implementation of <code>ProtectionParameter</code>.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$PasswordProtection') extern class KeyStore_PasswordProtection implements java.security.KeyStore.KeyStore_ProtectionParameter implements javax.security.auth.Destroyable
{
	/**
	* Creates a password parameter.
	*
	* <p> The specified <code>password</code> is cloned before it is stored
	* in the new <code>PasswordProtection</code> object.
	*
	* @param password the password, which may be <code>null</code>
	*/
	@:overload public function new(password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Gets the password.
	*
	* <p>Note that this method returns a reference to the password.
	* If a clone of the array is created it is the caller's
	* responsibility to zero out the password information
	* after it is no longer needed.
	*
	* @see #destroy()
	* @return the password, which may be <code>null</code>
	* @exception IllegalStateException if the password has
	*              been cleared (destroyed)
	*/
	@:overload @:synchronized public function getPassword() : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* Clears the password.
	*
	* @exception DestroyFailedException if this method was unable
	*      to clear the password
	*/
	@:overload @:synchronized public function destroy() : Void;
	
	/**
	* Determines if password has been cleared.
	*
	* @return true if the password has been cleared, false otherwise
	*/
	@:overload @:synchronized public function isDestroyed() : Bool;
	
	
}
/**
* A ProtectionParameter encapsulating a CallbackHandler.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$CallbackHandlerProtection') extern class KeyStore_CallbackHandlerProtection implements java.security.KeyStore.KeyStore_ProtectionParameter
{
	/**
	* Constructs a new CallbackHandlerProtection from a
	* CallbackHandler.
	*
	* @param handler the CallbackHandler
	* @exception NullPointerException if handler is null
	*/
	@:overload public function new(handler : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Returns the CallbackHandler.
	*
	* @return the CallbackHandler.
	*/
	@:overload public function getCallbackHandler() : javax.security.auth.callback.CallbackHandler;
	
	
}
/**
* A marker interface for <code>KeyStore</code> entry types.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$Entry') extern interface KeyStore_Entry
{
	
}
/**
* A <code>KeyStore</code> entry that holds a <code>PrivateKey</code>
* and corresponding certificate chain.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$PrivateKeyEntry') extern class KeyStore_PrivateKeyEntry implements java.security.KeyStore.KeyStore_Entry
{
	/**
	* Constructs a <code>PrivateKeyEntry</code> with a
	* <code>PrivateKey</code> and corresponding certificate chain.
	*
	* <p> The specified <code>chain</code> is cloned before it is stored
	* in the new <code>PrivateKeyEntry</code> object.
	*
	* @param privateKey the <code>PrivateKey</code>
	* @param chain an array of <code>Certificate</code>s
	*      representing the certificate chain.
	*      The chain must be ordered and contain a
	*      <code>Certificate</code> at index 0
	*      corresponding to the private key.
	*
	* @exception NullPointerException if
	*      <code>privateKey</code> or <code>chain</code>
	*      is <code>null</code>
	* @exception IllegalArgumentException if the specified chain has a
	*      length of 0, if the specified chain does not contain
	*      <code>Certificate</code>s of the same type,
	*      or if the <code>PrivateKey</code> algorithm
	*      does not match the algorithm of the <code>PublicKey</code>
	*      in the end entity <code>Certificate</code> (at index 0)
	*/
	@:overload public function new(privateKey : java.security.PrivateKey, chain : java.NativeArray<java.security.cert.Certificate>) : Void;
	
	/**
	* Gets the <code>PrivateKey</code> from this entry.
	*
	* @return the <code>PrivateKey</code> from this entry
	*/
	@:overload public function getPrivateKey() : java.security.PrivateKey;
	
	/**
	* Gets the <code>Certificate</code> chain from this entry.
	*
	* <p> The stored chain is cloned before being returned.
	*
	* @return an array of <code>Certificate</code>s corresponding
	*      to the certificate chain for the public key.
	*      If the certificates are of type X.509,
	*      the runtime type of the returned array is
	*      <code>X509Certificate[]</code>.
	*/
	@:overload public function getCertificateChain() : java.NativeArray<java.security.cert.Certificate>;
	
	/**
	* Gets the end entity <code>Certificate</code>
	* from the certificate chain in this entry.
	*
	* @return the end entity <code>Certificate</code> (at index 0)
	*      from the certificate chain in this entry.
	*      If the certificate is of type X.509,
	*      the runtime type of the returned certificate is
	*      <code>X509Certificate</code>.
	*/
	@:overload public function getCertificate() : java.security.cert.Certificate;
	
	/**
	* Returns a string representation of this PrivateKeyEntry.
	* @return a string representation of this PrivateKeyEntry.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A <code>KeyStore</code> entry that holds a <code>SecretKey</code>.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$SecretKeyEntry') extern class KeyStore_SecretKeyEntry implements java.security.KeyStore.KeyStore_Entry
{
	/**
	* Constructs a <code>SecretKeyEntry</code> with a
	* <code>SecretKey</code>.
	*
	* @param secretKey the <code>SecretKey</code>
	*
	* @exception NullPointerException if <code>secretKey</code>
	*      is <code>null</code>
	*/
	@:overload public function new(secretKey : javax.crypto.SecretKey) : Void;
	
	/**
	* Gets the <code>SecretKey</code> from this entry.
	*
	* @return the <code>SecretKey</code> from this entry
	*/
	@:overload public function getSecretKey() : javax.crypto.SecretKey;
	
	/**
	* Returns a string representation of this SecretKeyEntry.
	* @return a string representation of this SecretKeyEntry.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A <code>KeyStore</code> entry that holds a trusted
* <code>Certificate</code>.
*
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$TrustedCertificateEntry') extern class KeyStore_TrustedCertificateEntry implements java.security.KeyStore.KeyStore_Entry
{
	/**
	* Constructs a <code>TrustedCertificateEntry</code> with a
	* trusted <code>Certificate</code>.
	*
	* @param trustedCert the trusted <code>Certificate</code>
	*
	* @exception NullPointerException if
	*      <code>trustedCert</code> is <code>null</code>
	*/
	@:overload public function new(trustedCert : java.security.cert.Certificate) : Void;
	
	/**
	* Gets the trusted <code>Certficate</code> from this entry.
	*
	* @return the trusted <code>Certificate</code> from this entry
	*/
	@:overload public function getTrustedCertificate() : java.security.cert.Certificate;
	
	/**
	* Returns a string representation of this TrustedCertificateEntry.
	* @return a string representation of this TrustedCertificateEntry.
	*/
	@:overload public function toString() : String;
	
	
}
/**
* A description of a to-be-instantiated KeyStore object.
*
* <p>An instance of this class encapsulates the information needed to
* instantiate and initialize a KeyStore object. That process is
* triggered when the {@linkplain #getKeyStore} method is called.
*
* <p>This makes it possible to decouple configuration from KeyStore
* object creation and e.g. delay a password prompt until it is
* needed.
*
* @see KeyStore
* @see javax.net.ssl.KeyStoreBuilderParameters
* @since 1.5
*/
@:require(java5) @:native('java$security$KeyStore$Builder') extern class KeyStore_Builder
{
	/**
	* Construct a new Builder.
	*/
	@:overload private function new() : Void;
	
	/**
	* Returns the KeyStore described by this object.
	*
	* @exception KeyStoreException if an error occured during the
	*   operation, for example if the KeyStore could not be
	*   instantiated or loaded
	*/
	@:overload @:abstract public function getKeyStore() : java.security.KeyStore;
	
	/**
	* Returns the ProtectionParameters that should be used to obtain
	* the {@link KeyStore.Entry Entry} with the given alias.
	* The <code>getKeyStore</code> method must be invoked before this
	* method may be called.
	*
	* @return the ProtectionParameters that should be used to obtain
	*   the {@link KeyStore.Entry Entry} with the given alias.
	* @param alias the alias of the KeyStore entry
	* @throws NullPointerException if alias is null
	* @throws KeyStoreException if an error occured during the
	*   operation
	* @throws IllegalStateException if the getKeyStore method has
	*   not been invoked prior to calling this method
	*/
	@:overload @:abstract public function getProtectionParameter(alias : String) : java.security.KeyStore.KeyStore_ProtectionParameter;
	
	/**
	* Returns a new Builder that encapsulates the given KeyStore.
	* The {@linkplain #getKeyStore} method of the returned object
	* will return <code>keyStore</code>, the {@linkplain
	* #getProtectionParameter getProtectionParameter()} method will
	* return <code>protectionParameters</code>.
	*
	* <p> This is useful if an existing KeyStore object needs to be
	* used with Builder-based APIs.
	*
	* @return a new Builder object
	* @param keyStore the KeyStore to be encapsulated
	* @param protectionParameter the ProtectionParameter used to
	*   protect the KeyStore entries
	* @throws NullPointerException if keyStore or
	*   protectionParameters is null
	* @throws IllegalArgumentException if the keyStore has not been
	*   initialized
	*/
	@:overload public static function newInstance(keyStore : java.security.KeyStore, protectionParameter : java.security.KeyStore.KeyStore_ProtectionParameter) : java.security.KeyStore.KeyStore_Builder;
	
	/**
	* Returns a new Builder object.
	*
	* <p>The first call to the {@link #getKeyStore} method on the returned
	* builder will create a KeyStore of type <code>type</code> and call
	* its {@link KeyStore#load load()} method.
	* The <code>inputStream</code> argument is constructed from
	* <code>file</code>.
	* If <code>protection</code> is a
	* <code>PasswordProtection</code>, the password is obtained by
	* calling the <code>getPassword</code> method.
	* Otherwise, if <code>protection</code> is a
	* <code>CallbackHandlerProtection</code>, the password is obtained
	* by invoking the CallbackHandler.
	*
	* <p>Subsequent calls to {@link #getKeyStore} return the same object
	* as the initial call. If the initial call to failed with a
	* KeyStoreException, subsequent calls also throw a
	* KeyStoreException.
	*
	* <p>The KeyStore is instantiated from <code>provider</code> if
	* non-null. Otherwise, all installed providers are searched.
	*
	* <p>Calls to {@link #getProtectionParameter getProtectionParameter()}
	* will return a {@link KeyStore.PasswordProtection PasswordProtection}
	* object encapsulating the password that was used to invoke the
	* <code>load</code> method.
	*
	* <p><em>Note</em> that the {@link #getKeyStore} method is executed
	* within the {@link AccessControlContext} of the code invoking this
	* method.
	*
	* @return a new Builder object
	* @param type the type of KeyStore to be constructed
	* @param provider the provider from which the KeyStore is to
	*   be instantiated (or null)
	* @param file the File that contains the KeyStore data
	* @param protection the ProtectionParameter securing the KeyStore data
	* @throws NullPointerException if type, file or protection is null
	* @throws IllegalArgumentException if protection is not an instance
	*   of either PasswordProtection or CallbackHandlerProtection; or
	*   if file does not exist or does not refer to a normal file
	*/
	@:overload public static function newInstance(type : String, provider : java.security.Provider, file : java.io.File, protection : java.security.KeyStore.KeyStore_ProtectionParameter) : java.security.KeyStore.KeyStore_Builder;
	
	/**
	* Returns a new Builder object.
	*
	* <p>Each call to the {@link #getKeyStore} method on the returned
	* builder will return a new KeyStore object of type <code>type</code>.
	* Its {@link KeyStore#load(KeyStore.LoadStoreParameter) load()}
	* method is invoked using a
	* <code>LoadStoreParameter</code> that encapsulates
	* <code>protection</code>.
	*
	* <p>The KeyStore is instantiated from <code>provider</code> if
	* non-null. Otherwise, all installed providers are searched.
	*
	* <p>Calls to {@link #getProtectionParameter getProtectionParameter()}
	* will return <code>protection</code>.
	*
	* <p><em>Note</em> that the {@link #getKeyStore} method is executed
	* within the {@link AccessControlContext} of the code invoking this
	* method.
	*
	* @return a new Builder object
	* @param type the type of KeyStore to be constructed
	* @param provider the provider from which the KeyStore is to
	*   be instantiated (or null)
	* @param protection the ProtectionParameter securing the Keystore
	* @throws NullPointerException if type or protection is null
	*/
	@:overload public static function newInstance(type : String, provider : java.security.Provider, protection : java.security.KeyStore.KeyStore_ProtectionParameter) : java.security.KeyStore.KeyStore_Builder;
	
	
}
@:native('java$security$KeyStore$Builder$FileBuilder') @:internal extern class KeyStore_Builder_FileBuilder extends java.security.KeyStore.KeyStore_Builder
{
	@:overload @:synchronized override public function getKeyStore() : java.security.KeyStore;
	
	@:overload @:synchronized override public function getProtectionParameter(alias : String) : java.security.KeyStore.KeyStore_ProtectionParameter;
	
	
}
@:native('java$security$KeyStore$SimpleLoadStoreParameter') @:internal extern class KeyStore_SimpleLoadStoreParameter implements java.security.KeyStore.KeyStore_LoadStoreParameter
{
	@:overload public function getProtectionParameter() : java.security.KeyStore.KeyStore_ProtectionParameter;
	
	
}
