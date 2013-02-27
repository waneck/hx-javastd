package java.text;
/*
* Copyright (c) 1999, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class RuleBasedBreakIterator extends java.text.BreakIterator
{
	/**
	* A token used as a character-category value to identify ignore characters
	*/
	private static var IGNORE(default, null) : java.StdTypes.Int8;
	
	/**
	* Constructs a RuleBasedBreakIterator according to the datafile
	* provided.
	*/
	@:overload public function new(datafile : String) : Void;
	
	/**
	* Read datafile. The datafile's format is as follows:
	* <pre>
	*   BreakIteratorData {
	*       u1           magic[7];
	*       u1           version;
	*       u4           totalDataSize;
	*       header_info  header;
	*       body         value;
	*   }
	* </pre>
	* <code>totalDataSize</code> is the summation of the size of
	* <code>header_info</code> and <code>body</code> in byte count.
	* <p>
	* In <code>header</code>, each field except for checksum implies the
	* length of each field. Since <code>BMPdataLength</code> is a fixed-length
	*  data(512 entries), its length isn't included in <code>header</code>.
	* <code>checksum</code> is a CRC32 value of all in <code>body</code>.
	* <pre>
	*   header_info {
	*       u4           stateTableLength;
	*       u4           backwardsStateTableLength;
	*       u4           endStatesLength;
	*       u4           lookaheadStatesLength;
	*       u4           BMPdataLength;
	*       u4           nonBMPdataLength;
	*       u4           additionalDataLength;
	*       u8           checksum;
	*   }
	* </pre>
	* <p>
	*
	* Finally, <code>BMPindices</code> and <code>BMPdata</code> are set to
	* <code>charCategoryTable</code>. <code>nonBMPdata</code> is set to
	* <code>supplementaryCharCategoryTable</code>.
	* <pre>
	*   body {
	*       u2           stateTable[stateTableLength];
	*       u2           backwardsStateTable[backwardsStateTableLength];
	*       u1           endStates[endStatesLength];
	*       u1           lookaheadStates[lookaheadStatesLength];
	*       u2           BMPindices[512];
	*       u1           BMPdata[BMPdataLength];
	*       u4           nonBMPdata[numNonBMPdataLength];
	*       u1           additionalData[additionalDataLength];
	*   }
	* </pre>
	*/
	@:overload private function readTables(datafile : String) : Void;
	
	@:overload private function readFile(datafile : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Clones this iterator.
	* @return A newly-constructed RuleBasedBreakIterator with the same
	* behavior as this one.
	*/
	@:overload override public function clone() : Dynamic;
	
	/**
	* Returns true if both BreakIterators are of the same class, have the same
	* rules, and iterate over the same text.
	*/
	@:overload public function equals(that : Dynamic) : Bool;
	
	/**
	* Returns text
	*/
	@:overload public function toString() : String;
	
	/**
	* Compute a hashcode for this BreakIterator
	* @return A hash code
	*/
	@:overload public function hashCode() : Int;
	
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
	* Advances the iterator either forward or backward the specified number of steps.
	* Negative values move backward, and positive values move forward.  This is
	* equivalent to repeatedly calling next() or previous().
	* @param n The number of steps to move.  The sign indicates the direction
	* (negative is backwards, and positive is forwards).
	* @return The character offset of the boundary position n boundaries away from
	* the current one.
	*/
	@:overload override public function next(n : Int) : Int;
	
	/**
	* Advances the iterator to the next boundary position.
	* @return The position of the first boundary after this one.
	*/
	@:overload override public function next() : Int;
	
	/**
	* Advances the iterator backwards, to the last boundary preceding this one.
	* @return The position of the last boundary position preceding this one.
	*/
	@:overload override public function previous() : Int;
	
	/**
	* Throw IllegalArgumentException unless begin <= offset < end.
	*/
	@:overload @:final private static function checkOffset(offset : Int, text : java.text.CharacterIterator) : Void;
	
	/**
	* Sets the iterator to refer to the first boundary position following
	* the specified position.
	* @offset The position from which to begin searching for a break position.
	* @return The position of the first break after the current position.
	*/
	@:overload override public function following(offset : Int) : Int;
	
	/**
	* Sets the iterator to refer to the last boundary position before the
	* specified position.
	* @offset The position to begin searching for a break from.
	* @return The position of the last boundary before the starting position.
	*/
	@:overload override public function preceding(offset : Int) : Int;
	
	/**
	* Returns true if the specfied position is a boundary position.  As a side
	* effect, leaves the iterator pointing to the first boundary position at
	* or after "offset".
	* @param offset the offset to check.
	* @return True if "offset" is a boundary position.
	*/
	@:overload override public function isBoundary(offset : Int) : Bool;
	
	/**
	* Returns the current iteration position.
	* @return The current iteration position.
	*/
	@:overload override public function current() : Int;
	
	/**
	* Return a CharacterIterator over the text being analyzed.  This version
	* of this method returns the actual CharacterIterator we're using internally.
	* Changing the state of this iterator can have undefined consequences.  If
	* you need to change it, clone it first.
	* @return An iterator over the text being analyzed.
	*/
	@:overload override public function getText() : java.text.CharacterIterator;
	
	/**
	* Set the iterator to analyze a new piece of text.  This function resets
	* the current iteration position to the beginning of the text.
	* @param newText An iterator over the text to analyze.
	*/
	@:overload override public function setText(newText : java.text.CharacterIterator) : Void;
	
	/**
	* This method is the actual implementation of the next() method.  All iteration
	* vectors through here.  This method initializes the state machine to state 1
	* and advances through the text character by character until we reach the end
	* of the text or the state machine transitions to state 0.  We update our return
	* value every time the state machine passes through a possible end state.
	*/
	@:overload private function handleNext() : Int;
	
	/**
	* This method backs the iterator back up to a "safe position" in the text.
	* This is a position that we know, without any context, must be a break position.
	* The various calling methods then iterate forward from this safe position to
	* the appropriate position to return.  (For more information, see the description
	* of buildBackwardsStateTable() in RuleBasedBreakIterator.Builder.)
	*/
	@:overload private function handlePrevious() : Int;
	
	/**
	* Looks up a character's category (i.e., its category for breaking purposes,
	* not its Unicode category)
	*/
	@:overload private function lookupCategory(c : Int) : Int;
	
	/**
	* Given a current state and a character category, looks up the
	* next state to transition to in the state table.
	*/
	@:overload private function lookupState(state : Int, category : Int) : Int;
	
	/**
	* Given a current state and a character category, looks up the
	* next state to transition to in the backwards state table.
	*/
	@:overload private function lookupBackwardState(state : Int, category : Int) : Int;
	
	
}
/*
* This class exists to work around a bug in incorrect implementations
* of CharacterIterator, which incorrectly handle setIndex(endIndex).
* This iterator relies only on base.setIndex(n) where n is less than
* endIndex.
*
* One caveat:  if the base iterator's begin and end indices change
* the change will not be reflected by this wrapper.  Does that matter?
*/
@:native('java$text$RuleBasedBreakIterator$SafeCharIterator') @:internal extern class RuleBasedBreakIterator_SafeCharIterator implements java.text.CharacterIterator implements java.lang.Cloneable
{
	@:overload public function first() : java.StdTypes.Char16;
	
	@:overload public function last() : java.StdTypes.Char16;
	
	@:overload public function current() : java.StdTypes.Char16;
	
	@:overload public function next() : java.StdTypes.Char16;
	
	@:overload public function previous() : java.StdTypes.Char16;
	
	@:overload public function setIndex(i : Int) : java.StdTypes.Char16;
	
	@:overload public function getBeginIndex() : Int;
	
	@:overload public function getEndIndex() : Int;
	
	@:overload public function getIndex() : Int;
	
	@:overload public function clone() : Dynamic;
	
	
}
