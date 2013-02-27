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
extern interface Attributes extends java.lang.Cloneable extends java.io.Serializable
{
	/**
	* Determines whether the attribute set ignores the case of
	* attribute identifiers when retrieving or adding attributes.
	* @return true if case is ignored; false otherwise.
	*/
	@:overload public function isCaseIgnored() : Bool;
	
	/**
	* Retrieves the number of attributes in the attribute set.
	*
	* @return The nonnegative number of attributes in this attribute set.
	*/
	@:overload public function size() : Int;
	
	/**
	* Retrieves the attribute with the given attribute id from the
	* attribute set.
	*
	* @param attrID The non-null id of the attribute to retrieve.
	*           If this attribute set ignores the character
	*           case of its attribute ids, the case of attrID
	*           is ignored.
	* @return The attribute identified by attrID; null if not found.
	* @see #put
	* @see #remove
	*/
	@:overload public function get(attrID : String) : javax.naming.directory.Attribute;
	
	/**
	* Retrieves an enumeration of the attributes in the attribute set.
	* The effects of updates to this attribute set on this enumeration
	* are undefined.
	*
	* @return A non-null enumeration of the attributes in this attribute set.
	*         Each element of the enumeration is of class <tt>Attribute</tt>.
	*         If attribute set has zero attributes, an empty enumeration
	*         is returned.
	*/
	@:overload public function getAll() : javax.naming.NamingEnumeration<javax.naming.directory.Attribute>;
	
	/**
	* Retrieves an enumeration of the ids of the attributes in the
	* attribute set.
	* The effects of updates to this attribute set on this enumeration
	* are undefined.
	*
	* @return A non-null enumeration of the attributes' ids in
	*         this attribute set. Each element of the enumeration is
	*         of class String.
	*         If attribute set has zero attributes, an empty enumeration
	*         is returned.
	*/
	@:overload public function getIDs() : javax.naming.NamingEnumeration<String>;
	
	/**
	* Adds a new attribute to the attribute set.
	*
	* @param attrID   non-null The id of the attribute to add.
	*           If the attribute set ignores the character
	*           case of its attribute ids, the case of attrID
	*           is ignored.
	* @param val      The possibly null value of the attribute to add.
	*                 If null, the attribute does not have any values.
	* @return The Attribute with attrID that was previous in this attribute set;
	*         null if no such attribute existed.
	* @see #remove
	*/
	@:overload public function put(attrID : String, val : Dynamic) : javax.naming.directory.Attribute;
	
	/**
	* Adds a new attribute to the attribute set.
	*
	* @param attr     The non-null attribute to add.
	*                 If the attribute set ignores the character
	*                 case of its attribute ids, the case of
	*                 attr's identifier is ignored.
	* @return The Attribute with the same ID as attr that was previous
	*         in this attribute set;
	*         null if no such attribute existed.
	* @see #remove
	*/
	@:overload public function put(attr : javax.naming.directory.Attribute) : javax.naming.directory.Attribute;
	
	/**
	* Removes the attribute with the attribute id 'attrID' from
	* the attribute set. If the attribute does not exist, ignore.
	*
	* @param attrID   The non-null id of the attribute to remove.
	*                 If the attribute set ignores the character
	*                 case of its attribute ids, the case of
	*                 attrID is ignored.
	* @return The Attribute with the same ID as attrID that was previous
	*         in the attribute set;
	*         null if no such attribute existed.
	*/
	@:overload public function remove(attrID : String) : javax.naming.directory.Attribute;
	
	
}
