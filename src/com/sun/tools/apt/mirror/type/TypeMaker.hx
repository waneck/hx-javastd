package com.sun.tools.apt.mirror.type;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* Utilities for constructing type objects.
*/
extern class TypeMaker
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.mirror.type.TypeMaker;
	
	/**
	* Returns the TypeMirror corresponding to a javac Type object.
	*/
	@:overload @:public public function getType(t : com.sun.tools.javac.code.Type) : com.sun.mirror.type.TypeMirror;
	
	/**
	* Returns the declared type corresponding to a given ClassType.
	*/
	@:overload @:public public function getDeclaredType(t : com.sun.tools.javac.code.Type.Type_ClassType) : com.sun.mirror.type.DeclaredType;
	
	/**
	* Returns a collection of types corresponding to a list of javac Type
	* objects.
	*/
	@:overload @:public public function getTypes(types : java.lang.Iterable<com.sun.tools.javac.code.Type>) : java.util.Collection<com.sun.mirror.type.TypeMirror>;
	
	/**
	* Returns a collection of types corresponding to a list of javac Type
	* objects.  The element type of the result is specified explicitly.
	*/
	@:overload @:public public function getTypes<T : com.sun.mirror.type.TypeMirror>(types : java.lang.Iterable<com.sun.tools.javac.code.Type>, resType : Class<T>) : java.util.Collection<T>;
	
	/**
	* Returns the string representation of a type.
	* Bounds of type variables are not included; bounds of wildcard types are.
	* Type names are qualified.
	*/
	@:overload @:public public function typeToString(t : com.sun.tools.javac.code.Type) : String;
	
	
}
