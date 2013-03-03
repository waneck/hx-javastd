package com.sun.tools.javadoc;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class JavadocTool extends com.sun.tools.javac.main.JavaCompiler
{
	/**
	* Construct a new JavaCompiler processor, using appropriately
	* extended phases of the underlying compiler.
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* For javadoc, the parser needs to keep comments. Overrides method from JavaCompiler.
	*/
	@:overload @:protected override private function keepComments() : Bool;
	
	/**
	*  Construct a new javadoc tool.
	*/
	@:overload @:public @:static public static function make0(context : com.sun.tools.javac.util.Context) : com.sun.tools.javadoc.JavadocTool;
	
	@:overload @:public public function getRootDocImpl(doclocale : String, encoding : String, filter : com.sun.tools.javadoc.ModifierFilter, javaNames : com.sun.tools.javac.util.List<String>, options : com.sun.tools.javac.util.List<java.NativeArray<String>>, breakiterator : Bool, subPackages : com.sun.tools.javac.util.List<String>, excludedPackages : com.sun.tools.javac.util.List<String>, docClasses : Bool, legacyDoclet : Bool, quiet : Bool) : com.sun.tools.javadoc.RootDocImpl;
	
	/**
	* Return true if given file name is a valid class name
	* (including "package-info").
	* @param clazzname the name of the class to check.
	* @return true if given class name is a valid class name
	* and false otherwise.
	*/
	@:overload @:public @:static public static function isValidClassName(s : String) : Bool;
	
	
}
