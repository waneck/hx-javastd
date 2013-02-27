package java.text;
/*
* Copyright (c) 1996, 2010, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1996-1998 - All Rights Reserved
*
*   The original version of this source code and documentation is copyrighted
* and owned by Taligent, Inc., a wholly-owned subsidiary of IBM. These
* materials are provided under terms of a License Agreement between Taligent
* and Sun. This technology is protected by multiple US and International
* patents. This notice and attribution to Taligent may not be removed.
*   Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class CollationElementIterator
{
	/**
	* Null order which indicates the end of string is reached by the
	* cursor.
	*/
	public static var NULLORDER(default, null) : Int;
	
	/**
	* Resets the cursor to the beginning of the string.  The next call
	* to next() will return the first collation element in the string.
	*/
	@:overload public function reset() : Void;
	
	/**
	* Get the next collation element in the string.  <p>This iterator iterates
	* over a sequence of collation elements that were built from the string.
	* Because there isn't necessarily a one-to-one mapping from characters to
	* collation elements, this doesn't mean the same thing as "return the
	* collation element [or ordering priority] of the next character in the
	* string".</p>
	* <p>This function returns the collation element that the iterator is currently
	* pointing to and then updates the internal pointer to point to the next element.
	* previous() updates the pointer first and then returns the element.  This
	* means that when you change direction while iterating (i.e., call next() and
	* then call previous(), or call previous() and then call next()), you'll get
	* back the same element twice.</p>
	*/
	@:overload public function next() : Int;
	
	/**
	* Get the previous collation element in the string.  <p>This iterator iterates
	* over a sequence of collation elements that were built from the string.
	* Because there isn't necessarily a one-to-one mapping from characters to
	* collation elements, this doesn't mean the same thing as "return the
	* collation element [or ordering priority] of the previous character in the
	* string".</p>
	* <p>This function updates the iterator's internal pointer to point to the
	* collation element preceding the one it's currently pointing to and then
	* returns that element, while next() returns the current element and then
	* updates the pointer.  This means that when you change direction while
	* iterating (i.e., call next() and then call previous(), or call previous()
	* and then call next()), you'll get back the same element twice.</p>
	* @since 1.2
	*/
	@:require(java2) @:overload public function previous() : Int;
	
	/**
	* Return the primary component of a collation element.
	* @param order the collation element
	* @return the element's primary component
	*/
	@:overload @:final public static function primaryOrder(order : Int) : Int;
	
	/**
	* Return the secondary component of a collation element.
	* @param order the collation element
	* @return the element's secondary component
	*/
	@:overload @:final public static function secondaryOrder(order : Int) : java.StdTypes.Int16;
	
	/**
	* Return the tertiary component of a collation element.
	* @param order the collation element
	* @return the element's tertiary component
	*/
	@:overload @:final public static function tertiaryOrder(order : Int) : java.StdTypes.Int16;
	
	/**
	* Sets the iterator to point to the collation element corresponding to
	* the specified character (the parameter is a CHARACTER offset in the
	* original string, not an offset into its corresponding sequence of
	* collation elements).  The value returned by the next call to next()
	* will be the collation element corresponding to the specified position
	* in the text.  If that position is in the middle of a contracting
	* character sequence, the result of the next call to next() is the
	* collation element for that sequence.  This means that getOffset()
	* is not guaranteed to return the same value as was passed to a preceding
	* call to setOffset().
	*
	* @param newOffset The new character offset into the original text.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setOffset(newOffset : Int) : Void;
	
	/**
	* Returns the character offset in the original text corresponding to the next
	* collation element.  (That is, getOffset() returns the position in the text
	* corresponding to the collation element that will be returned by the next
	* call to next().)  This value will always be the index of the FIRST character
	* corresponding to the collation element (a contracting character sequence is
	* when two or more characters all correspond to the same collation element).
	* This means if you do setOffset(x) followed immediately by getOffset(), getOffset()
	* won't necessarily return x.
	*
	* @return The character offset in the original text corresponding to the collation
	* element that will be returned by the next call to next().
	* @since 1.2
	*/
	@:require(java2) @:overload public function getOffset() : Int;
	
	/**
	* Return the maximum length of any expansion sequences that end
	* with the specified comparison order.
	* @param order a collation order returned by previous or next.
	* @return the maximum length of any expansion sequences ending
	*         with the specified order.
	* @since 1.2
	*/
	@:require(java2) @:overload public function getMaxExpansion(order : Int) : Int;
	
	/**
	* Set a new string over which to iterate.
	*
	* @param source  the new source text
	* @since 1.2
	*/
	@:require(java2) @:overload public function setText(source : String) : Void;
	
	/**
	* Set a new string over which to iterate.
	*
	* @param source  the new source text.
	* @since 1.2
	*/
	@:require(java2) @:overload public function setText(source : java.text.CharacterIterator) : Void;
	
	
}
