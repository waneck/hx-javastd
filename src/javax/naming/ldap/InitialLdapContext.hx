package javax.naming.ldap;
/*
* Copyright (c) 1999, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class InitialLdapContext extends javax.naming.directory.InitialDirContext implements javax.naming.ldap.LdapContext
{
	/**
	* Constructs an initial context using no environment properties or
	* connection request controls.
	* Equivalent to <tt>new InitialLdapContext(null, null)</tt>.
	*
	* @throws  NamingException if a naming exception is encountered
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs an initial context
	* using environment properties and connection request controls.
	* See <tt>javax.naming.InitialContext</tt> for a discussion of
	* environment properties.
	*
	* <p> This constructor will not modify its parameters or
	* save references to them, but may save a clone or copy.
	* Caller should not modify mutable keys and values in
	* <tt>environment</tt> after it has been passed to the constructor.
	*
	* <p> <tt>connCtls</tt> is used as the underlying context instance's
	* connection request controls.  See the class description
	* for details.
	*
	* @param environment
	*          environment used to create the initial DirContext.
	*          Null indicates an empty environment.
	* @param connCtls
	*          connection request controls for the initial context.
	*          If null, no connection request controls are used.
	*
	* @throws  NamingException if a naming exception is encountered
	*
	* @see #reconnect
	* @see LdapContext#reconnect
	*/
	@:overload @:public public function new(environment : java.util.Hashtable<Dynamic, Dynamic>, connCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload @:public public function extendedOperation(request : javax.naming.ldap.ExtendedRequest) : javax.naming.ldap.ExtendedResponse;
	
	@:overload @:public public function newInstance(reqCtls : java.NativeArray<javax.naming.ldap.Control>) : javax.naming.ldap.LdapContext;
	
	@:overload @:public public function reconnect(connCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload @:public public function getConnectControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload @:public public function setRequestControls(requestControls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload @:public public function getRequestControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload @:public public function getResponseControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	
}
