package java.security;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class AuthProvider extends java.security.Provider
{
	/**
	* Constructs a provider with the specified name, version number,
	* and information.
	*
	* @param name the provider name.
	* @param version the provider version number.
	* @param info a description of the provider and its services.
	*/
	@:overload private function new(name : String, version : Float, info : String) : Void;
	
	/**
	* Log in to this provider.
	*
	* <p> The provider relies on a <code>CallbackHandler</code>
	* to obtain authentication information from the caller
	* (a PIN, for example).  If the caller passes a <code>null</code>
	* handler to this method, the provider uses the handler set in the
	* <code>setCallbackHandler</code> method.
	* If no handler was set in that method, the provider queries the
	* <i>auth.login.defaultCallbackHandler</i> security property
	* for the fully qualified class name of a default handler implementation.
	* If the security property is not set,
	* the provider is assumed to have alternative means
	* for obtaining authentication information.
	*
	* @param subject the <code>Subject</code> which may contain
	*          principals/credentials used for authentication,
	*          or may be populated with additional principals/credentials
	*          after successful authentication has completed.
	*          This parameter may be <code>null</code>.
	* @param handler the <code>CallbackHandler</code> used by
	*          this provider to obtain authentication information
	*          from the caller, which may be <code>null</code>
	*
	* @exception LoginException if the login operation fails
	* @exception SecurityException if the caller does not pass a
	*  security check for
	*  <code>SecurityPermission("authProvider.<i>name</i>")</code>,
	*  where <i>name</i> is the value returned by
	*  this provider's <code>getName</code> method
	*/
	@:overload @:abstract public function login(subject : javax.security.auth.Subject, handler : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Log out from this provider.
	*
	* @exception LoginException if the logout operation fails
	* @exception SecurityException if the caller does not pass a
	*  security check for
	*  <code>SecurityPermission("authProvider.<i>name</i>")</code>,
	*  where <i>name</i> is the value returned by
	*  this provider's <code>getName</code> method
	*/
	@:overload @:abstract public function logout() : Void;
	
	/**
	* Set a <code>CallbackHandler</code>.
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
	@:overload @:abstract public function setCallbackHandler(handler : javax.security.auth.callback.CallbackHandler) : Void;
	
	
}
