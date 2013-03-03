package com.sun.xml.internal.bind.v2.bytecode;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ClassTailor
{
	/**
	* Returns the class name in the JVM format (such as "java/lang/String")
	*/
	@:overload @:public @:static public static function toVMClassName(c : Class<Dynamic>) : String;
	
	@:overload @:public @:static public static function toVMTypeName(c : Class<Dynamic>) : String;
	
	@:overload @:public @:static public static function tailor(templateClass : Class<Dynamic>, newClassName : String, replacements : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Customizes a class file by replacing constant pools.
	*
	* @param image
	*      The image of the template class.
	* @param replacements
	*      A list of pair of strings that specify the substitution
	*      {@code String[]{search_0, replace_0, search_1, replace_1, ..., search_n, replace_n }}
	*
	*      The search strings found in the constant pool will be replaced by the corresponding
	*      replacement string.
	*/
	@:overload @:public @:static public static function tailor(image : java.io.InputStream, templateClassName : String, newClassName : String, replacements : java.NativeArray<String>) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
