package sun.tools.java;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Identifier implements sun.tools.java.Constants
{
	/**
	* Lookup an identifier.
	*/
	@:overload @:synchronized public static function lookup(s : String) : Identifier;
	
	/**
	* Lookup a qualified identifier.
	*/
	@:overload public static function lookup(q : Identifier, n : Identifier) : Identifier;
	
	/**
	* Lookup an inner identifier.
	* (Note:  n can be idNull.)
	*/
	@:overload public static function lookupInner(c : Identifier, n : Identifier) : Identifier;
	
	/**
	* Convert to a string.
	*/
	@:overload public function toString() : String;
	
	/**
	* Check if the name is qualified (ie: it contains a '.').
	*/
	@:overload public function isQualified() : Bool;
	
	/**
	* Return the qualifier. The null identifier is returned if
	* the name was not qualified.  The qualifier does not include
	* any inner part of the name.
	*/
	@:overload public function getQualifier() : Identifier;
	
	/**
	* Return the unqualified name.
	* In the case of an inner name, the unqualified name
	* will itself contain components.
	*/
	@:overload public function getName() : Identifier;
	
	/** A space character, which precedes the first inner class
	*  name in a qualified name, and thus marks the qualification
	*  as involving inner classes, instead of merely packages.<p>
	*  Ex:  <tt>java.util.Vector. Enumerator</tt>.
	*/
	public static var INNERCLASS_PREFIX(default, null) : java.StdTypes.Char16;
	
	/**
	* Check if the name is inner (ie: it contains a ' ').
	*/
	@:overload public function isInner() : Bool;
	
	/**
	* Return the class name, without its qualifier,
	* and with any nesting flattened into a new qualfication structure.
	* If the original identifier is inner,
	* the result will be qualified, and can be further
	* decomposed by means of <tt>getQualifier</tt> and <tt>getName</tt>.
	* <p>
	* For example:
	* <pre>
	* Identifier id = Identifier.lookup("pkg.Foo. Bar");
	* id.getName().name      =>  "Foo. Bar"
	* id.getFlatName().name  =>  "Foo.Bar"
	* </pre>
	*/
	@:overload public function getFlatName() : Identifier;
	
	@:overload public function getTopName() : Identifier;
	
	/**
	* Yet another way to slice qualified identifiers:
	* The head of an identifier is its first qualifier component,
	* and the tail is the rest of them.
	*/
	@:overload public function getHead() : Identifier;
	
	/**
	* @see getHead
	*/
	@:overload public function getTail() : Identifier;
	
	/**
	* Determine whether an Identifier has been marked as ambiguous.
	*/
	@:overload public function hasAmbigPrefix() : Bool;
	
	/**
	* Add ambigPrefix to `this' to make a new Identifier marked as
	* ambiguous.  It is important that this new Identifier not refer
	* to an existing class.
	*/
	@:overload public function addAmbigPrefix() : Identifier;
	
	/**
	* Remove the ambigPrefix from `this' to get the original identifier.
	*/
	@:overload public function removeAmbigPrefix() : Identifier;
	
	
}
