package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LdapClient implements com.sun.jndi.ldap.pool.PooledConnection
{
	/**
	* Sends an LDAP Bind request.
	* Cannot be private; called by LdapSasl
	* @param dn The possibly null DN to use in the BIND request. null if anonymous.
	* @param toServer The possibly null array of bytes to send to the server.
	* @param auth The authentication mechanism
	*
	*/
	@:overload @:synchronized public function ldapBind(dn : String, toServer : java.NativeArray<java.StdTypes.Int8>, bindCtls : java.NativeArray<javax.naming.ldap.Control>, auth : String, pauseAfterReceipt : Bool) : com.sun.jndi.ldap.LdapResult;
	
	@:overload private function finalize() : Void;
	
	/*
	* Used by connection pooling to close physical connection.
	*/
	@:overload @:synchronized public function closeConnection() : Void;
	
	
}
