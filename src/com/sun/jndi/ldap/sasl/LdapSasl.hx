package com.sun.jndi.ldap.sasl;
/*
* Copyright (c) 1999, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapSasl
{
	/**
	* Performs SASL bind.
	* Creates a SaslClient by using a default CallbackHandler
	* that uses the Context.SECURITY_PRINCIPAL and Context.SECURITY_CREDENTIALS
	* properties to satisfy the callbacks, and by using the
	* SASL_AUTHZ_ID property as the authorization id. If the SASL_AUTHZ_ID
	* property has not been set, Context.SECURITY_PRINCIPAL is used.
	* If SASL_CALLBACK has been set, use that instead of the default
	* CallbackHandler.
	*<p>
	* If bind is successful and the selected SASL mechanism has a security
	* layer, set inStream and outStream to be filter streams that use
	* the security layer. These will be used for subsequent communication
	* with the server.
	*<p>
	* @param conn The non-null connection to use for sending an LDAP BIND
	* @param server Non-null string name of host to connect to
	* @param dn Non-null DN to bind as; also used as authentication ID
	* @param pw Possibly null password; can be byte[], char[] or String
	* @param authMech A non-null space-separated list of SASL authentication
	*        mechanisms.
	* @param env The possibly null environment of the context, possibly containing
	*        properties for used by SASL mechanisms
	* @param bindCtls The possibly null controls to accompany the bind
	* @return LdapResult containing status of the bind
	*/
	@:overload public static function saslBind(clnt : com.sun.jndi.ldap.LdapClient, conn : com.sun.jndi.ldap.Connection, server : String, dn : String, pw : Dynamic, authMech : String, env : java.util.Hashtable<Dynamic, Dynamic>, bindCtls : java.NativeArray<javax.naming.ldap.Control>) : com.sun.jndi.ldap.LdapResult;
	
	
}
