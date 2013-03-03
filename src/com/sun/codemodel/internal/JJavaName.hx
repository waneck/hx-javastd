package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JJavaName
{
	/**
	* Checks if a given string is usable as a Java identifier.
	*/
	@:overload @:public @:static public static function isJavaIdentifier(s : String) : Bool;
	
	/**
	* Checks if the given string is a valid fully qualified name.
	*/
	@:overload @:public @:static public static function isFullyQualifiedClassName(s : String) : Bool;
	
	/**
	* Checks if the given string is a valid Java package name.
	*/
	@:overload @:public @:static public static function isJavaPackageName(s : String) : Bool;
	
	/**
	* <b>Experimental API:</b> converts an English word into a plural form.
	*
	* @param word
	*      a word, such as "child", "apple". Must not be null.
	*      It accepts word concatanation forms
	*      that are common in programming languages, such as "my_child", "MyChild",
	*      "myChild", "MY-CHILD", "CODE003-child", etc, and mostly tries to do the right thing.
	*      ("my_children","MyChildren","myChildren", and "MY-CHILDREN", "CODE003-children" respectively)
	*      <p>
	*      Although this method only works for English words, it handles non-English
	*      words gracefully (by just returning it as-is.) For example, &#x65E5;&#x672C;&#x8A9E;
	*      will be returned as-is without modified, not "&#x65E5;&#x672C;&#x8A9E;s"
	*      <p>
	*      This method doesn't handle suffixes very well. For example, passing
	*      "person56" will return "person56s", not "people56".
	*
	* @return
	*      always non-null.
	*/
	@:overload @:public @:static public static function getPluralForm(word : String) : String;
	
	
}
@:native('com$sun$codemodel$internal$JJavaName$Entry') @:internal extern class JJavaName_Entry
{
	@:overload @:public public function new(pattern : String, replacement : String) : Void;
	
	
}
