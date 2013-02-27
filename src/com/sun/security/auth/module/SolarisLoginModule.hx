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
extern class SolarisLoginModule implements javax.security.auth.spi.LoginModule
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
	*                  passwords, for example). <p>
	*
	* @param sharedState shared <code>LoginModule</code> state. <p>
	*
	* @param options options specified in the login
	*                  <code>Configuration</code> for this particular
	*                  <code>LoginModule</code>.
	*/
	@:overload public function initialize(subject : javax.security.auth.Subject, callbackHandler : javax.security.auth.callback.CallbackHandler, sharedState : java.util.Map<String, Dynamic>, options : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Authenticate the user (first phase).
	*
	* <p> The implementation of this method attempts to retrieve the user's
	* Solaris <code>Subject</code> information by making a native Solaris
	* system call.
	*
	* <p>
	*
	* @exception FailedLoginException if attempts to retrieve the underlying
	*          system information fail.
	*
	* @return true in all cases (this <code>LoginModule</code>
	*          should not be ignored).
	*/
	@:overload public function login() : Bool;
	
	/**
	* Commit the authentication (second phase).
	*
	* <p> This method is called if the LoginContext's
	* overall authentication succeeded
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* succeeded).
	*
	* <p> If this LoginModule's own authentication attempt
	* succeeded (the importing of the Solaris authentication information
	* succeeded), then this method associates the Solaris Principals
	* with the <code>Subject</code> currently tied to the
	* <code>LoginModule</code>.  If this LoginModule's
	* authentication attempted failed, then this method removes
	* any state that was originally saved.
	*
	* <p>
	*
	* @exception LoginException if the commit fails
	*
	* @return true if this LoginModule's own login and commit attempts
	*          succeeded, or false otherwise.
	*/
	@:overload public function commit() : Bool;
	
	/**
	* Abort the authentication (second phase).
	*
	* <p> This method is called if the LoginContext's
	* overall authentication failed.
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* did not succeed).
	*
	* <p> This method cleans up any state that was originally saved
	* as part of the authentication attempt from the <code>login</code>
	* and <code>commit</code> methods.
	*
	* <p>
	*
	* @exception LoginException if the abort fails
	*
	* @return false if this LoginModule's own login and/or commit attempts
	*          failed, and true otherwise.
	*/
	@:overload public function abort() : Bool;
	
	/**
	* Logout the user
	*
	* <p> This method removes the Principals associated
	* with the <code>Subject</code>.
	*
	* <p>
	*
	* @exception LoginException if the logout fails
	*
	* @return true in all cases (this <code>LoginModule</code>
	*          should not be ignored).
	*/
	@:overload public function logout() : Bool;
	
	
}
