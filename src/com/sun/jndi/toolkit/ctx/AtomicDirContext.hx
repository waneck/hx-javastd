package com.sun.jndi.toolkit.ctx;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class AtomicDirContext extends com.sun.jndi.toolkit.ctx.ComponentDirContext
{
	/**
	* Direct subclasses of AtomicDirContext must provide implementations for
	* the abstract a_ DirContext methods, and override the a_ Context methods
	* (which are no longer abstract because they have been overriden by
	* PartialCompositeDirContext with dummy implementations).
	*
	* If the subclass implements the notion of implicit nns,
	* it must override the a_*_nns DirContext and Context methods as well.
	*
	* @author Rosanna Lee
	*
	*/
	@:overload private function new() : Void;
	
	@:overload @:abstract private function a_getAttributes(name : String, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload @:abstract private function a_modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function a_modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function a_bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function a_rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload @:abstract private function a_createSubcontext(name : String, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload @:abstract private function a_search(matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:abstract private function a_search(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:abstract private function a_search(name : String, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:abstract private function a_getSchema(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload @:abstract private function a_getSchemaClassDefinition(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload private function a_getAttributes_nns(name : String, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload private function a_modifyAttributes_nns(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function a_modifyAttributes_nns(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function a_bind_nns(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function a_rebind_nns(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload private function a_createSubcontext_nns(name : String, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload private function a_search_nns(matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function a_search_nns(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function a_search_nns(name : String, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function a_getSchema_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload private function a_getSchemaDefinition_nns(cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload override private function c_modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_getSchema(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_getSchemaClassDefinition(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	/* equivalent to methods in DirContext interface for nns */
	@:overload override private function c_getAttributes_nns(name : javax.naming.Name, attrIds : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.Attributes;
	
	@:overload override private function c_modifyAttributes_nns(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_modifyAttributes_nns(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_bind_nns(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_rebind_nns(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : Void;
	
	@:overload override private function c_createSubcontext_nns(name : javax.naming.Name, attrs : javax.naming.directory.Attributes, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_search_nns(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search_nns(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_search_nns(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload override private function c_getSchema_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	@:overload override private function c_getSchemaClassDefinition_nns(name : javax.naming.Name, cont : com.sun.jndi.toolkit.ctx.Continuation) : javax.naming.directory.DirContext;
	
	
}
