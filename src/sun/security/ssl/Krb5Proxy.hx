package sun.security.ssl;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface Krb5Proxy
{
	/**
	* Returns the Subject associated with the client-side of the SSL socket.
	*/
	@:overload public function getClientSubject(acc : java.security.AccessControlContext) : javax.security.auth.Subject;
	
	/**
	* Returns the Subject associated with the server-side of the SSL socket.
	*/
	@:overload public function getServerSubject(acc : java.security.AccessControlContext) : javax.security.auth.Subject;
	
	/**
	* Returns the KerberosKeys for the default server-side principal.
	*/
	@:overload public function getServerKeys(acc : java.security.AccessControlContext) : java.NativeArray<javax.crypto.SecretKey>;
	
	/**
	* Returns the server-side principal name associated with the KerberosKey.
	*/
	@:overload public function getServerPrincipalName(kerberosKey : javax.crypto.SecretKey) : String;
	
	/**
	* Returns the hostname embedded in the principal name.
	*/
	@:overload public function getPrincipalHostName(principal : java.security.Principal) : String;
	
	/**
	* Returns a ServicePermission for the principal name and action.
	*/
	@:overload public function getServicePermission(principalName : String, action : String) : java.security.Permission;
	
	
}
