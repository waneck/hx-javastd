package sun.reflect.generics.scope;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class DummyScope implements sun.reflect.generics.scope.Scope
{
	/**
	* Factory method. Enforces the singleton pattern - only one
	* instance of this class ever exists.
	*/
	@:overload public static function make() : DummyScope;
	
	/**
	* Lookup a type variable in the scope, using its name. Always returns
	* <tt>null</tt>.
	* @param name - the name of the type variable being looked up
	* @return  null
	*/
	@:overload public function lookup(name : String) : java.lang.reflect.TypeVariable<Dynamic>;
	
	
}
