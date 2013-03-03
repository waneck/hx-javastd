package java.text;
/*
* Copyright (c) 1996, 2000, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
/**
* This interface defines a protocol for bidirectional iteration over text.
* The iterator iterates over a bounded sequence of characters.  Characters
* are indexed with values beginning with the value returned by getBeginIndex() and
* continuing through the value returned by getEndIndex()-1.
* <p>
* Iterators maintain a current character index, whose valid range is from
* getBeginIndex() to getEndIndex(); the value getEndIndex() is included to allow
* handling of zero-length text ranges and for historical reasons.
* The current index can be retrieved by calling getIndex() and set directly
* by calling setIndex(), first(), and last().
* <p>
* The methods previous() and next() are used for iteration. They return DONE if
* they would move outside the range from getBeginIndex() to getEndIndex() -1,
* signaling that the iterator has reached the end of the sequence. DONE is
* also returned by other methods to indicate that the current index is
* outside this range.
*
* <P>Examples:<P>
*
* Traverse the text from start to finish
* <pre>
* public void traverseForward(CharacterIterator iter) {
*     for(char c = iter.first(); c != CharacterIterator.DONE; c = iter.next()) {
*         processChar(c);
*     }
* }
* </pre>
*
* Traverse the text backwards, from end to start
* <pre>
* public void traverseBackward(CharacterIterator iter) {
*     for(char c = iter.last(); c != CharacterIterator.DONE; c = iter.previous()) {
*         processChar(c);
*     }
* }
* </pre>
*
* Traverse both forward and backward from a given position in the text.
* Calls to notBoundary() in this example represents some
* additional stopping criteria.
* <pre>
* public void traverseOut(CharacterIterator iter, int pos) {
*     for (char c = iter.setIndex(pos);
*              c != CharacterIterator.DONE && notBoundary(c);
*              c = iter.next()) {
*     }
*     int end = iter.getIndex();
*     for (char c = iter.setIndex(pos);
*             c != CharacterIterator.DONE && notBoundary(c);
*             c = iter.previous()) {
*     }
*     int start = iter.getIndex();
*     processSection(start, end);
* }
* </pre>
*
* @see StringCharacterIterator
* @see AttributedCharacterIterator
*/
extern interface CharacterIterator extends java.lang.Cloneable
{
	/**
	* Sets the position to getBeginIndex() and returns the character at that
	* position.
	* @return the first character in the text, or DONE if the text is empty
	* @see #getBeginIndex()
	*/
	@:overload @:public public function first() : java.StdTypes.Char16;
	
	/**
	* Sets the position to getEndIndex()-1 (getEndIndex() if the text is empty)
	* and returns the character at that position.
	* @return the last character in the text, or DONE if the text is empty
	* @see #getEndIndex()
	*/
	@:overload @:public public function last() : java.StdTypes.Char16;
	
	/**
	* Gets the character at the current position (as returned by getIndex()).
	* @return the character at the current position or DONE if the current
	* position is off the end of the text.
	* @see #getIndex()
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
	
	
}
