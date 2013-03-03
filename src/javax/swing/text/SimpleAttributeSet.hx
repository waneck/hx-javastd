package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class SimpleAttributeSet implements javax.swing.text.MutableAttributeSet implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* An empty attribute set.
	*/
	@:public @:static @:final public static var EMPTY(default, null) : javax.swing.text.AttributeSet;
	
	/**
	* Creates a new attribute set.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new attribute set based on a supplied set of attributes.
	*
	* @param source the set of attributes
	*/
	@:overload @:public public function new(source : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Checks whether the set of attributes is empty.
	*
	* @return true if the set is empty else false
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Gets a count of the number of attributes.
	*
	* @return the count
	*/
	@:overload @:public public function getAttributeCount() : Int;
	
	/**
	* Tells whether a given attribute is defined.
	*
	* @param attrName the attribute name
	* @return true if the attribute is defined
	*/
	@:overload @:public public function isDefined(attrName : Dynamic) : Bool;
	
	/**
	* Compares two attribute sets.
	*
	* @param attr the second attribute set
	* @return true if the sets are equal, false otherwise
	*/
	@:overload @:public public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Makes a copy of the attributes.
	*
	* @return the copy
	*/
	@:overload @:public public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the names of the attributes in the set.
	*
	* @return the names as an <code>Enumeration</code>
	*/
	@:overload @:public public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Gets the value of an attribute.
	*
	* @param name the attribute name
	* @return the value
	*/
	@:overload @:public public function getAttribute(name : Dynamic) : Dynamic;
	
	/**
	* Checks whether the attribute list contains a
	* specified attribute name/value pair.
	*
	* @param name the name
	* @param value the value
	* @return true if the name/value pair is in the list
	*/
	@:overload @:public public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Checks whether the attribute list contains all the
	* specified name/value pairs.
	*
	* @param attributes the attribute list
	* @return true if the list contains all the name/value pairs
	*/
	@:overload @:public public function containsAttributes(attributes : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Adds an attribute to the list.
	*
	* @param name the attribute name
	* @param value the attribute value
	*/
	@:overload @:public public function addAttribute(name : Dynamic, value : Dynamic) : Void;
	
	/**
	* Adds a set of attributes to the list.
	*
	* @param attributes the set of attributes to add
	*/
	@:overload @:public public function addAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Removes an attribute from the list.
	*
	* @param name the attribute name
	*/
	@:overload @:public public function removeAttribute(name : Dynamic) : Void;
	
	/**
	* Removes a set of attributes from the list.
	*
	* @param names the set of names to remove
	*/
	@:overload @:public public function removeAttributes(names : java.util.Enumeration<Dynamic>) : Void;
	
	/**
	* Removes a set of attributes from the list.
	*
	* @param attributes the set of attributes to remove
	*/
	@:overload @:public public function removeAttributes(attributes : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Gets the resolving parent.  This is the set
	* of attributes to resolve through if an attribute
	* isn't defined locally.  This is null if there
	* are no other sets of attributes to resolve
	* through.
	*
	* @return the parent
	*/
	@:overload @:public public function getResolveParent() : javax.swing.text.AttributeSet;
	
	/**
	* Sets the resolving parent.
	*
	* @param parent the parent
	*/
	@:overload @:public public function setResolveParent(parent : javax.swing.text.AttributeSet) : Void;
	
	/**
	* Clones a set of attributes.
	*
	* @return the new set of attributes
	*/
	@:overload @:public public function clone() : Dynamic;
	
	/**
	* Returns a hashcode for this set of attributes.
	* @return     a hashcode value for this set of attributes.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Compares this object to the specified object.
	* The result is <code>true</code> if the object is an equivalent
	* set of attributes.
	* @param     obj   the object to compare this attribute set with
	* @return    <code>true</code> if the objects are equal;
	*            <code>false</code> otherwise
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Converts the attribute set to a String.
	*
	* @return the string
	*/
	@:overload @:public public function toString() : String;
	
	
}
/**
* An AttributeSet that is always empty.
*/
@:native('javax$swing$text$SimpleAttributeSet$EmptyAttributeSet') @:internal extern class SimpleAttributeSet_EmptyAttributeSet implements javax.swing.text.AttributeSet implements java.io.Serializable
{
	@:overload @:public public function getAttributeCount() : Int;
	
	@:overload @:public public function isDefined(attrName : Dynamic) : Bool;
	
	@:overload @:public public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	@:overload @:public public function copyAttributes() : javax.swing.text.AttributeSet;
	
	@:overload @:public public function getAttribute(key : Dynamic) : Dynamic;
	
	@:overload @:public public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	@:overload @:public public function containsAttributes(attributes : javax.swing.text.AttributeSet) : Bool;
	
	@:overload @:public public function getResolveParent() : javax.swing.text.AttributeSet;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	
}
