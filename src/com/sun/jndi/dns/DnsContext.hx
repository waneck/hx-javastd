package com.sun.jndi.dns;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* A DnsContext is a directory context representing a DNS node.
*
* @author Scott Seligman
*/
extern class DnsContext extends com.sun.jndi.toolkit.ctx.ComponentDirContext
{
	/**
	* Returns a DNS context for a given domain and servers.
	* Each server is of the form "server[:port]".
	* IPv6 literal host names include delimiting brackets.
	* There must be at least one server.
	* The environment must not be null; it is cloned before being stored.
	*/
	@:overload public function new(domain : String, servers : java.NativeArray<String>, environment : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload override public function close() : Void;
	
	/*
	* Override default with a noncloning version.
	*/
	@:overload override private function p_getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload override public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload override public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload override public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload override public function c_lookup(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload override public function c_lookupLink(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Dynamic;
	
	@:overload override public function c_list(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override public function c_listBindings(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override public function c_bind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_rebind(name : javax.naming.Name, obj : Dynamic, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_unbind(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_rename(oldname : javax.naming.Name, newname : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_createSubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.Context;
	
	@:overload override public function c_destroySubcontext(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_getNameParser(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NameParser;
	
	@:overload override public function c_bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override public function c_getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload override public function c_modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override public function c_search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override public function c_search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override public function c_search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override public function c_getSchema(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override public function c_getSchemaClassDefinition(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override public function getNameInNamespace() : String;
	
	@:overload override public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	
}
@:internal extern class CT
{
	
}
@:internal extern class NameClassPairEnumeration implements javax.naming.NamingEnumeration<Dynamic>
{
	/*
	* An enumeration of name/classname pairs.
	*
	* Nodes that have children or that are zone cuts are returned with
	* classname DirContext.  Other nodes are returned with classname
	* Object even though they are DirContexts as well, since this might
	* make the namespace easier to browse.
	*/
	private var nodes : java.util.Enumeration<Dynamic>;
	
	private var ctx : DnsContext;
	
	/*
	* ctx will be set to null when no longer needed by the enumeration.
	*/
	@:overload public function close() : Void;
	
	@:overload public function hasMore() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
@:internal extern class BindingEnumeration extends NameClassPairEnumeration
{
	@:overload override public function next() : Dynamic;
	
	
}
