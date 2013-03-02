package sun.text.normalizer;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class UCharacterIterator implements java.lang.Cloneable
{
	/**
	* Protected default constructor for the subclasses
	* @stable ICU 2.4
	*/
	@:overload private function new() : Void;
	
	/**
	* Indicator that we have reached the ends of the UTF16 text.
	* Moved from UForwardCharacterIterator.java
	* @stable ICU 2.4
	*/
	public static var DONE(default, null) : Int;
	
	/**
	* Returns a <code>UCharacterIterator</code> object given a
	* source string.
	* @param source a string
	* @return UCharacterIterator object
	* @exception IllegalArgumentException if the argument is null
	* @stable ICU 2.4
	*/
	@:overload @:final public static function getInstance(source : String) : sun.text.normalizer.UCharacterIterator;
	
	/**
	* Returns a <code>UCharacterIterator</code> object given a
	* source StringBuffer.
	* @param source an string buffer of UTF-16 code units
	* @return UCharacterIterator object
	* @exception IllegalArgumentException if the argument is null
	* @stable ICU 2.4
	*/
	@:overload @:final public static function getInstance(source : java.lang.StringBuffer) : sun.text.normalizer.UCharacterIterator;
	
	/**
	* Returns a <code>UCharacterIterator</code> object given a
	* CharacterIterator.
	* @param source a valid CharacterIterator object.
	* @return UCharacterIterator object
	* @exception IllegalArgumentException if the argument is null
	* @stable ICU 2.4
	*/
	@:overload @:final public static function getInstance(source : java.text.CharacterIterator) : sun.text.normalizer.UCharacterIterator;
	
	/**
	* Returns the code unit at the current index.  If index is out
	* of range, returns DONE.  Index is not changed.
	* @return current code unit
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function current() : Int;
	
	/**
	* Returns the length of the text
	* @return length of the text
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function getLength() : Int;
	
	/**
	* Gets the current index in text.
	* @return current index in text.
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function getIndex() : Int;
	
	/**
	* Returns the UTF16 code unit at index, and increments to the next
	* code unit (post-increment semantics).  If index is out of
	* range, DONE is returned, and the iterator is reset to the limit
	* of the text.
	* @return the next UTF16 code unit, or DONE if the index is at the limit
	*         of the text.
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function next() : Int;
	
	/**
	* Returns the code point at index, and increments to the next code
	* point (post-increment semantics).  If index does not point to a
	* valid surrogate pair, the behavior is the same as
	* <code>next()</code>.  Otherwise the iterator is incremented past
	* the surrogate pair, and the code point represented by the pair
	* is returned.
	* @return the next codepoint in text, or DONE if the index is at
	*         the limit of the text.
	* @stable ICU 2.4
	*/
	@:overload public function nextCodePoint() : Int;
	
	/**
	* Decrement to the position of the previous code unit in the
	* text, and return it (pre-decrement semantics).  If the
	* resulting index is less than 0, the index is reset to 0 and
	* DONE is returned.
	* @return the previous code unit in the text, or DONE if the new
	*         index is before the start of the text.
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function previous() : Int;
	
	/**
	* Sets the index to the specified index in the text.
	* @param index the index within the text.
	* @exception IndexOutOfBoundsException is thrown if an invalid index is
	*            supplied
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function setIndex(index : Int) : Void;
	
	/**
	* Fills the buffer with the underlying text storage of the iterator
	* If the buffer capacity is not enough a exception is thrown. The capacity
	* of the fill in buffer should at least be equal to length of text in the
	* iterator obtained by calling <code>getLength()</code>.
	* <b>Usage:</b>
	*
	* <code>
	* <pre>
	*         UChacterIterator iter = new UCharacterIterator.getInstance(text);
	*         char[] buf = new char[iter.getLength()];
	*         iter.getText(buf);
	*
	*         OR
	*         char[] buf= new char[1];
	*         int len = 0;
	*         for(;;){
	*             try{
	*                 len = iter.getText(buf);
	*                 break;
	*             }catch(IndexOutOfBoundsException e){
	*                 buf = new char[iter.getLength()];
	*             }
	*         }
	* </pre>
	* </code>
	*
	* @param fillIn an array of chars to fill with the underlying UTF-16 code
	*         units.
	* @param offset the position within the array to start putting the data.
	* @return the number of code units added to fillIn, as a convenience
	* @exception IndexOutOfBounds exception if there is not enough
	*            room after offset in the array, or if offset < 0.
	* @stable ICU 2.4
	*/
	@:overload @:abstract public function getText(fillIn : java.NativeArray<java.StdTypes.Char16>, offset : Int) : Int;
	
	/**
	* Convenience override for <code>getText(char[], int)</code> that provides
	* an offset of 0.
	* @param fillIn an array of chars to fill with the underlying UTF-16 code
	*         units.
	* @return the number of code units added to fillIn, as a convenience
	* @exception IndexOutOfBounds exception if there is not enough
	*            room in the array.
	* @stable ICU 2.4
	*/
	@:overload @:final public function getText(fillIn : java.NativeArray<java.StdTypes.Char16>) : Int;
	
	/**
	* Convenience method for returning the underlying text storage as as string
	* @return the underlying text storage in the iterator as a string
	* @stable ICU 2.4
	*/
	@:overload public function getText() : String;
	
	/**
	* Moves the current position by the number of code units
	* specified, either forward or backward depending on the sign
	* of delta (positive or negative respectively).  If the resulting
	* index would be less than zero, the index is set to zero, and if
	* the resulting index would be greater than limit, the index is
	* set to limit.
	*
	* @param delta the number of code units to move the current
	*              index.
	* @return the new index.
	* @exception IndexOutOfBoundsException is thrown if an invalid index is
	*            supplied
	* @stable ICU 2.4
	*
	*/
	@:overload public function moveIndex(delta : Int) : Int;
	
	/**
	* Creates a copy of this iterator, independent from other iterators.
	* If it is not possible to clone the iterator, returns null.
	* @return copy of this iterator
	* @stable ICU 2.4
	*/
	@:overload public function clone() : Dynamic;
	
	
}
