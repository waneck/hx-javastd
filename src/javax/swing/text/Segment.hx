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
extern class Segment implements java.lang.Cloneable implements java.text.CharacterIterator implements java.lang.CharSequence
{
	/**
	* This is the array containing the text of
	* interest.  This array should never be modified;
	* it is available only for efficiency.
	*/
	public var array : java.NativeArray<java.StdTypes.Char16>;
	
	/**
	* This is the offset into the array that
	* the desired text begins.
	*/
	public var offset : Int;
	
	/**
	* This is the number of array elements that
	* make up the text of interest.
	*/
	public var count : Int;
	
	/**
	* Creates a new segment.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new segment referring to an existing array.
	*
	* @param array the array to refer to
	* @param offset the offset into the array
	* @param count the number of characters
	*/
	@:overload public function new(array : java.NativeArray<java.StdTypes.Char16>, offset : Int, count : Int) : Void;
	
	/**
	* Flag to indicate that partial returns are valid.  If the flag is true,
	* an implementation of the interface method Document.getText(position,length,Segment)
	* should return as much text as possible without making a copy.  The default
	* state of the flag is false which will cause Document.getText(position,length,Segment)
	* to provide the same return behavior it always had, which may or may not
	* make a copy of the text depending upon the request.
	*
	* @param p whether or not partial returns are valid.
	* @since 1.4
	*/
	@:require(java4) @:overload public function setPartialReturn(p : Bool) : Void;
	
	/**
	* Flag to indicate that partial returns are valid.
	*
	* @return whether or not partial returns are valid.
	* @since 1.4
	*/
	@:require(java4) @:overload public function isPartialReturn() : Bool;
	
	/**
	* Converts a segment into a String.
	*
	* @return the string
	*/
	@:overload public function toString() : String;
	
	/**
	* Sets the position to getBeginIndex() and returns the character at that
	* position.
	* @return the first character in the text, or DONE if the text is empty
	* @see #getBeginIndex
	* @since 1.3
	*/
	@:require(java3) @:overload public function first() : java.StdTypes.Char16;
	
	/**
	* Sets the position to getEndIndex()-1 (getEndIndex() if the text is empty)
	* and returns the character at that position.
	* @return the last character in the text, or DONE if the text is empty
	* @see #getEndIndex
	* @since 1.3
	*/
	@:require(java3) @:overload public function last() : java.StdTypes.Char16;
	
	/**
	* Gets the character at the current position (as returned by getIndex()).
	* @return the character at the current position or DONE if the current
	* position is off the end of the text.
	* @see #getIndex
	* @since 1.3
	*/
	@:require(java3) @:overload public function current() : java.StdTypes.Char16;
	
	/**
	* Increments the iterator's index by one and returns the character
	* at the new index.  If the resulting index is greater or equal
	* to getEndIndex(), the current index is reset to getEndIndex() and
	* a value of DONE is returned.
	* @return the character at the new position or DONE if the new
	* position is off the end of the text range.
	* @since 1.3
	*/
	@:require(java3) @:overload public function next() : java.StdTypes.Char16;
	
	/**
	* Decrements the iterator's index by one and returns the character
	* at the new index. If the current index is getBeginIndex(), the index
	* remains at getBeginIndex() and a value of DONE is returned.
	* @return the character at the new position or DONE if the current
	* position is equal to getBeginIndex().
	* @since 1.3
	*/
	@:require(java3) @:overload public function previous() : java.StdTypes.Char16;
	
	/**
	* Sets the position to the specified position in the text and returns that
	* character.
	* @param position the position within the text.  Valid values range from
	* getBeginIndex() to getEndIndex().  An IllegalArgumentException is thrown
	* if an invalid value is supplied.
	* @return the character at the specified position or DONE if the specified position is equal to getEndIndex()
	* @since 1.3
	*/
	@:require(java3) @:overload public function setIndex(position : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the start index of the text.
	* @return the index at which the text begins.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getBeginIndex() : Int;
	
	/**
	* Returns the end index of the text.  This index is the index of the first
	* character following the end of the text.
	* @return the index after the last character in the text
	* @since 1.3
	*/
	@:require(java3) @:overload public function getEndIndex() : Int;
	
	/**
	* Returns the current index.
	* @return the current index.
	* @since 1.3
	*/
	@:require(java3) @:overload public function getIndex() : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function length() : Int;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* Creates a shallow copy.
	*
	* @return the copy
	*/
	@:overload public function clone() : Dynamic;
	
	
}
