package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, 2001, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class LdapReferralContext implements javax.naming.directory.DirContext implements javax.naming.ldap.LdapContext
{
	@:overload public function close() : Void;
	
	@:overload public function lookup(name : String) : Dynamic;
	
	@:overload public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload public function bind(name : String, obj : Dynamic) : Void;
	
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload public function rebind(name : String, obj : Dynamic) : Void;
	
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload public function unbind(name : String) : Void;
	
	@:overload public function unbind(name : javax.naming.Name) : Void;
	
	@:overload public function rename(oldName : String, newName : String) : Void;
	
	@:overload public function rename(oldName : javax.naming.Name, newName : javax.naming.Name) : Void;
	
	@:overload public function list(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function listBindings(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function destroySubcontext(name : String) : Void;
	
	@:overload public function destroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload public function createSubcontext(name : String) : javax.naming.Context;
	
	@:overload public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	@:overload public function lookupLink(name : String) : Dynamic;
	
	@:overload public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	@:overload public function getNameParser(name : String) : javax.naming.NameParser;
	
	@:overload public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
	@:overload public function composeName(name : String, prefix : String) : String;
	
	@:overload public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload public function getAttributes(name : String) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : String, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload public function modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload public function bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload public function createSubcontext(name : String, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload public function getSchema(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchema(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : String) : javax.naming.directory.DirContext;
	
	@:overload public function getSchemaClassDefinition(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload public function getNameInNamespace() : String;
	
	@:overload public function extendedOperation(request : javax.naming.ldap.ExtendedRequest) : javax.naming.ldap.ExtendedResponse;
	
	@:overload public function newInstance(requestControls : java.NativeArray<javax.naming.ldap.Control>) : javax.naming.ldap.LdapContext;
	
	@:overload public function reconnect(connCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload public function getConnectControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload public function setRequestControls(requestControls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload public function getRequestControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload public function getResponseControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	
}
