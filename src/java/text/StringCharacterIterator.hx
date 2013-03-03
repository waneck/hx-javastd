package java.text;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
* <code>StringCharacterIterator</code> implements the
* <code>CharacterIterator</code> protocol for a <code>String</code>.
* The <code>StringCharacterIterator</code> class iterates over the
* entire <code>String</code>.
*
* @see CharacterIterator
*/
extern class StringCharacterIterator implements java.text.CharacterIterator
{
	/**
	* Constructs an iterator with an initial index of 0.
	*/
	@:overload @:public public function new(text : String) : Void;
	
	/**
	* Constructs an iterator with the specified initial index.
	*
	* @param  text   The String to be iterated over
	* @param  pos    Initial iterator position
	*/
	@:overload @:public public function new(text : String, pos : Int) : Void;
	
	/**
	* Constructs an iterator over the given range of the given string, with the
	* index set at the specified position.
	*
	* @param  text   The String to be iterated over
	* @param  begin  Index of the first character
	* @param  end    Index of the character following the last character
	* @param  pos    Initial iterator position
	*/
	@:overload @:public public function new(text : String, begin : Int, end : Int, pos : Int) : Void;
	
	/**
	* Reset this iterator to point to a new string.  This package-visible
	* method is used by other java.text classes that want to avoid allocating
	* new StringCharacterIterator objects every time their setText method
	* is called.
	*
	* @param  text   The String to be iterated over
	* @since 1.2
	*/
	@:require(java2) @:overload @:public public function setText(text : String) : Void;
	
	/**
	* Implements CharacterIterator.first() for String.
	* @see CharacterIterator#first
	*/
	@:overload @:public public function first() : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.last() for String.
	* @see CharacterIterator#last
	*/
	@:overload @:public public function last() : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.setIndex() for String.
	* @see CharacterIterator#setIndex
	*/
	@:overload @:public public function setIndex(p : Int) : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.current() for String.
	* @see CharacterIterator#current
	*/
	@:overload @:public public function current() : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.next() for String.
	* @see CharacterIterator#next
	*/
	@:overload @:public public function next() : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.previous() for String.
	* @see CharacterIterator#previous
	*/
	@:overload @:public public function previous() : java.StdTypes.Char16;
	
	/**
	* Implements CharacterIterator.getBeginIndex() for String.
	* @see CharacterIterator#getBeginIndex
	*/
	@:overload @:public public function getBeginIndex() : Int;
	
	/**
	* Implements CharacterIterator.getEndIndex() for String.
	* @see CharacterIterator#getEndIndex
	*/
	@:overload @:public public function getEndIndex() : Int;
	
	/**
	* Implements CharacterIterator.getIndex() for String.
	* @see CharacterIterator#getIndex
	*/
	@:overload @:public public function getIndex() : Int;
	
	/**
	* Compares the equality of two StringCharacterIterator objects.
	* @param obj the StringCharacterIterator object to be compared with.
	* @return true if the given obj is the same as this
	* StringCharacterIterator object; false otherwise.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Computes a hashcode for this iterator.
	* @return A hash code
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Creates a copy of this iterator.
	* @return A copy of this
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
