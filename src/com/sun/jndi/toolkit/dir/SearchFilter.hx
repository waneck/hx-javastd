package com.sun.jndi.toolkit.dir;
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
extern class SearchFilter implements com.sun.jndi.toolkit.dir.AttrFilter
{
	private static var debug(default, null) : Bool;
	
	private static var BEGIN_FILTER_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var END_FILTER_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var AND_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var OR_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var NOT_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var EQUAL_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var APPROX_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var LESS_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var GREATER_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var EXTEND_TOKEN(default, null) : java.StdTypes.Char16;
	
	private static var WILDCARD_TOKEN(default, null) : java.StdTypes.Char16;
	
	@:overload public function new(filter : String) : Void;
	
	@:overload public function check(targetAttrs : javax.naming.directory.Attributes) : Bool;
	
	/*
	* Utility routines used by member classes
	*/
	@:overload private function normalizeFilter() : Void;
	
	@:overload private function createNextFilter() : com.sun.jndi.toolkit.dir.SearchFilter.SearchFilter_StringFilter;
	
	@:overload private function getCurrentChar() : java.StdTypes.Char16;
	
	@:overload private function relCharAt(i : Int) : java.StdTypes.Char16;
	
	@:overload private function consumeChar() : Void;
	
	@:overload private function consumeChars(i : Int) : Void;
	
	@:overload private function relIndexOf(ch : Int) : Int;
	
	@:overload private function relSubstring(beginIndex : Int, endIndex : Int) : String;
	
	/**
	* Creates an LDAP filter as a conjuction of the attributes supplied.
	*/
	@:overload public static function format(attrs : javax.naming.directory.Attributes) : String;
	
	/**
	* Finds the first occurrence of <tt>ch</tt> in <tt>val</tt> starting
	* from position <tt>start</tt>. It doesn't count if <tt>ch</tt>
	* has been escaped by a backslash (\)
	*/
	@:overload public static function findUnescaped(ch : java.StdTypes.Char16, val : String, start : Int) : Int;
	
	/**
	* Formats the expression <tt>expr</tt> using arguments from the array
	* <tt>args</tt>.
	*
	* <code>{i}</code> specifies the <code>i</code>'th element from
	* the array <code>args</code> is to be substituted for the
	* string "<code>{i}</code>".
	*
	* To escape '{' or '}' (or any other character), use '\'.
	*
	* Uses getEncodedStringRep() to do encoding.
	*/
	@:overload public static function format(expr : String, args : java.NativeArray<Dynamic>) : String;
	
	/*
	* returns an Attributes instance containing only attributeIDs given in
	* "attributeIDs" whose values come from the given DSContext.
	*/
	@:overload public static function selectAttributes(originals : javax.naming.directory.Attributes, attrIDs : java.NativeArray<String>) : javax.naming.directory.Attributes;
	
	
}
/**
* A class for parsing LDAP search filters (defined in RFC 1960, 2254)
*
* @author Jon Ruiz
* @author Rosanna Lee
*/
@:native('com$sun$jndi$toolkit$dir$SearchFilter$StringFilter') @:internal extern interface SearchFilter_StringFilter extends com.sun.jndi.toolkit.dir.AttrFilter
{
	@:overload public function parse() : Void;
	
	
}
/**
* A class for dealing with compound filters ("and" & "or" filters).
*/
@:native('com$sun$jndi$toolkit$dir$SearchFilter$CompoundFilter') @:internal extern class SearchFilter_CompoundFilter implements com.sun.jndi.toolkit.dir.SearchFilter.SearchFilter_StringFilter
{
	@:overload public function parse() : Void;
	
	@:overload public function check(targetAttrs : javax.naming.directory.Attributes) : Bool;
	
	
}
/**
* A class for dealing with NOT filters
*/
@:native('com$sun$jndi$toolkit$dir$SearchFilter$NotFilter') @:internal extern class SearchFilter_NotFilter implements com.sun.jndi.toolkit.dir.SearchFilter.SearchFilter_StringFilter
{
	@:overload public function parse() : Void;
	
	@:overload public function check(targetAttrs : javax.naming.directory.Attributes) : Bool;
	
	
}
/**
* A class for dealing wtih atomic filters
*/
@:native('com$sun$jndi$toolkit$dir$SearchFilter$AtomicFilter') @:internal extern class SearchFilter_AtomicFilter implements com.sun.jndi.toolkit.dir.SearchFilter.SearchFilter_StringFilter
{
	@:overload public function parse() : Void;
	
	@:overload public function check(targetAttrs : javax.naming.directory.Attributes) : Bool;
	
	
}
