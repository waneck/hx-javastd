package com.sun.jmx.remote.security;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class JMXPluggableAuthenticator implements javax.management.remote.JMXAuthenticator
{
	/**
	* Creates an instance of <code>JMXPluggableAuthenticator</code>
	* and initializes it with a {@link LoginContext}.
	*
	* @param env the environment containing configuration properties for the
	*            authenticator. Can be null, which is equivalent to an empty
	*            Map.
	* @exception SecurityException if the authentication mechanism cannot be
	*            initialized.
	*/
	@:overload @:public public function new(env : java.util.Map<Dynamic, Dynamic>) : Void;
	
	/**
	* Authenticate the <code>MBeanServerConnection</code> client
	* with the given client credentials.
	*
	* @param credentials the user-defined credentials to be passed in
	* to the server in order to authenticate the user before creating
	* the <code>MBeanServerConnection</code>.  This parameter must
	* be a two-element <code>String[]</code> containing the client's
	* username and password in that order.
	*
	* @return the authenticated subject containing a
	* <code>JMXPrincipal(username)</code>.
	*
	* @exception SecurityException if the server cannot authenticate the user
	* with the provided credentials.
	*/
	@:overload @:public public function authenticate(credentials : Dynamic) : javax.security.auth.Subject;
	
	
}
/**
* This callback handler supplies the username and password (which was
* originally supplied by the JMX user) to the JAAS login module performing
* the authentication. No interactive user prompting is required because the
* credentials are already available to this class (via its enclosing class).
*/
@:native('com$sun$jmx$remote$security$JMXPluggableAuthenticator$JMXCallbackHandler') @:internal extern class JMXPluggableAuthenticator_JMXCallbackHandler implements javax.security.auth.callback.CallbackHandler
{
	/**
	* Sets the username and password in the appropriate Callback object.
	*/
	@:overload @:public public function handle(callbacks : java.NativeArray<javax.security.auth.callback.Callback>) : Void;
	
	
}
/**
* This class defines the JAAS configuration for file-based authentication.
* It is equivalent to the following textual configuration entry:
* <pre>
*     JMXPluggableAuthenticator {
*         com.sun.jmx.remote.security.FileLoginModule required;
*     };
* </pre>
*/
@:native('com$sun$jmx$remote$security$JMXPluggableAuthenticator$FileLoginConfig') @:internal extern class JMXPluggableAuthenticator_FileLoginConfig extends javax.security.auth.login.Configuration
{
	/**
	* Creates an instance of <code>FileLoginConfig</code>
	*
	* @param passwordFile A filepath that identifies the password file to use.
	*                     If null then the default password file is used.
	*/
	@:overload @:public public function new(passwordFile : String) : Void;
	
	/**
	* Gets the JAAS configuration for file-based authentication
	*/
	@:overload @:public override public function getAppConfigurationEntry(name : String) : java.NativeArray<javax.security.auth.login.AppConfigurationEntry>;
	
	/**
	* Refreshes the configuration.
	*/
	@:overload @:public override public function refresh() : Void;
	
	
}
