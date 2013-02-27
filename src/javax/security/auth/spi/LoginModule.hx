package javax.security.auth.spi;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface LoginModule
{
	/**
	* Initialize this LoginModule.
	*
	* <p> This method is called by the <code>LoginContext</code>
	* after this <code>LoginModule</code> has been instantiated.
	* The purpose of this method is to initialize this
	* <code>LoginModule</code> with the relevant information.
	* If this <code>LoginModule</code> does not understand
	* any of the data stored in <code>sharedState</code> or
	* <code>options</code> parameters, they can be ignored.
	*
	* <p>
	*
	* @param subject the <code>Subject</code> to be authenticated. <p>
	*
	* @param callbackHandler a <code>CallbackHandler</code> for communicating
	*                  with the end user (prompting for usernames and
	*                  passwords, for example). <p>
	*
	* @param sharedState state shared with other configured LoginModules. <p>
	*
	* @param options options specified in the login
	*                  <code>Configuration</code> for this particular
	*                  <code>LoginModule</code>.
	*/
	@:overload public function initialize(subject : javax.security.auth.Subject, callbackHandler : javax.security.auth.callback.CallbackHandler, sharedState : java.util.Map<String, Dynamic>, options : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Method to authenticate a <code>Subject</code> (phase 1).
	*
	* <p> The implementation of this method authenticates
	* a <code>Subject</code>.  For example, it may prompt for
	* <code>Subject</code> information such
	* as a username and password and then attempt to verify the password.
	* This method saves the result of the authentication attempt
	* as private state within the LoginModule.
	*
	* <p>
	*
	* @exception LoginException if the authentication fails
	*
	* @return true if the authentication succeeded, or false if this
	*                  <code>LoginModule</code> should be ignored.
	*/
	@:overload public function login() : Bool;
	
	/**
	* Method to commit the authentication process (phase 2).
	*
	* <p> This method is called if the LoginContext's
	* overall authentication succeeded
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* succeeded).
	*
	* <p> If this LoginModule's own authentication attempt
	* succeeded (checked by retrieving the private state saved by the
	* <code>login</code> method), then this method associates relevant
	* Principals and Credentials with the <code>Subject</code> located in the
	* <code>LoginModule</code>.  If this LoginModule's own
	* authentication attempted failed, then this method removes/destroys
	* any state that was originally saved.
	*
	* <p>
	*
	* @exception LoginException if the commit fails
	*
	* @return true if this method succeeded, or false if this
	*                  <code>LoginModule</code> should be ignored.
	*/
	@:overload public function commit() : Bool;
	
	/**
	* Method to abort the authentication process (phase 2).
	*
	* <p> This method is called if the LoginContext's
	* overall authentication failed.
	* (the relevant REQUIRED, REQUISITE, SUFFICIENT and OPTIONAL LoginModules
	* did not succeed).
	*
	* <p> If this LoginModule's own authentication attempt
	* succeeded (checked by retrieving the private state saved by the
	* <code>login</code> method), then this method cleans up any state
	* that was originally saved.
	*
	* <p>
	*
	* @exception LoginException if the abort fails
	*
	* @return true if this method succeeded, or false if this
	*                  <code>LoginModule</code> should be ignored.
	*/
	@:overload public function abort() : Bool;
	
	/**
	* Method which logs out a <code>Subject</code>.
	*
	* <p>An implementation of this method might remove/destroy a Subject's
	* Principals and Credentials.
	*
	* <p>
	*
	* @exception LoginException if the logout fails
	*
	* @return true if this method succeeded, or false if this
	*                  <code>LoginModule</code> should be ignored.
	*/
	@:overload public function logout() : Bool;
	
	
}
