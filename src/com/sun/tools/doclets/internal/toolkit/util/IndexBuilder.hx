package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2012, Oracle and/or its affiliates. All rights reserved.
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
* Build the mapping of each Unicode character with it's member lists
* containing members names starting with it. Also build a list for all the
* Unicode characters which start a member name. Member name is
* classkind or field or method or constructor name.
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @since 1.2
* @see java.lang.Character
* @author Atul M Dambalkar
*/
@:require(java2) extern class IndexBuilder
{
	/**
	* Constructor. Build the index map.
	*
	* @param configuration the current configuration of the doclet.
	* @param noDeprecated  true if -nodeprecated option is used,
	*                      false otherwise.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, noDeprecated : Bool) : Void;
	
	/**
	* Constructor. Build the index map.
	*
	* @param configuration the current configuration of the doclet.
	* @param noDeprecated  true if -nodeprecated option is used,
	*                      false otherwise.
	* @param classesOnly   Include only classes in index.
	*/
	@:overload @:public public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration, noDeprecated : Bool, classesOnly : Bool) : Void;
	
	/**
	* Sort the index map. Traverse the index map for all it's elements and
	* sort each element which is a list.
	*/
	@:overload @:protected private function sortIndexMap() : Void;
	
	/**
	* Get all the members in all the Packages and all the Classes
	* given on the command line. Form separate list of those members depending
	* upon their names.
	*
	* @param root Root of the documemt.
	*/
	@:overload @:protected private function buildIndexMap(root : com.sun.javadoc.RootDoc) : Void;
	
	/**
	* Put all the members(fields, methods and constructors) in the classdoc
	* to the indexmap.
	*
	* @param classdoc ClassDoc whose members will be added to the indexmap.
	*/
	@:overload @:protected private function putMembersInIndexMap(classdoc : com.sun.javadoc.ClassDoc) : Void;
	
	/**
	* Adjust list of members according to their names. Check the first
	* character in a member name, and then add the member to a list of members
	* for that particular unicode character.
	*
	* @param elements Array of members.
	*/
	@:overload @:protected private function adjustIndexMap(elements : java.NativeArray<com.sun.javadoc.Doc>) : Void;
	
	/**
	* Should this doc element be added to the index map?
	*/
	@:overload @:protected private function shouldAddToIndexMap(element : com.sun.javadoc.Doc) : Bool;
	
	/**
	* Return a map of all the individual member lists with Unicode character.
	*
	* @return Map index map.
	*/
	@:overload @:public public function getIndexMap() : java.util.Map<Null<java.StdTypes.Char16>, java.util.List<com.sun.javadoc.Doc>>;
	
	/**
	* Return the sorted list of members, for passed Unicode Character.
	*
	* @param index index Unicode character.
	* @return List member list for specific Unicode character.
	*/
	@:overload @:public public function getMemberList(index : Null<java.StdTypes.Char16>) : java.util.List<com.sun.javadoc.Doc>;
	
	/**
	* Array of IndexMap keys, Unicode characters.
	*/
	@:overload @:public public function elements() : java.NativeArray<Dynamic>;
	
	
}
/**
* A comparator used to sort classes and members.
* Note:  Maybe this compare code belongs in the tool?
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$IndexBuilder$DocComparator') @:internal extern class IndexBuilder_DocComparator implements java.util.Comparator<com.sun.javadoc.Doc>
{
	@:overload @:public public function compare(d1 : com.sun.javadoc.Doc, d2 : com.sun.javadoc.Doc) : Int;
	
	
}
