package sun.security.pkcs11;
/*
* Copyright (c) 2003, 2012, Oracle and/or its affiliates. All rights reserved.
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
* PKCS#11 provider main class.
*
* @author  Andreas Sterbenz
* @since   1.5
*/
@:require(java5) extern class SunPKCS11 extends java.security.AuthProvider
{
	@:overload public function new() : Void;
	
	@:overload public function new(configName : String) : Void;
	
	@:overload public function new(configStream : java.io.InputStream) : Void;
	
	/**
	* @deprecated use new SunPKCS11(String) or new SunPKCS11(InputStream)
	*         instead
	*/
	@:overload public function new(configName : String, configStream : java.io.InputStream) : Void;
	
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	/**
	* Log in to this provider.
	*
	* <p> If the token expects a PIN to be supplied by the caller,
	* the <code>handler</code> implementation must support
	* a <code>PasswordCallback</code>.
	*
	* <p> To determine if the token supports a protected authentication path,
	* the CK_TOKEN_INFO flag, CKF_PROTECTED_AUTHENTICATION_PATH, is consulted.
	*
	* @param subject this parameter is ignored
	* @param handler the <code>CallbackHandler</code> used by
	*  this provider to communicate with the caller
	*
	* @exception LoginException if the login operation fails
	* @exception SecurityException if the does not pass a security check for
	*  <code>SecurityPermission("authProvider.<i>name</i>")</code>,
	*  where <i>name</i> is the value returned by
	*  this provider's <code>getName</code> method
	*/
	@:overload override public function login(subject : javax.security.auth.Subject, handler : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Log out from this provider
	*
	* @exception LoginException if the logout operation fails
	* @exception SecurityException if the does not pass a security check for
	*  <code>SecurityPermission("authProvider.<i>name</i>")</code>,
	*  where <i>name</i> is the value returned by
	*  this provider's <code>getName</code> method
	*/
	@:overload override public function logout() : Void;
	
	/**
	* Set a <code>CallbackHandler</code>
	*
	* <p> The provider uses this handler if one is not passed to the
	* <code>login</code> method.  The provider also uses this handler
	* if it invokes <code>login</code> on behalf of callers.
	* In either case if a handler is not set via this method,
	* the provider queries the
	* <i>auth.login.defaultCallbackHandler</i> security property
	* for the fully qualified class name of a default handler implementation.
	* If the security property is not set,
	* the provider is assumed to have alternative means
	* for obtaining authentication information.
	*
	* @param handler a <code>CallbackHandler</code> for obtaining
	*          authentication information, which may be <code>null</code>
	*
	* @exception SecurityException if the caller does not pass a
	*  security check for
	*  <code>SecurityPermission("authProvider.<i>name</i>")</code>,
	*  where <i>name</i> is the value returned by
	*  this provider's <code>getName</code> method
	*/
	@:overload override public function setCallbackHandler(handler : javax.security.auth.callback.CallbackHandler) : Void;
	
	
}
@:native('sun$security$pkcs11$SunPKCS11$Descriptor') @:internal extern class SunPKCS11_Descriptor
{
	@:overload public function toString() : String;
	
	
}
@:native('sun$security$pkcs11$SunPKCS11$TokenPoller') @:internal extern class SunPKCS11_TokenPoller implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	
}
@:native('sun$security$pkcs11$SunPKCS11$P11Service') @:internal extern class SunPKCS11_P11Service extends java.security.Provider.Provider_Service
{
	@:overload override public function newInstance(param : Dynamic) : Dynamic;
	
	@:overload public function newInstance0(param : Dynamic) : Dynamic;
	
	@:overload override public function supportsParameter(param : Dynamic) : Bool;
	
	@:overload override public function toString() : String;
	
	
}
/**
* Serialized representation of the SunPKCS11 provider.
*/
@:native('sun$security$pkcs11$SunPKCS11$SunPKCS11Rep') @:internal extern class SunPKCS11_SunPKCS11Rep implements java.io.Serializable
{
	
}
