package javax.naming.directory;
/*
* Copyright (c) 1999, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicAttributes implements javax.naming.directory.Attributes
{
	/**
	* Constructs a new instance of Attributes.
	* The character case of attribute identifiers
	* is significant when subsequently retrieving or adding attributes.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a new instance of Attributes.
	* If <code>ignoreCase</code> is true, the character case of attribute
	* identifiers is ignored; otherwise the case is significant.
	* @param ignoreCase true means this attribute set will ignore
	*                   the case of its attribute identifiers
	*                   when retrieving or adding attributes;
	*                   false means case is respected.
	*/
	@:overload @:public public function new(ignoreCase : Bool) : Void;
	
	/**
	* Constructs a new instance of Attributes with one attribute.
	* The attribute specified by attrID and val are added to the newly
	* created attribute.
	* The character case of attribute identifiers
	* is significant when subsequently retrieving or adding attributes.
	* @param attrID   non-null The id of the attribute to add.
	* @param val The value of the attribute to add. If null, a null
	*        value is added to the attribute.
	*/
	@:overload @:public public function new(attrID : String, val : Dynamic) : Void;
	
	/**
	* Constructs a new instance of Attributes with one attribute.
	* The attribute specified by attrID and val are added to the newly
	* created attribute.
	* If <code>ignoreCase</code> is true, the character case of attribute
	* identifiers is ignored; otherwise the case is significant.
	* @param attrID   non-null The id of the attribute to add.
	*           If this attribute set ignores the character
	*           case of its attribute ids, the case of attrID
	*           is ignored.
	* @param val The value of the attribute to add. If null, a null
	*        value is added to the attribute.
	* @param ignoreCase true means this attribute set will ignore
	*                   the case of its attribute identifiers
	*                   when retrieving or adding attributes;
	*                   false means case is respected.
	*/
	@:overload @:public public function new(attrID : String, val : Dynamic, ignoreCase : Bool) : Void;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function isCaseIgnored() : Bool;
	
	@:overload @:public public function size() : Int;
	
	@:overload @:public public function get(attrID : String) : javax.naming.directory.Attribute;
	
	@:overload @:public public function getAll() : javax.naming.NamingEnumeration<javax.naming.directory.Attribute>;
	
	@:overload @:public public function getIDs() : javax.naming.NamingEnumeration<String>;
	
	@:overload @:public public function put(attrID : String, val : Dynamic) : javax.naming.directory.Attribute;
	
	@:overload @:public public function put(attr : javax.naming.directory.Attribute) : javax.naming.directory.Attribute;
	
	@:overload @:public public function remove(attrID : String) : javax.naming.directory.Attribute;
	
	/**
	* Generates the string representation of this attribute set.
	* The string consists of each attribute identifier and the contents
	* of each attribute. The contents of this string is useful
	* for debugging and is not meant to be interpreted programmatically.
	*
	* @return A non-null string listing the contents of this attribute set.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Determines whether this <tt>BasicAttributes</tt> is equal to another
	* <tt>Attributes</tt>
	* Two <tt>Attributes</tt> are equal if they are both instances of
	* <tt>Attributes</tt>,
	* treat the case of attribute IDs the same way, and contain the
	* same attributes. Each <tt>Attribute</tt> in this <tt>BasicAttributes</tt>
	* is checked for equality using <tt>Object.equals()</tt>, which may have
	* be overridden by implementations of <tt>Attribute</tt>).
	* If a subclass overrides <tt>equals()</tt>,
	* it should override <tt>hashCode()</tt>
	* as well so that two <tt>Attributes</tt> instances that are equal
	* have the same hash code.
	* @param obj the possibly null object to compare against.
	*
	* @return true If obj is equal to this BasicAttributes.
	* @see #hashCode
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Calculates the hash code of this BasicAttributes.
	*<p>
	* The hash code is computed by adding the hash code of
	* the attributes of this object. If this BasicAttributes
	* ignores case of its attribute IDs, one is added to the hash code.
	* If a subclass overrides <tt>hashCode()</tt>,
	* it should override <tt>equals()</tt>
	* as well so that two <tt>Attributes</tt> instances that are equal
	* have the same hash code.
	*
	* @return an int representing the hash code of this BasicAttributes instance.
	* @see #equals
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
@:native('javax$naming$directory$BasicAttributes$AttrEnumImpl') @:internal extern class BasicAttributes_AttrEnumImpl implements javax.naming.NamingEnumeration<javax.naming.directory.Attribute>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : javax.naming.directory.Attribute;
	
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function next() : javax.naming.directory.Attribute;
	
	@:overload @:public public function close() : Void;
	
	
}
@:native('javax$naming$directory$BasicAttributes$IDEnumImpl') @:internal extern class BasicAttributes_IDEnumImpl implements javax.naming.NamingEnumeration<String>
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : String;
	
	@:overload @:public public function hasMore() : Bool;
	
	@:overload @:public public function next() : String;
	
	@:overload @:public public function close() : Void;
	
	
}
