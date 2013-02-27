package java.text;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
*
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 2002 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*/
@:internal extern class DictionaryBasedBreakIterator extends java.text.RuleBasedBreakIterator
{
	/**
	* Constructs a DictionaryBasedBreakIterator.
	* @param description Same as the description parameter on RuleBasedBreakIterator,
	* except for the special meaning of "<dictionary>".  This parameter is just
	* passed through to RuleBasedBreakIterator's constructor.
	* @param dictionaryFilename The filename of the dictionary file to use
	*/
	@:overload public function new(dataFile : String, dictionaryFile : String) : Void;
	
	@:overload override public function setText(newText : java.text.CharacterIterator) : Void;
	
	/**
	* Sets the current iteration position to the beginning of the text.
	* (i.e., the CharacterIterator's starting offset).
	* @return The offset of the beginning of the text.
	*/
	@:overload override public function first() : Int;
	
	/**
	* Sets the current iteration position to the end of the text.
	* (i.e., the CharacterIterator's ending offset).
	* @return The text's past-the-end offset.
	*/
	@:overload override public function last() : Int;
	
	/**
	* Advances the iterator one step backwards.
	* @return The position of the last boundary position before the
	* current iteration position
	*/
	@:overload override public function previous() : Int;
	
	/**
	* Sets the current iteration position to the last boundary position
	* before the specified position.
	* @param offset The position to begin searching from
	* @return The position of the last boundary before "offset"
	*/
	@:overload override public function preceding(offset : Int) : Int;
	
	/**
	* Sets the current iteration position to the first boundary position after
	* the specified position.
	* @param offset The position to begin searching forward from
	* @return The position of the first boundary after "offset"
	*/
	@:overload override public function following(offset : Int) : Int;
	
	/**
	* This is the implementation function for next().
	*/
	@:overload override private function handleNext() : Int;
	
	/**
	* Looks up a character category for a character.
	*/
	@:overload override private function lookupCategory(c : Int) : Int;
	
	
}
