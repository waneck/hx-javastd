package com.sun.security.auth.module;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class KeyStoreLoginModule implements javax.security.auth.spi.LoginModule
{
	/**
	* Initialize this <code>LoginModule</code>.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> to be authenticated. <p>
	*
	* @param callbackHandler a <code>CallbackHandler</code> for communicating
	*                  with the end user (prompting for usernames and
	*                  passwords, for example),
	*                  which may be <code>null</code>. <p>
	*
	* @param sharedState shared <code>LoginModule</code> state. <p>
	*
	* @param options options specified in the login
	*                  <code>Configuration</code> for this particular
	*                  <code>LoginModule</code>.
	*/
	@:overload @:public public function initialize(subject : javax.security.auth.Subject, callbackHandler : javax.security.auth.callback.CallbackHandler, sharedState : java.util.Map<String, Dynamic>, options : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Authenticate the user.
	*
	* <p> Get the Keystore alias and relevant passwords.
	* Retrieve the alias's principal and credentials from the Keystore.
	*
	* <p>
	*
	* @exception FailedLoginException if the authentication fails. <p>
	*
	* @return true in all cases (this <code>LoginModule</code>
	*          should not be ignored).
	*/
	@:overload @:public public function login() : Bool;
	
	/**
	* Abstract method to commit the authentication process (phase 2).
	*
	* <p> This method is called if the LoginContext's
	* overall authentication succeeded
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* succeeded).
	*
	* <p> If this LoginModule's own authentication attempt
	* succeeded (checked by retrieving the private state saved by the
	* <code>login</code> method), then this method associates a
	* <code>X500Principal</code> for the subject distinguished name of the
	* first certificate in the alias's credentials in the subject's
	* principals,the alias's certificate path in the subject's public
	* credentials, and a<code>X500PrivateCredential</code> whose certificate
	* is the first  certificate in the alias's certificate path and whose
	* private key is the alias's private key in the subject's private
	* credentials.  If this LoginModule's own
	* authentication attempted failed, then this method removes
	* any state that was originally saved.
	*
	* <p>
	*
	* @exception LoginException if the commit fails
	*
	* @return true if this LoginModule's own login and commit
	*          attempts succeeded, or false otherwise.
	*/
	@:overload @:public public function commit() : Bool;
	
	/**
	* <p> This method is called if the LoginContext's
	* overall authentication failed.
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* did not succeed).
	*
	* <p> If this LoginModule's own authentication attempt
	* succeeded (checked by retrieving the private state saved by the
	* <code>login</code> and <code>commit</code> methods),
	* then this method cleans up any state that was originally saved.
	*
	* <p> If the loaded KeyStore's provider extends
	* <code>java.security.AuthProvider</code>,
	* then the provider's <code>logout</code> method is invoked.
	*
	* <p>
	*
	* @exception LoginException if the abort fails.
	*
	* @return false if this LoginModule's own login and/or commit attempts
	*          failed, and true otherwise.
	*/
	@:overload @:public public function abort() : Bool;
	
	/**
	* Logout a user.
	*
	* <p> This method removes the Principals, public credentials and the
	* private credentials that were added by the <code>commit</code> method.
	*
	* <p> If the loaded KeyStore's provider extends
	* <code>java.security.AuthProvider</code>,
	* then the provider's <code>logout</code> method is invoked.
	*
	* <p>
	*
	* @exception LoginException if the logout fails.
	*
	* @return true in all cases since this <code>LoginModule</code>
	*          should not be ignored.
	*/
	@:overload @:public public function logout() : Bool;
	
	
}
