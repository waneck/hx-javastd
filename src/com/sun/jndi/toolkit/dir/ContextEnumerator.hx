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
* A class for recursively enumerating the contents of a Context;
*
* @author Jon Ruiz
*/
extern class ContextEnumerator implements javax.naming.NamingEnumeration<Dynamic>
{
	@:overload public function new(context : javax.naming.Context) : Void;
	
	@:overload public function new(context : javax.naming.Context, scope : Int) : Void;
	
	@:overload private function new(context : javax.naming.Context, scope : Int, contextName : String, returnSelf : Bool) : Void;
	
	@:overload private function getImmediateChildren(ctx : javax.naming.Context) : javax.naming.NamingEnumeration<Dynamic>;
	
	@:overload private function newEnumerator(ctx : javax.naming.Context, scope : Int, contextName : String, returnSelf : Bool) : com.sun.jndi.toolkit.dir.ContextEnumerator;
	
	@:overload public function hasMore() : Bool;
	
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function close() : Void;
	
	
}
