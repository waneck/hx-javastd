package java.text;
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
extern interface AttributedCharacterIterator extends java.text.CharacterIterator
{
	/**
	* Returns the index of the first character of the run
	* with respect to all attributes containing the current character.
	*
	* <p>Any contiguous text segments having the same attributes (the
	* same set of attribute/value pairs) are treated as separate runs
	* if the attributes have been given to those text segments separately.
	*/
	@:overload public function getRunStart() : Int;
	
	/**
	* Returns the index of the first character of the run
	* with respect to the given {@code attribute} containing the current character.
	*/
	@:overload public function getRunStart(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	/**
	* Returns the index of the first character of the run
	* with respect to the given {@code attributes} containing the current character.
	*/
	@:overload public function getRunStart(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to all attributes containing the current character.
	*
	* <p>Any contiguous text segments having the same attributes (the
	* same set of attribute/value pairs) are treated as separate runs
	* if the attributes have been given to those text segments separately.
	*/
	@:overload public function getRunLimit() : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to the given {@code attribute} containing the current character.
	*/
	@:overload public function getRunLimit(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Int;
	
	/**
	* Returns the index of the first character following the run
	* with respect to the given {@code attributes} containing the current character.
	*/
	@:overload public function getRunLimit(attributes : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>) : Int;
	
	/**
	* Returns a map with the attributes defined on the current
	* character.
	*/
	@:overload public function getAttributes() : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>;
	
	/**
	* Returns the value of the named {@code attribute} for the current character.
	* Returns {@code null} if the {@code attribute} is not defined.
	*/
	@:overload public function getAttribute(attribute : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute) : Dynamic;
	
	/**
	* Returns the keys of all attributes defined on the
	* iterator's text range. The set is empty if no
	* attributes are defined.
	*/
	@:overload public function getAllAttributeKeys() : java.util.Set<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute>;
	
	
}
/**
* Defines attribute keys that are used to identify text attributes. These
* keys are used in {@code AttributedCharacterIterator} and {@code AttributedString}.
* @see AttributedCharacterIterator
* @see AttributedString
* @since 1.2
*/
@:require(java2) @:native('java$text$AttributedCharacterIterator$Attribute') extern class AttributedCharacterIterator_Attribute implements java.io.Serializable
{
	/**
	* Constructs an {@code Attribute} with the given name.
	*/
	@:overload private function new(name : String) : Void;
	
	/**
	* Compares two objects for equality. This version only returns true
	* for <code>x.equals(y)</code> if <code>x</code> and <code>y</code> refer
	* to the same object, and guarantees this for all subclasses.
	*/
	@:overload @:final public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns a hash code value for the object. This version is identical to
	* the one in {@code Object}, but is also final.
	*/
	@:overload @:final public function hashCode() : Int;
	
	/**
	* Returns a string representation of the object. This version returns the
	* concatenation of class name, {@code "("}, a name identifying the attribute
	* and {@code ")"}.
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the name of the attribute.
	*/
	@:overload private function getName() : String;
	
	/**
	* Resolves instances being deserialized to the predefined constants.
	*/
	@:overload private function readResolve() : Dynamic;
	
	/**
	* Attribute key for the language of some text.
	* <p> Values are instances of {@link java.util.Locale Locale}.
	* @see java.util.Locale
	*/
	public static var LANGUAGE(default, null) : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute;
	
	/**
	* Attribute key for the reading of some text. In languages where the written form
	* and the pronunciation of a word are only loosely related (such as Japanese),
	* it is often necessary to store the reading (pronunciation) along with the
	* written form.
	* <p>Values are instances of {@link Annotation} holding instances of {@link String}.
	* @see Annotation
	* @see java.lang.String
	*/
	public static var READING(default, null) : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute;
	
	/**
	* Attribute key for input method segments. Input methods often break
	* up text into segments, which usually correspond to words.
	* <p>Values are instances of {@link Annotation} holding a {@code null} reference.
	* @see Annotation
	*/
	public static var INPUT_METHOD_SEGMENT(default, null) : java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute;
	
	
}
