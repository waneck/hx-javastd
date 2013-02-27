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
extern class LdapCtx extends com.sun.jndi.toolkit.ctx.ComponentDirContext implements javax.naming.event.EventDirContext implements javax.naming.ldap.LdapContext
{
	public static var DEFAULT_PORT(default, null) : Int;
	
	public static var DEFAULT_SSL_PORT(default, null) : Int;
	
	public static var DEFAULT_HOST(default, null) : String;
	
	@:overload public function new(dn : String, host : String, port_number : Int, props : java.util.Hashtable<Dynamic, Dynamic>, useSsl : Bool) : Void;
	
	@:overload public function newInstance(reqCtls : java.NativeArray<javax.naming.ldap.Control>) : javax.naming.ldap.LdapContext;
	
	@:overload override private function c_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	/*
	* attrs == null
	*      if obj is DirContext, attrs = obj.getAttributes()
	* if attrs == null && obj == null
	*      disallow (cannot determine objectclass to use)
	* if obj == null
	*      just create entry using attrs
	* else
	*      objAttrs = create attributes for representing obj
	*      attrs += objAttrs
	*      create entry using attrs
	*/
	@:overload override private function c_bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	/*
	* attrs == null
	*    if obj is DirContext, attrs = obj.getAttributes().
	* if attrs == null
	*    leave any existing attributes alone
	*    (set attrs = {objectclass=top} if object doesn't exist)
	* else
	*    replace all existing attributes with attrs
	* if obj == null
	*      just create entry using attrs
	* else
	*      objAttrs = create attributes for representing obj
	*      attrs += objAttrs
	*      create entry using attrs
	*/
	@:overload override private function c_rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_rename(oldName : javax.naming.Name, newName : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload override private function c_createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload override private function c_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload override private function c_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	@:overload override public function getNameInNamespace() : String;
	
	@:overload override public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload override private function c_getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload override private function c_modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_getSchema(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_getSchemaClassDefinition(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload private function c_search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	/**
	* Override with noncloning version.
	*/
	@:overload override private function p_getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload override public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload override public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload override public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload private function finalize() : Void;
	
	@:overload @:synchronized override public function close() : Void;
	
	@:overload public function reconnect(connCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload private function processReturnCode(answer : com.sun.jndi.ldap.LdapResult) : Void;
	
	@:overload private function processReturnCode(res : com.sun.jndi.ldap.LdapResult, resolvedName : javax.naming.Name, resolvedObj : Dynamic, remainName : javax.naming.Name, envprops : java.util.Hashtable<Dynamic, Dynamic>, fullDN : String) : Void;
	
	/**
	* Maps an LDAP error code to an appropriate NamingException.
	* %%% public; used by controls
	*
	* @param errorCode numeric LDAP error code
	* @param errorMessage textual description of the LDAP error. May be null.
	*
	* @return A NamingException or null if the error code indicates success.
	*/
	@:overload public static function mapErrorCode(errorCode : Int, errorMessage : String) : javax.naming.NamingException;
	
	@:overload public function extendedOperation(request : javax.naming.ldap.ExtendedRequest) : javax.naming.ldap.ExtendedResponse;
	
	@:overload public function setRequestControls(reqCtls : java.NativeArray<javax.naming.ldap.Control>) : Void;
	
	@:overload public function getRequestControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload public function getConnectControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	@:overload public function getResponseControls() : java.NativeArray<javax.naming.ldap.Control>;
	
	/*
	* Access to eventSupport need not be synchronized even though the
	* Connection thread can access it asynchronously. It is
	* impossible for a race condition to occur because
	* eventSupport.addNamingListener() must have been called before
	* the Connection thread can call back to this ctx.
	*/
	@:overload public function addNamingListener(nm : javax.naming.Name, scope : Int, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function addNamingListener(nm : String, scope : Int, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function removeNamingListener(l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function addNamingListener(nm : String, filter : String, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function addNamingListener(nm : javax.naming.Name, filter : String, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function addNamingListener(nm : javax.naming.Name, filter : String, filterArgs : java.NativeArray<Dynamic>, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function addNamingListener(nm : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, ctls : javax.naming.directory.SearchControls, l : javax.naming.event.NamingListener) : Void;
	
	@:overload public function targetMustExist() : Bool;
	
	
}
/*
* Used to store arguments to the search method.
*/
@:native('com$sun$jndi$ldap$LdapCtx$SearchArgs') @:internal extern class LdapCtx_SearchArgs
{
	
}
