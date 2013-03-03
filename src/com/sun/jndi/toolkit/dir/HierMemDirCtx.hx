package com.sun.jndi.toolkit.dir;
/*
* Copyright (c) 1999, 2002, Oracle and/or its affiliates. All rights reserved.
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
* A sample service provider that implements a hierarchical directory in memory.
* Every operation begins by doing a lookup on the name passed to it and then
* calls a corresponding "do<OperationName>" on the result of the lookup. The
* "do<OperationName>" does the work without any further resolution (it assumes
* that it is the target context).
*/
extern class HierMemDirCtx implements javax.naming.directory.DirContext
{
	@:protected private var myEnv : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var bindings : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:protected private var attrs : javax.naming.directory.Attributes;
	
	@:protected private var ignoreCase : Bool;
	
	@:protected private var readOnlyEx : javax.naming.NamingException;
	
	@:protected private var myParser : javax.naming.NameParser;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getNameInNamespace() : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(ignoreCase : Bool) : Void;
	
	@:overload @:public public function new(environment : java.util.Hashtable<Dynamic, Dynamic>, ignoreCase : Bool) : Void;
	
	@:overload @:protected private function new(environment : java.util.Hashtable<Dynamic, Dynamic>, ignoreCase : Bool, useFac : Bool) : Void;
	
	@:overload @:public public function lookup(name : String) : Dynamic;
	
	@:overload @:public public function lookup(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function doLookup(name : javax.naming.Name, useFactory : Bool) : Dynamic;
	
	@:overload @:public public function bind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function bind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function bind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:protected private function doBind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, useFactory : Bool) : Void;
	
	@:overload @:protected private function doBindAux(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function rebind(name : String, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function rebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:protected private function doRebind(name : javax.naming.Name, obj : Dynamic, attrs : javax.naming.directory.Attributes, useFactory : Bool) : Void;
	
	@:overload @:protected private function doRebindAux(name : javax.naming.Name, obj : Dynamic) : Void;
	
	@:overload @:public public function unbind(name : String) : Void;
	
	@:overload @:public public function unbind(name : javax.naming.Name) : Void;
	
	@:overload @:protected private function doUnbind(name : javax.naming.Name) : Void;
	
	@:overload @:public public function rename(oldname : String, newname : String) : Void;
	
	@:overload @:public public function rename(oldname : javax.naming.Name, newname : javax.naming.Name) : Void;
	
	@:overload @:protected private function doRename(oldname : javax.naming.Name, newname : javax.naming.Name) : Void;
	
	@:overload @:public public function list(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function list(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected private function doList() : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function listBindings(name : String) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function listBindings(name : javax.naming.Name) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected private function doListBindings(useFactory : Bool) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function destroySubcontext(name : String) : Void;
	
	@:overload @:public public function destroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload @:protected private function doDestroySubcontext(name : javax.naming.Name) : Void;
	
	@:overload @:public public function createSubcontext(name : String) : javax.naming.Context;
	
	@:overload @:public public function createSubcontext(name : javax.naming.Name) : javax.naming.Context;
	
	@:overload @:public public function createSubcontext(name : String, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:public public function createSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:protected private function doCreateSubcontext(name : javax.naming.Name, attrs : javax.naming.directory.Attributes) : javax.naming.directory.DirContext;
	
	@:overload @:public public function lookupLink(name : String) : Dynamic;
	
	@:overload @:public public function lookupLink(name : javax.naming.Name) : Dynamic;
	
	@:overload @:public public function getNameParser(name : String) : javax.naming.NameParser;
	
	@:overload @:public public function getNameParser(name : javax.naming.Name) : javax.naming.NameParser;
	
	@:overload @:public public function composeName(name : String, prefix : String) : String;
	
	@:overload @:public public function composeName(name : javax.naming.Name, prefix : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function addToEnvironment(propName : String, propVal : Dynamic) : Dynamic;
	
	@:overload @:public public function removeFromEnvironment(propName : String) : Dynamic;
	
	@:overload @:public public function getEnvironment() : java.util.Hashtable<Dynamic, Dynamic>;
	
	@:overload @:public public function getAttributes(name : String) : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : javax.naming.Name) : javax.naming.directory.Attributes;
	
	@:overload @:protected private function doGetAttributes() : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : String, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload @:public public function getAttributes(name : javax.naming.Name, attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload @:protected private function doGetAttributes(attrIds : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	@:overload @:public public function modifyAttributes(name : String, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function modifyAttributes(name : javax.naming.Name, mod_op : Int, attrs : javax.naming.directory.Attributes) : Void;
	
	@:overload @:public public function modifyAttributes(name : String, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:public public function modifyAttributes(name : javax.naming.Name, mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:protected private function doModifyAttributes(mods : java.NativeArray<javax.naming.directory.ModificationItem>) : Void;
	
	@:overload @:protected @:static private static function applyMods(mods : java.NativeArray<javax.naming.directory.ModificationItem>, orig : javax.naming.directory.Attributes) : javax.naming.directory.Attributes;
	
	@:overload @:public public function search(name : String, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : String, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : javax.naming.Name, matchingAttributes : javax.naming.directory.Attributes, attributesToReturn : java.NativeArray<String>) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : javax.naming.Name, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : javax.naming.Name, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : String, filter : String, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:public public function search(name : String, filterExpr : String, filterArgs : java.NativeArray<Dynamic>, cons : javax.naming.directory.SearchControls) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected private function createNewCtx() : com.sun.jndi.toolkit.dir.HierMemDirCtx;
	
	@:overload @:protected private function canonizeName(name : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:protected private function getInternalName(name : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:protected private function getLeafName(name : javax.naming.Name) : javax.naming.Name;
	
	@:overload @:public public function getSchema(name : String) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchema(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchemaClassDefinition(name : String) : javax.naming.directory.DirContext;
	
	@:overload @:public public function getSchemaClassDefinition(name : javax.naming.Name) : javax.naming.directory.DirContext;
	
	@:overload @:public public function setReadOnly(e : javax.naming.NamingException) : Void;
	
	@:overload @:public public function setIgnoreCase(ignoreCase : Bool) : Void;
	
	@:overload @:public public function setNameParser(parser : javax.naming.NameParser) : Void;
	
	
}
@:native('com$sun$jndi$toolkit$dir$HierMemDirCtx$FlatNames') @:internal extern class HierMemDirCtx_FlatNames implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function close() : Void;
	
	
}
@:native('com$sun$jndi$toolkit$dir$HierMemDirCtx$FlatBindings') @:internal extern class HierMemDirCtx_FlatBindings extends com.sun.jndi.toolkit.dir.HierMemDirCtx.HierMemDirCtx_FlatNames
{
	@:overload @:public override public function next() : Dynamic;
	
	
}
@:native('com$sun$jndi$toolkit$dir$HierMemDirCtx$HierContextEnumerator') extern class HierMemDirCtx_HierContextEnumerator extends com.sun.jndi.toolkit.dir.ContextEnumerator
{
	@:overload @:public public function new(context : javax.naming.Context, scope : Int) : Void;
	
	@:overload @:protected private function new(context : javax.naming.Context, scope : Int, contextName : String, returnSelf : Bool) : Void;
	
	@:overload @:protected override private function getImmediateChildren(ctx : javax.naming.Context) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload @:protected override private function newEnumerator(ctx : javax.naming.Context, scope : Int, contextName : String, returnSelf : Bool) : com.sun.jndi.toolkit.dir.ContextEnumerator;
	
	
}
@:internal extern class HierarchicalName extends javax.naming.CompoundName
{
	@:overload @:public override public function hashCode() : Int;
	
	@:overload @:public override public function getPrefix(posn : Int) : javax.naming.Name;
	
	@:overload @:public override public function getSuffix(posn : Int) : javax.naming.Name;
	
	@:overload @:public override public function clone() : Dynamic;
	
	
}
@:internal extern class HierarchicalNameParser implements javax.naming.NameParser
{
	@:overload @:public public function parse(name : String) : javax.naming.Name;
	
	
}
