package java.text;
/*
* Copyright (c) 2000, 2009, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1999-2003 - All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by IBM. These materials are provided
* under terms of a License Agreement between IBM and Sun.
* This technology is protected by multiple US and International
* patents. This notice and attribution to IBM may not be removed.
*/
extern class Bidi
{
	/** Constant indicating base direction is left-to-right. */
	public static var DIRECTION_LEFT_TO_RIGHT(default, null) : Int;
	
	/** Constant indicating base direction is right-to-left. */
	public static var DIRECTION_RIGHT_TO_LEFT(default, null) : Int;
	
	/**
	* Constant indicating that the base direction depends on the first strong
	* directional character in the text according to the Unicode
	* Bidirectional Algorithm.  If no strong directional character is present,
	* the base direction is left-to-right.
	*/
	public static var DIRECTION_DEFAULT_LEFT_TO_RIGHT(default, null) : Int;
	
	/**
	* Constant indicating that the base direction depends on the first strong
	* directional character in the text according to the Unicode
	* Bidirectional Algorithm.  If no strong directional character is present,
	* the base direction is right-to-left.
	*/
	public static var DIRECTION_DEFAULT_RIGHT_TO_LEFT(default, null) : Int;
	
	/**
	* Create Bidi from the given paragraph of text and base direction.
	* @param paragraph a paragraph of text
	* @param flags a collection of flags that control the algorithm.  The
	* algorithm understands the flags DIRECTION_LEFT_TO_RIGHT, DIRECTION_RIGHT_TO_LEFT,
	* DIRECTION_DEFAULT_LEFT_TO_RIGHT, and DIRECTION_DEFAULT_RIGHT_TO_LEFT.
	* Other values are reserved.
	*/
	@:overload public function new(paragraph : String, flags : Int) : Void;
	
	/**
	* Create Bidi from the given paragraph of text.
	* <p>
	* The RUN_DIRECTION attribute in the text, if present, determines the base
	* direction (left-to-right or right-to-left).  If not present, the base
	* direction is computes using the Unicode Bidirectional Algorithm, defaulting to left-to-right
	* if there are no strong directional characters in the text.  This attribute, if
	* present, must be applied to all the text in the paragraph.
	* <p>
	* The BIDI_EMBEDDING attribute in the text, if present, represents embedding level
	* information.  Negative values from -1 to -62 indicate overrides at the absolute value
	* of the level.  Positive values from 1 to 62 indicate embeddings.  Where values are
	* zero or not defined, the base embedding level as determined by the base direction
	* is assumed.
	* <p>
	* The NUMERIC_SHAPING attribute in the text, if present, converts European digits to
	* other decimal digits before running the bidi algorithm.  This attribute, if present,
	* must be applied to all the text in the paragraph.
	*
	* @param paragraph a paragraph of text with optional character and paragraph attribute information
	*
	* @see java.awt.font.TextAttribute#BIDI_EMBEDDING
	* @see java.awt.font.TextAttribute#NUMERIC_SHAPING
	* @see java.awt.font.TextAttribute#RUN_DIRECTION
	*/
	@:overload public function new(paragraph : java.text.AttributedCharacterIterator) : Void;
	
	/**
	* Create Bidi from the given text, embedding, and direction information.
	* The embeddings array may be null.  If present, the values represent embedding level
	* information.  Negative values from -1 to -61 indicate overrides at the absolute value
	* of the level.  Positive values from 1 to 61 indicate embeddings.  Where values are
	* zero, the base embedding level as determined by the base direction is assumed.
	* @param text an array containing the paragraph of text to process.
	* @param textStart the index into the text array of the start of the paragraph.
	* @param embeddings an array containing embedding values for each character in the paragraph.
	* This can be null, in which case it is assumed that there is no external embedding information.
	* @param embStart the index into the embedding array of the start of the paragraph.
	* @param paragraphLength the length of the paragraph in the text and embeddings arrays.
	* @param flags a collection of flags that control the algorithm.  The
	* algorithm understands the flags DIRECTION_LEFT_TO_RIGHT, DIRECTION_RIGHT_TO_LEFT,
	* DIRECTION_DEFAULT_LEFT_TO_RIGHT, and DIRECTION_DEFAULT_RIGHT_TO_LEFT.
	* Other values are reserved.
	*/
	@:overload public function new(text : java.NativeArray<java.StdTypes.Char16>, textStart : Int, embeddings : java.NativeArray<java.StdTypes.Int8>, embStart : Int, paragraphLength : Int, flags : Int) : Void;
	
	/**
	* Create a Bidi object representing the bidi information on a line of text within
	* the paragraph represented by the current Bidi.  This call is not required if the
	* entire paragraph fits on one line.
	* @param lineStart the offset from the start of the paragraph to the start of the line.
	* @param lineLimit the offset from the start of the paragraph to the limit of the line.
	*/
	@:overload public function createLineBidi(lineStart : Int, lineLimit : Int) : Bidi;
	
	/**
	* Return true if the line is not left-to-right or right-to-left.  This means it either has mixed runs of left-to-right
	* and right-to-left text, or the base direction differs from the direction of the only run of text.
	* @return true if the line is not left-to-right or right-to-left.
	*/
	@:overload public function isMixed() : Bool;
	
	/**
	* Return true if the line is all left-to-right text and the base direction is left-to-right.
	* @return true if the line is all left-to-right text and the base direction is left-to-right
	*/
	@:overload public function isLeftToRight() : Bool;
	
	/**
	* Return true if the line is all right-to-left text, and the base direction is right-to-left.
	* @return true if the line is all right-to-left text, and the base direction is right-to-left
	*/
	@:overload public function isRightToLeft() : Bool;
	
	/**
	* Return the length of text in the line.
	* @return the length of text in the line
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Return true if the base direction is left-to-right.
	* @return true if the base direction is left-to-right
	*/
	@:overload public function baseIsLeftToRight() : Bool;
	
	/**
	* Return the base level (0 if left-to-right, 1 if right-to-left).
	* @return the base level
	*/
	@:overload public function getBaseLevel() : Int;
	
	/**
	* Return the resolved level of the character at offset.  If offset is <0 or >=
	* the length of the line, return the base direction level.
	* @param offset the index of the character for which to return the level
	* @return the resolved level of the character at offset
	*/
	@:overload public function getLevelAt(offset : Int) : Int;
	
	/**
	* Return the number of level runs.
	* @return the number of level runs
	*/
	@:overload public function getRunCount() : Int;
	
	/**
	* Return the level of the nth logical run in this line.
	* @param run the index of the run, between 0 and <code>getRunCount()</code>
	* @return the level of the run
	*/
	@:overload public function getRunLevel(run : Int) : Int;
	
	/**
	* Return the index of the character at the start of the nth logical run in this line, as
	* an offset from the start of the line.
	* @param run the index of the run, between 0 and <code>getRunCount()</code>
	* @return the start of the run
	*/
	@:overload public function getRunStart(run : Int) : Int;
	
	/**
	* Return the index of the character past the end of the nth logical run in this line, as
	* an offset from the start of the line.  For example, this will return the length
	* of the line for the last run on the line.
	* @param run the index of the run, between 0 and <code>getRunCount()</code>
	* @return limit the limit of the run
	*/
	@:overload public function getRunLimit(run : Int) : Int;
	
	/**
	* Return true if the specified text requires bidi analysis.  If this returns false,
	* the text will display left-to-right.  Clients can then avoid constructing a Bidi object.
	* Text in the Arabic Presentation Forms area of Unicode is presumed to already be shaped
	* and ordered for display, and so will not cause this function to return true.
	*
	* @param text the text containing the characters to test
	* @param start the start of the range of characters to test
	* @param limit the limit of the range of characters to test
	* @return true if the range of characters requires bidi analysis
	*/
	@:overload public static function requiresBidi(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Bool;
	
	/**
	* Reorder the objects in the array into visual order based on their levels.
	* This is a utility function to use when you have a collection of objects
	* representing runs of text in logical order, each run containing text
	* at a single level.  The elements at <code>index</code> from
	* <code>objectStart</code> up to <code>objectStart + count</code>
	* in the objects array will be reordered into visual order assuming
	* each run of text has the level indicated by the corresponding element
	* in the levels array (at <code>index - objectStart + levelStart</code>).
	*
	* @param levels an array representing the bidi level of each object
	* @param levelStart the start position in the levels array
	* @param objects the array of objects to be reordered into visual order
	* @param objectStart the start position in the objects array
	* @param count the number of objects to reorder
	*/
	@:overload public static function reorderVisually(levels : java.NativeArray<java.StdTypes.Int8>, levelStart : Int, objects : java.NativeArray<Dynamic>, objectStart : Int, count : Int) : Void;
	
	/**
	* Display the bidi internal state, used in debugging.
	*/
	@:overload public function toString() : String;
	
	
}
