package java.awt.font;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class CharArrayIterator implements java.text.CharacterIterator
{
	/**
	* Sets the position to getBeginIndex() and returns the character at that
	* position.
	* @return the first character in the text, or DONE if the text is empty
	* @see getBeginIndex
	*/
	@:overload @:public public function first() : java.StdTypes.Char16;
	
	/**
	* Sets the position to getEndIndex()-1 (getEndIndex() if the text is empty)
	* and returns the character at that position.
	* @return the last character in the text, or DONE if the text is empty
	* @see getEndIndex
	*/
	@:overload @:public public function last() : java.StdTypes.Char16;
	
	/**
	* Gets the character at the current position (as returned by getIndex()).
	* @return the character at the current position or DONE if the current
	* position is off the end of the text.
	* @see getIndex
	*/
	@:overload @:public public function current() : java.StdTypes.Char16;
	
	/**
	* Increments the iterator's index by one and returns the character
	* at the new index.  If the resulting index is greater or equal
	* to getEndIndex(), the current index is reset to getEndIndex() and
	* a value of DONE is returned.
	* @return the character at the new position or DONE if the new
	* position is off the end of the text range.
	*/
	@:overload @:public public function next() : java.StdTypes.Char16;
	
	/**
	* Decrements the iterator's index by one and returns the character
	* at the new index. If the current index is getBeginIndex(), the index
	* remains at getBeginIndex() and a value of DONE is returned.
	* @return the character at the new position or DONE if the current
	* position is equal to getBeginIndex().
	*/
	@:overload @:public public function previous() : java.StdTypes.Char16;
	
	/**
	* Sets the position to the specified position in the text and returns that
	* character.
	* @param position the position within the text.  Valid values range from
	* getBeginIndex() to getEndIndex().  An IllegalArgumentException is thrown
	* if an invalid value is supplied.
	* @return the character at the specified position or DONE if the specified position is equal to getEndIndex()
	*/
	@:overload @:public public function setIndex(position : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the start index of the text.
	* @return the index at which the text begins.
	*/
	@:overload @:public public function getBeginIndex() : Int;
	
	/**
	* Returns the end index of the text.  This index is the index of the first
	* character following the end of the text.
	* @return the index after the last character in the text
	*/
	@:overload @:public public function getEndIndex() : Int;
	
	/**
	* Returns the current index.
	* @return the current index.
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	* Create a copy of this iterator
	* @return A copy of this
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
