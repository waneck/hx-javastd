package java.text;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AttributedString
{
	/**
	* Constructs an AttributedString instance with the given text.
	* @param text The text for this attributed string.
	* @exception NullPointerException if <code>text</code> is null.
	*/
	@:overload @:public public function new(text : String) : Void;
	
	/**
	* Constructs an AttributedString instance with the given text and attributes.
	* @param text The text for this attributed string.
	* @param attributes The attributes that apply to the entire string.
	* @exception NullPointerException if <code>text</code> or
	*            <code>attributes</code> is null.
	* @exception IllegalArgumentException if the text has length 0
	* and the attributes parameter is not an empty Map (attributes
	* cannot be applied to a 0-length range).
	*/
	@:overload @:public public function new(text : String, attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>) : Void;
	
	/**
	* Constructs an AttributedString instance with the given attributed
	* text represented by AttributedCharacterIterator.
	* @param text The text for this attributed string.
	* @exception NullPointerException if <code>text</code> is null.
	*/
	@:overload @:public public function new(text : java.text.AttributedCharacterIterator) : Void;
	
	/**
	* Constructs an AttributedString instance with the subrange of
	* the given attributed text represented by
	* AttributedCharacterIterator. If the given range produces an
	* empty text, all attributes will be discarded.  Note that any
	* attributes wrapped by an Annotation object are discarded for a
	* subrange of the original attribute range.
	*
	* @param text The text for this attributed string.
	* @param beginIndex Index of the first character of the range.
	* @param endIndex Index of the character following the last character
	* of the range.
	* @exception NullPointerException if <code>text</code> is null.
	* @exception IllegalArgumentException if the subrange given by
	* beginIndex and endIndex is out of the text range.
	* @see java.text.Annotation
	*/
	@:overload @:public public function new(text : java.text.AttributedCharacterIterator, beginIndex : Int, endIndex : Int) : Void;
	
	/**
	* Constructs an AttributedString instance with the subrange of
	* the given attributed text represented by
	* AttributedCharacterIterator.  Only attributes that match the
	* given attributes will be incorporated into the instance. If the
	* given range produces an empty text, all attributes will be
	* discarded. Note that any attributes wrapped by an Annotation
	* object are discarded for a subrange of the original attribute
	* range.
	*
	* @param text The text for this attributed string.
	* @param beginIndex Index of the first character of the range.
	* @param endIndex Index of the character following the last character
	* of the range.
	* @param attributes Specifies attributes to be extracted
	* from the text. If null is specified, all available attributes will
	* be used.
	* @exception NullPointerException if <code>text</code> is null.
	* @exception IllegalArgumentException if the subrange given by
	* beginIndex and endIndex is out of the text range.
	* @see java.text.Annotation
	*/
	@:overload @:public public function new(text : java.text.AttributedCharacterIterator, beginIndex : Int, endIndex : Int, attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Void;
	
	/**
	* Adds an attribute to the entire string.
	* @param attribute the attribute key
	* @param value the value of the attribute; may be null
	* @exception NullPointerException if <code>attribute</code> is null.
	* @exception IllegalArgumentException if the AttributedString has length 0
	* (attributes cannot be applied to a 0-length range).
	*/
	@:overload @:public public function addAttribute(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, value : Dynamic) : Void;
	
	/**
	* Adds an attribute to a subrange of the string.
	* @param attribute the attribute key
	* @param value The value of the attribute. May be null.
	* @param beginIndex Index of the first character of the range.
	* @param endIndex Index of the character following the last character of the range.
	* @exception NullPointerException if <code>attribute</code> is null.
	* @exception IllegalArgumentException if beginIndex is less then 0, endIndex is
	* greater than the length of the string, or beginIndex and endIndex together don't
	* define a non-empty subrange of the string.
	*/
	@:overload @:public public function addAttribute(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, value : Dynamic, beginIndex : Int, endIndex : Int) : Void;
	
	/**
	* Adds a set of attributes to a subrange of the string.
	* @param attributes The attributes to be added to the string.
	* @param beginIndex Index of the first character of the range.
	* @param endIndex Index of the character following the last
	* character of the range.
	* @exception NullPointerException if <code>attributes</code> is null.
	* @exception IllegalArgumentException if beginIndex is less then
	* 0, endIndex is greater than the length of the string, or
	* beginIndex and endIndex together don't define a non-empty
	* subrange of the string and the attributes parameter is not an
	* empty Map.
	*/
	@:overload @:public public function addAttributes(attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, beginIndex : Int, endIndex : Int) : Void;
	
	/**
	* Creates an AttributedCharacterIterator instance that provides access to the entire contents of
	* this string.
	*
	* @return An iterator providing access to the text and its attributes.
	*/
	@:overload @:public public function getIterator() : java.text.AttributedCharacterIterator;
	
	/**
	* Creates an AttributedCharacterIterator instance that provides access to
	* selected contents of this string.
	* Information about attributes not listed in attributes that the
	* implementor may have need not be made accessible through the iterator.
	* If the list is null, all available attribute information should be made
	* accessible.
	*
	* @param attributes a list of attributes that the client is interested in
	* @return an iterator providing access to the entire text and its selected attributes
	*/
	@:overload @:public public function getIterator(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : java.text.AttributedCharacterIterator;
	
	/**
	* Creates an AttributedCharacterIterator instance that provides access to
	* selected contents of this string.
	* Information about attributes not listed in attributes that the
	* implementor may have need not be made accessible through the iterator.
	* If the list is null, all available attribute information should be made
	* accessible.
	*
	* @param attributes a list of attributes that the client is interested in
	* @param beginIndex the index of the first character
	* @param endIndex the index of the character following the last character
	* @return an iterator providing access to the text and its attributes
	* @exception IllegalArgumentException if beginIndex is less then 0,
	* endIndex is greater than the length of the string, or beginIndex is
	* greater than endIndex.
	*/
	@:overload @:public public function getIterator(attributes : java.NativeArray<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>, beginIndex : Int, endIndex : Int) : java.text.AttributedCharacterIterator;
	
	
}
@:native('java$text$AttributedString$AttributedStringIterator') @:internal extern class AttributedString_AttributedStringIterator implements java.text.AttributedCharacterIterator
{
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function clone() : Dynamic;
	
	@:overload @:public public function first() : java.StdTypes.Char16;
	
	@:overload @:public public function last() : java.StdTypes.Char16;
	
	@:overload @:public public function current() : java.StdTypes.Char16;
	
	@:overload @:public public function next() : java.StdTypes.Char16;
	
	@:overload @:public public function previous() : java.StdTypes.Char16;
	
	@:overload @:public public function setIndex(position : Int) : java.StdTypes.Char16;
	
	@:overload @:public public function getBeginIndex() : Int;
	
	@:overload @:public public function getEndIndex() : Int;
	
	@:overload @:public public function getIndex() : Int;
	
	@:overload @:public public function getRunStart() : Int;
	
	@:overload @:public public function getRunStart(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	@:overload @:public public function getRunStart(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	@:overload @:public public function getRunLimit() : Int;
	
	@:overload @:public public function getRunLimit(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	@:overload @:public public function getRunLimit(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	@:overload @:public public function getAttributes() : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>;
	
	@:overload @:public public function getAllAttributeKeys() : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>;
	
	@:overload @:public public function getAttribute(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Dynamic;
	
	
}
@:native('java$text$AttributedString$AttributeMap') @:internal extern class AttributedString_AttributeMap extends java.util.AbstractMap<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>
{
	@:overload @:public override public function entrySet() : java.util.Set<Dynamic>;
	
	@:overload @:public override public function get(key : Dynamic) : Dynamic;
	
	
}
@:internal extern class AttributeEntry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	@:overload @:public public function getKey() : Dynamic;
	
	@:overload @:public public function getValue() : Dynamic;
	
	@:overload @:public public function setValue(newValue : Dynamic) : Dynamic;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	
}
