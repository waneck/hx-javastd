package javax.security.auth.login;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class LoginContext
{
	/**
	* Instantiate a new <code>LoginContext</code> object with a name.
	*
	* @param name the name used as the index into the
	*          <code>Configuration</code>.
	*
	* @exception LoginException if the caller-specified <code>name</code>
	*          does not appear in the <code>Configuration</code>
	*          and there is no <code>Configuration</code> entry
	*          for "<i>other</i>", or if the
	*          <i>auth.login.defaultCallbackHandler</i>
	*          security property was set, but the implementation
	*          class could not be loaded.
	*          <p>
	* @exception SecurityException if a SecurityManager is set and
	*          the caller does not have
	*          AuthPermission("createLoginContext.<i>name</i>"),
	*          or if a configuration entry for <i>name</i> does not exist and
	*          the caller does not additionally have
	*          AuthPermission("createLoginContext.other")
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Instantiate a new <code>LoginContext</code> object with a name
	* and a <code>Subject</code> object.
	*
	* <p>
	*
	* @param name the name used as the index into the
	*          <code>Configuration</code>. <p>
	*
	* @param subject the <code>Subject</code> to authenticate.
	*
	* @exception LoginException if the caller-specified <code>name</code>
	*          does not appear in the <code>Configuration</code>
	*          and there is no <code>Configuration</code> entry
	*          for "<i>other</i>", if the caller-specified <code>subject</code>
	*          is <code>null</code>, or if the
	*          <i>auth.login.defaultCallbackHandler</i>
	*          security property was set, but the implementation
	*          class could not be loaded.
	*          <p>
	* @exception SecurityException if a SecurityManager is set and
	*          the caller does not have
	*          AuthPermission("createLoginContext.<i>name</i>"),
	*          or if a configuration entry for <i>name</i> does not exist and
	*          the caller does not additionally have
	*          AuthPermission("createLoginContext.other")
	*/
	@:overload public function new(name : String, subject : javax.security.auth.Subject) : Void;
	
	/**
	* Instantiate a new <code>LoginContext</code> object with a name
	* and a <code>CallbackHandler</code> object.
	*
	* <p>
	*
	* @param name the name used as the index into the
	*          <code>Configuration</code>. <p>
	*
	* @param callbackHandler the <code>CallbackHandler</code> object used by
	*          LoginModules to communicate with the user.
	*
	* @exception LoginException if the caller-specified <code>name</code>
	*          does not appear in the <code>Configuration</code>
	*          and there is no <code>Configuration</code> entry
	*          for "<i>other</i>", or if the caller-specified
	*          <code>callbackHandler</code> is <code>null</code>.
	*          <p>
	* @exception SecurityException if a SecurityManager is set and
	*          the caller does not have
	*          AuthPermission("createLoginContext.<i>name</i>"),
	*          or if a configuration entry for <i>name</i> does not exist and
	*          the caller does not additionally have
	*          AuthPermission("createLoginContext.other")
	*/
	@:overload public function new(name : String, callbackHandler : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Instantiate a new <code>LoginContext</code> object with a name,
	* a <code>Subject</code> to be authenticated, and a
	* <code>CallbackHandler</code> object.
	*
	* <p>
	*
	* @param name the name used as the index into the
	*          <code>Configuration</code>. <p>
	*
	* @param subject the <code>Subject</code> to authenticate. <p>
	*
	* @param callbackHandler the <code>CallbackHandler</code> object used by
	*          LoginModules to communicate with the user.
	*
	* @exception LoginException if the caller-specified <code>name</code>
	*          does not appear in the <code>Configuration</code>
	*          and there is no <code>Configuration</code> entry
	*          for "<i>other</i>", or if the caller-specified
	*          <code>subject</code> is <code>null</code>,
	*          or if the caller-specified
	*          <code>callbackHandler</code> is <code>null</code>.
	*          <p>
	* @exception SecurityException if a SecurityManager is set and
	*          the caller does not have
	*          AuthPermission("createLoginContext.<i>name</i>"),
	*          or if a configuration entry for <i>name</i> does not exist and
	*          the caller does not additionally have
	*          AuthPermission("createLoginContext.other")
	*/
	@:overload public function new(name : String, subject : javax.security.auth.Subject, callbackHandler : javax.security.auth.callback.CallbackHandler) : Void;
	
	/**
	* Instantiate a new <code>LoginContext</code> object with a name,
	* a <code>Subject</code> to be authenticated,
	* a <code>CallbackHandler</code> object, and a login
	* <code>Configuration</code>.
	*
	* <p>
	*
	* @param name the name used as the index into the caller-specified
	*          <code>Configuration</code>. <p>
	*
	* @param subject the <code>Subject</code> to authenticate,
	*          or <code>null</code>. <p>
	*
	* @param callbackHandler the <code>CallbackHandler</code> object used by
	*          LoginModules to communicate with the user, or <code>null</code>.
	*          <p>
	*
	* @param config the <code>Configuration</code> that lists the
	*          login modules to be called to perform the authentication,
	*          or <code>null</code>.
	*
	* @exception LoginException if the caller-specified <code>name</code>
	*          does not appear in the <code>Configuration</code>
	*          and there is no <code>Configuration</code> entry
	*          for "<i>other</i>".
	*          <p>
	* @exception SecurityException if a SecurityManager is set,
	*          <i>config</i> is <code>null</code>,
	*          and either the caller does not have
	*          AuthPermission("createLoginContext.<i>name</i>"),
	*          or if a configuration entry for <i>name</i> does not exist and
	*          the caller does not additionally have
	*          AuthPermission("createLoginContext.other")
	*
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(name : String, subject : javax.security.auth.Subject, callbackHandler : javax.security.auth.callback.CallbackHandler, config : javax.security.auth.login.Configuration) : Void;
	
	/**
	* Perform the authentication.
	*
	* <p> This method invokes the <code>login</code> method for each
	* LoginModule configured for the <i>name</i> specified to the
	* <code>LoginContext</code> constructor, as determined by the login
	* <code>Configuration</code>.  Each <code>LoginModule</code>
	* then performs its respective type of authentication
	* (username/password, smart card pin verification, etc.).
	*
	* <p> This method completes a 2-phase authentication process by
	* calling each configured LoginModule's <code>commit</code> method
	* if the overall authentication succeeded (the relevant REQUIRED,
	* REQUISITE, SUFFICIENT, and OPTIONAL LoginModules succeeded),
	* or by calling each configured LoginModule's <code>abort</code> method
	* if the overall authentication failed.  If authentication succeeded,
	* each successful LoginModule's <code>commit</code> method associates
	* the relevant Principals and Credentials with the <code>Subject</code>.
	* If authentication failed, each LoginModule's <code>abort</code> method
	* removes/destroys any previously stored state.
	*
	* <p> If the <code>commit</code> phase of the authentication process
	* fails, then the overall authentication fails and this method
	* invokes the <code>abort</code> method for each configured
	* <code>LoginModule</code>.
	*
	* <p> If the <code>abort</code> phase
	* fails for any reason, then this method propagates the
	* original exception thrown either during the <code>login</code> phase
	* or the <code>commit</code> phase.  In either case, the overall
	* authentication fails.
	*
	* <p> In the case where multiple LoginModules fail,
	* this method propagates the exception raised by the first
	* <code>LoginModule</code> which failed.
	*
	* <p> Note that if this method enters the <code>abort</code> phase
	* (either the <code>login</code> or <code>commit</code> phase failed),
	* this method invokes all LoginModules configured for the
	* application regardless of their respective <code>Configuration</code>
	* flag parameters.  Essentially this means that <code>Requisite</code>
	* and <code>Sufficient</code> semantics are ignored during the
	* <code>abort</code> phase.  This guarantees that proper cleanup
	* and state restoration can take place.
	*
	* <p>
	*
	* @exception LoginException if the authentication fails.
	*/
	@:overload public function login() : Void;
	
	/**
	* Logout the <code>Subject</code>.
	*
	* <p> This method invokes the <code>logout</code> method for each
	* <code>LoginModule</code> configured for this <code>LoginContext</code>.
	* Each <code>LoginModule</code> performs its respective logout procedure
	* which may include removing/destroying
	* <code>Principal</code> and <code>Credential</code> information
	* from the <code>Subject</code> and state cleanup.
	*
	* <p> Note that this method invokes all LoginModules configured for the
	* application regardless of their respective
	* <code>Configuration</code> flag parameters.  Essentially this means
	* that <code>Requisite</code> and <code>Sufficient</code> semantics are
	* ignored for this method.  This guarantees that proper cleanup
	* and state restoration can take place.
	*
	* <p>
	*
	* @exception LoginException if the logout fails.
	*/
	@:overload public function logout() : Void;
	
	/**
	* Return the authenticated Subject.
	*
	* <p>
	*
	* @return the authenticated Subject.  If the caller specified a
	*          Subject to this LoginContext's constructor,
	*          this method returns the caller-specified Subject.
	*          If a Subject was not specified and authentication succeeds,
	*          this method returns the Subject instantiated and used for
	*          authentication by this LoginContext.
	*          If a Subject was not specified, and authentication fails or
	*          has not been attempted, this method returns null.
	*/
	@:overload public function getSubject() : javax.security.auth.Subject;
	
	
}
/**
* Wrap the caller-specified CallbackHandler in our own
* and invoke it within a privileged block, constrained by
* the caller's AccessControlContext.
*/
@:native('javax$security$auth$login$LoginContext$SecureCallbackHandler') @:internal extern class LoginContext_SecureCallbackHandler implements javax.security.auth.callback.CallbackHandler
{
	@:overload public function handle(callbacks : java.NativeArray<javax.security.auth.callback.Callback>) : Void;
	
	
}
/**
* LoginModule information -
*          incapsulates Configuration info and actual module instances
*/
@:native('javax$security$auth$login$LoginContext$ModuleInfo') @:internal extern class LoginContext_ModuleInfo
{
	
}
