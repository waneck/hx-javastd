package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class DeclarationMaker
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.apt.mirror.declaration.DeclarationMaker;
	
	/**
	* Returns the package declaration for a package symbol.
	*/
	@:overload @:public public function getPackageDeclaration(p : PackageSymbol) : com.sun.mirror.declaration.PackageDeclaration;
	
	/**
	* Returns the package declaration for the package with the given name.
	* Name is fully-qualified, or "" for the unnamed package.
	* Returns null if package declaration not found.
	*/
	@:overload @:public public function getPackageDeclaration(name : String) : com.sun.mirror.declaration.PackageDeclaration;
	
	/**
	* Returns the type declaration for a class symbol.
	* Forces completion, and returns null on error.
	*/
	@:overload @:public public function getTypeDeclaration(c : ClassSymbol) : com.sun.mirror.declaration.TypeDeclaration;
	
	/**
	* Returns the type declaration for the type with the given canonical name.
	* Returns null if type declaration not found.
	*/
	@:overload @:public public function getTypeDeclaration(name : String) : com.sun.mirror.declaration.TypeDeclaration;
	
	/**
	* Returns a type parameter declaration.
	*/
	@:overload @:public public function getTypeParameterDeclaration(t : TypeSymbol) : com.sun.mirror.declaration.TypeParameterDeclaration;
	
	/**
	* Is a string a valid Java identifier?
	*/
	@:overload @:public @:static public static function isJavaIdentifier(id : String) : Bool;
	
	@:overload @:public @:static public static function isJavaName(name : String) : Bool;
	
	
}
