package sun.security.pkcs11;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The Secmod class defines the interface to the native NSS
* library and the configuration information it stores in its
* secmod.db file.
*
* <p>Example code:
* <pre>
*   Secmod secmod = Secmod.getInstance();
*   if (secmod.isInitialized() == false) {
*       secmod.initialize("/home/myself/.mozilla", "/usr/sfw/lib/mozilla");
*   }
*
*   Provider p = secmod.getModule(ModuleType.KEYSTORE).getProvider();
*   KeyStore ks = KeyStore.getInstance("PKCS11", p);
*   ks.load(null, password);
* </pre>
*
* @since   1.6
* @author  Andreas Sterbenz
*/
@:require(java6) extern class Secmod
{
	/**
	* Return the singleton Secmod instance.
	*/
	@:overload public static function getInstance() : sun.security.pkcs11.Secmod;
	
	/**
	* Test whether this Secmod has been initialized. Returns true
	* if NSS has been initialized using either the initialize() method
	* or by directly calling the native NSS APIs. The latter may be
	* the case if the current process contains components that use
	* NSS directly.
	*
	* @throws IOException if an incompatible version of NSS
	*   has been loaded
	*/
	@:overload @:synchronized public function isInitialized() : Bool;
	
	/**
	* Initialize this Secmod.
	*
	* @param configDir the directory containing the NSS configuration
	*   files such as secmod.db
	* @param nssLibDir the directory containing the NSS libraries
	*   (libnss3.so or nss3.dll) or null if the library is on
	*   the system default shared library path
	*
	* @throws IOException if NSS has already been initialized,
	*   the specified directories are invalid, or initialization
	*   fails for any other reason
	*/
	@:overload public function initialize(configDir : String, nssLibDir : String) : Void;
	
	@:overload @:synchronized public function initialize(dbMode : sun.security.pkcs11.Secmod.Secmod_DbMode, configDir : String, nssLibDir : String) : Void;
	
	/**
	* Return an immutable list of all available modules.
	*
	* @throws IllegalStateException if this Secmod is misconfigured
	*   or not initialized
	*/
	@:overload @:synchronized public function getModules() : java.util.List<sun.security.pkcs11.Secmod.Secmod_Module>;
	
	/**
	* Returns the first module of the specified type. If no such
	* module exists, this method returns null.
	*
	* @throws IllegalStateException if this Secmod is misconfigured
	*   or not initialized
	*/
	@:overload public function getModule(type : sun.security.pkcs11.Secmod.Secmod_ModuleType) : sun.security.pkcs11.Secmod.Secmod_Module;
	
	
}
/**
* Constants describing the different types of NSS modules.
* For this API, NSS modules are classified as either one
* of the internal modules delivered as part of NSS or
* as an external module provided by a 3rd party.
*/
@:native('sun$security$pkcs11$Secmod$ModuleType') extern enum Secmod_ModuleType
{
	/**
	* The NSS Softtoken crypto module. This is the first
	* slot of the softtoken object.
	* This module provides
	* implementations for cryptographic algorithms but no KeyStore.
	*/
	CRYPTO;
	/**
	* The NSS Softtoken KeyStore module. This is the second
	* slot of the softtoken object.
	* This module provides
	* implementations for cryptographic algorithms (after login)
	* and the KeyStore.
	*/
	KEYSTORE;
	/**
	* The NSS Softtoken module in FIPS mode. Note that in FIPS mode the
	* softtoken presents only one slot, not separate CRYPTO and KEYSTORE
	* slots as in non-FIPS mode.
	*/
	FIPS;
	/**
	* The NSS builtin trust anchor module. This is the
	* NSSCKBI object. It provides no crypto functions.
	*/
	TRUSTANCHOR;
	/**
	* An external module.
	*/
	EXTERNAL;
	
}

/**
* A representation of one PKCS#11 slot in a PKCS#11 module.
*/
@:native('sun$security$pkcs11$Secmod$Module') extern class Secmod_Module
{
	/**
	* Get the configuration for this module. This is a string
	* in the SunPKCS11 configuration format. It can be
	* customized with additional options and then made
	* current using the setConfiguration() method.
	*/
	@:overload @:synchronized public function getConfiguration() : String;
	
	/**
	* Set the configuration for this module.
	*
	* @throws IllegalStateException if the associated provider
	*   instance has already been created.
	*/
	@:overload @:synchronized public function setConfiguration(config : String) : Void;
	
	/**
	* Return the pathname of the native library that implements
	* this module. For example, /usr/lib/libpkcs11.so.
	*/
	@:overload public function getLibraryName() : String;
	
	/**
	* Returns the type of this module.
	*/
	@:overload public function getType() : sun.security.pkcs11.Secmod.Secmod_ModuleType;
	
	/**
	* Returns the provider instance that is associated with this
	* module. The first call to this method creates the provider
	* instance.
	*/
	@:overload @:synchronized public function getProvider() : java.security.Provider;
	
	@:overload public function toString() : String;
	
	
}
/**
* Constants representing NSS trust categories.
*/
@:native('sun$security$pkcs11$Secmod$TrustType') extern enum Secmod_TrustType
{
	/** Trusted for all purposes */
	ALL;
	/** Trusted for SSL client authentication */
	CLIENT_AUTH;
	/** Trusted for SSL server authentication */
	SERVER_AUTH;
	/** Trusted for code signing */
	CODE_SIGNING;
	/** Trusted for email protection */
	EMAIL_PROTECTION;
	
}

@:native('sun$security$pkcs11$Secmod$DbMode') extern enum Secmod_DbMode
{
	READ_WRITE;
	READ_ONLY;
	NO_DB;
	
}

/**
* A LoadStoreParameter for use with the NSS Softtoken or
* NSS TrustAnchor KeyStores.
* <p>
* It allows the set of trusted certificates that are returned by
* the KeyStore to be specified.
*/
@:native('sun$security$pkcs11$Secmod$KeyStoreLoadParameter') extern class Secmod_KeyStoreLoadParameter implements LoadStoreParameter
{
	@:overload public function new(trustType : sun.security.pkcs11.Secmod.Secmod_TrustType, password : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	@:overload public function new(trustType : sun.security.pkcs11.Secmod.Secmod_TrustType, prot : ProtectionParameter) : Void;
	
	@:overload public function getProtectionParameter() : ProtectionParameter;
	
	@:overload public function getTrustType() : sun.security.pkcs11.Secmod.Secmod_TrustType;
	
	
}
@:native('sun$security$pkcs11$Secmod$TrustAttributes') @:internal extern class Secmod_TrustAttributes
{
	
}
@:native('sun$security$pkcs11$Secmod$Bytes') @:internal extern class Secmod_Bytes
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
