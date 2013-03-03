package com.sun.jndi.toolkit.dir;
/*
* Copyright (c) 1999, 2000, Oracle and/or its affiliates. All rights reserved.
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
* Given an enumeration of candidates, check whether each
* item in enumeration satifies the given filter.
* Each item is a Binding and the following is used to get its
* attributes for used by the filter:
*
*   ((DirContext)item.getObject()).getAttributes("").
* If item.getObject() is not an DirContext, the item is skipped
*
* The items in the enumeration are obtained one at a time as
* items from the search enumeration are requested.
*
* @author Rosanna Lee
*/
extern class LazySearchEnumerationImpl implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload @:public public function new(candidates : javax.naming.NamingEnumeration<Dynamic>, filter : com.sun.jndi.toolkit.dir.AttrFilter, cons : javax.naming.directory.SearchControls) : Void;
	
	@:overload @:public public function new(candidates : javax.naming.NamingEnumeration<Dynamic>, filter : com.sun.jndi.toolkit.dir.AttrFilter, cons : javax.naming.directory.SearchControls, ctx : javax.naming.Context, env : java.util.Hashtable<Dynamic, Dynamic>, useFactory : Bool) : Void;
	
	@:overload @:public public function new(candidates : javax.naming.NamingEnumeration<Dynamic>, filter : com.sun.jndi.toolkit.dir.AttrFilter, cons : javax.naming.directory.SearchControls, ctx : javax.naming.Context, env : java.util.Hashtable<Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	@:overload @:public public function next() : Dynamic;
	
	@:overload @:public public function close() : Void;
	
	
}
