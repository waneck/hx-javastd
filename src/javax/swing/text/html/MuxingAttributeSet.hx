package javax.swing.text.html;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
* An implementation of <code>AttributeSet</code> that can multiplex
* across a set of <code>AttributeSet</code>s.
*
*/
@:internal extern class MuxingAttributeSet implements javax.swing.text.AttributeSet implements java.io.Serializable
{
	/**
	* Creates a <code>MuxingAttributeSet</code> with the passed in
	* attributes.
	*/
	@:overload public function new(attrs : java.NativeArray<javax.swing.text.AttributeSet>) : Void;
	
	/**
	* Creates an empty <code>MuxingAttributeSet</code>. This is intended for
	* use by subclasses only, and it is also intended that subclasses will
	* set the constituent <code>AttributeSet</code>s before invoking any
	* of the <code>AttributeSet</code> methods.
	*/
	@:overload private function new() : Void;
	
	/**
	* Directly sets the <code>AttributeSet</code>s that comprise this
	* <code>MuxingAttributeSet</code>.
	*/
	@:overload @:synchronized private function setAttributes(attrs : java.NativeArray<javax.swing.text.AttributeSet>) : Void;
	
	/**
	* Returns the <code>AttributeSet</code>s multiplexing too. When the
	* <code>AttributeSet</code>s need to be referenced, this should be called.
	*/
	@:overload @:synchronized private function getAttributes() : java.NativeArray<javax.swing.text.AttributeSet>;
	
	/**
	* Inserts <code>as</code> at <code>index</code>. This assumes
	* the value of <code>index</code> is between 0 and attrs.length,
	* inclusive.
	*/
	@:overload @:synchronized private function insertAttributeSetAt(as : javax.swing.text.AttributeSet, index : Int) : Void;
	
	/**
	* Removes the AttributeSet at <code>index</code>. This assumes
	* the value of <code>index</code> is greater than or equal to 0,
	* and less than attrs.length.
	*/
	@:overload @:synchronized private function removeAttributeSetAt(index : Int) : Void;
	
	/**
	* Gets the number of attributes that are defined.
	*
	* @return the number of attributes
	* @see AttributeSet#getAttributeCount
	*/
	@:overload public function getAttributeCount() : Int;
	
	/**
	* Checks whether a given attribute is defined.
	* This will convert the key over to CSS if the
	* key is a StyleConstants key that has a CSS
	* mapping.
	*
	* @param key the attribute key
	* @return true if the attribute is defined
	* @see AttributeSet#isDefined
	*/
	@:overload public function isDefined(key : Dynamic) : Bool;
	
	/**
	* Checks whether two attribute sets are equal.
	*
	* @param attr the attribute set to check against
	* @return true if the same
	* @see AttributeSet#isEqual
	*/
	@:overload public function isEqual(attr : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Copies a set of attributes.
	*
	* @return the copy
	* @see AttributeSet#copyAttributes
	*/
	@:overload public function copyAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Gets the value of an attribute.  If the requested
	* attribute is a StyleConstants attribute that has
	* a CSS mapping, the request will be converted.
	*
	* @param key the attribute name
	* @return the attribute value
	* @see AttributeSet#getAttribute
	*/
	@:overload public function getAttribute(key : Dynamic) : Dynamic;
	
	/**
	* Gets the names of all attributes.
	*
	* @return the attribute names
	* @see AttributeSet#getAttributeNames
	*/
	@:overload public function getAttributeNames() : java.util.Enumeration<Dynamic>;
	
	/**
	* Checks whether a given attribute name/value is defined.
	*
	* @param name the attribute name
	* @param value the attribute value
	* @return true if the name/value is defined
	* @see AttributeSet#containsAttribute
	*/
	@:overload public function containsAttribute(name : Dynamic, value : Dynamic) : Bool;
	
	/**
	* Checks whether the attribute set contains all of
	* the given attributes.
	*
	* @param attrs the attributes to check
	* @return true if the element contains all the attributes
	* @see AttributeSet#containsAttributes
	*/
	@:overload public function containsAttributes(attrs : javax.swing.text.AttributeSet) : Bool;
	
	/**
	* Returns null, subclasses may wish to do something more
	* intelligent with this.
	*/
	@:overload public function getResolveParent() : javax.swing.text.AttributeSet;
	
	
}
/**
* An Enumeration of the Attribute names in a MuxingAttributeSet.
* This may return the same name more than once.
*/
@:native('javax$swing$text$html$MuxingAttributeSet$MuxingAttributeNameEnumeration') @:internal extern class MuxingAttributeSet_MuxingAttributeNameEnumeration implements java.util.Enumeration<Dynamic>
{
	@:overload public function hasMoreElements() : Bool;
	
	@:overload public function nextElement() : Dynamic;
	
	
}
