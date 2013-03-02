package sun.text.bidi;
/*
* Copyright (c) 2009, 2011, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
/* FOOD FOR THOUGHT: currently the reordering modes are a mixture of
* algorithm for direct BiDi, algorithm for inverse Bidi and the bizarre
* concept of RUNS_ONLY which is a double operation.
* It could be advantageous to divide this into 3 concepts:
* a) Operation: direct / inverse / RUNS_ONLY
* b) Direct algorithm: default / NUMBERS_SPECIAL / GROUP_NUMBERS_WITH_L
* c) Inverse algorithm: default / INVERSE_LIKE_DIRECT / NUMBERS_SPECIAL
* This would allow combinations not possible today like RUNS_ONLY with
* NUMBERS_SPECIAL.
* Also allow to set INSERT_MARKS for the direct step of RUNS_ONLY and
* REMOVE_CONTROLS for the inverse step.
* Not all combinations would be supported, and probably not all do make sense.
* This would need to document which ones are supported and what are the
* fallbacks for unsupported combinations.
*/
extern class BidiBase
{
	/** Paragraph level setting<p>
	*
	* Constant indicating that the base direction depends on the first strong
	* directional character in the text according to the Unicode Bidirectional
	* Algorithm. If no strong directional character is present,
	* then set the paragraph level to 0 (left-to-right).<p>
	*
	* If this value is used in conjunction with reordering modes
	* <code>REORDER_INVERSE_LIKE_DIRECT</code> or
	* <code>REORDER_INVERSE_FOR_NUMBERS_SPECIAL</code>, the text to reorder
	* is assumed to be visual LTR, and the text after reordering is required
	* to be the corresponding logical string with appropriate contextual
	* direction. The direction of the result string will be RTL if either
	* the righmost or leftmost strong character of the source text is RTL
	* or Arabic Letter, the direction will be LTR otherwise.<p>
	*
	* If reordering option <code>OPTION_INSERT_MARKS</code> is set, an RLM may
	* be added at the beginning of the result string to ensure round trip
	* (that the result string, when reordered back to visual, will produce
	* the original source text).
	* @see #REORDER_INVERSE_LIKE_DIRECT
	* @see #REORDER_INVERSE_FOR_NUMBERS_SPECIAL
	* @stable ICU 3.8
	*/
	public static var INTERNAL_LEVEL_DEFAULT_LTR(default, null) : java.StdTypes.Int8;
	
	/** Paragraph level setting<p>
	*
	* Constant indicating that the base direction depends on the first strong
	* directional character in the text according to the Unicode Bidirectional
	* Algorithm. If no strong directional character is present,
	* then set the paragraph level to 1 (right-to-left).<p>
	*
	* If this value is used in conjunction with reordering modes
	* <code>REORDER_INVERSE_LIKE_DIRECT</code> or
	* <code>REORDER_INVERSE_FOR_NUMBERS_SPECIAL</code>, the text to reorder
	* is assumed to be visual LTR, and the text after reordering is required
	* to be the corresponding logical string with appropriate contextual
	* direction. The direction of the result string will be RTL if either
	* the righmost or leftmost strong character of the source text is RTL
	* or Arabic Letter, or if the text contains no strong character;
	* the direction will be LTR otherwise.<p>
	*
	* If reordering option <code>OPTION_INSERT_MARKS</code> is set, an RLM may
	* be added at the beginning of the result string to ensure round trip
	* (that the result string, when reordered back to visual, will produce
	* the original source text).
	* @see #REORDER_INVERSE_LIKE_DIRECT
	* @see #REORDER_INVERSE_FOR_NUMBERS_SPECIAL
	* @stable ICU 3.8
	*/
	public static var INTERNAL_LEVEL_DEFAULT_RTL(default, null) : java.StdTypes.Int8;
	
	/**
	* Maximum explicit embedding level.
	* (The maximum resolved level can be up to <code>MAX_EXPLICIT_LEVEL+1</code>).
	* @stable ICU 3.8
	*/
	public static var MAX_EXPLICIT_LEVEL(default, null) : java.StdTypes.Int8;
	
	/**
	* Bit flag for level input.
	* Overrides directional properties.
	* @stable ICU 3.8
	*/
	public static var INTERNAL_LEVEL_OVERRIDE(default, null) : java.StdTypes.Int8;
	
	/**
	* Special value which can be returned by the mapping methods when a
	* logical index has no corresponding visual index or vice-versa. This may
	* happen for the logical-to-visual mapping of a Bidi control when option
	* <code>OPTION_REMOVE_CONTROLS</code> is
	* specified. This can also happen for the visual-to-logical mapping of a
	* Bidi mark (LRM or RLM) inserted by option
	* <code>OPTION_INSERT_MARKS</code>.
	* @see #getVisualIndex
	* @see #getVisualMap
	* @see #getLogicalIndex
	* @see #getLogicalMap
	* @see #OPTION_INSERT_MARKS
	* @see #OPTION_REMOVE_CONTROLS
	* @stable ICU 3.8
	*/
	public static var MAP_NOWHERE(default, null) : Int;
	
	/**
	* Mixed-directional text.
	* @stable ICU 3.8
	*/
	public static var MIXED(default, null) : java.StdTypes.Int8;
	
	/**
	* option bit for writeReordered():
	* replace characters with the "mirrored" property in RTL runs
	* by their mirror-image mappings
	*
	* @see #writeReordered
	* @stable ICU 3.8
	*/
	public static var DO_MIRRORING(default, null) : java.StdTypes.Int16;
	
	/* if the option OPTION_STREAMING is set, this is the length of
	* text actually processed by <code>setPara</code>, which may be shorter
	* than the original length. Otherwise, it is identical to the original
	* length.
	*/
	public var length : Int;
	
	@:overload public function verifyValidPara() : Void;
	
	@:overload public function verifyValidParaOrLine() : Void;
	
	@:overload public function verifyRange(index : Int, start : Int, limit : Int) : Void;
	
	@:overload public function verifyIndex(index : Int, start : Int, limit : Int) : Void;
	
	/**
	* Allocate a <code>Bidi</code> object with preallocated memory
	* for internal structures.
	* This method provides a <code>Bidi</code> object like the default constructor
	* but it also preallocates memory for internal structures
	* according to the sizings supplied by the caller.<p>
	* The preallocation can be limited to some of the internal memory
	* by setting some values to 0 here. That means that if, e.g.,
	* <code>maxRunCount</code> cannot be reasonably predetermined and should not
	* be set to <code>maxLength</code> (the only failproof value) to avoid
	* wasting  memory, then <code>maxRunCount</code> could be set to 0 here
	* and the internal structures that are associated with it will be allocated
	* on demand, just like with the default constructor.
	*
	* @param maxLength is the maximum text or line length that internal memory
	*        will be preallocated for. An attempt to associate this object with a
	*        longer text will fail, unless this value is 0, which leaves the allocation
	*        up to the implementation.
	*
	* @param maxRunCount is the maximum anticipated number of same-level runs
	*        that internal memory will be preallocated for. An attempt to access
	*        visual runs on an object that was not preallocated for as many runs
	*        as the text was actually resolved to will fail,
	*        unless this value is 0, which leaves the allocation up to the implementation.<br><br>
	*        The number of runs depends on the actual text and maybe anywhere between
	*        1 and <code>maxLength</code>. It is typically small.
	*
	* @throws IllegalArgumentException if maxLength or maxRunCount is less than 0
	* @stable ICU 3.8
	*/
	@:overload public function new(maxLength : Int, maxRunCount : Int) : Void;
	
	/**
	* Perform the Unicode Bidi algorithm. It is defined in the
	* <a href="http://www.unicode.org/unicode/reports/tr9/">Unicode Standard Annex #9</a>,
	* version 13,
	* also described in The Unicode Standard, Version 4.0 .<p>
	*
	* This method takes a piece of plain text containing one or more paragraphs,
	* with or without externally specified embedding levels from <i>styled</i>
	* text and computes the left-right-directionality of each character.<p>
	*
	* If the entire text is all of the same directionality, then
	* the method may not perform all the steps described by the algorithm,
	* i.e., some levels may not be the same as if all steps were performed.
	* This is not relevant for unidirectional text.<br>
	* For example, in pure LTR text with numbers the numbers would get
	* a resolved level of 2 higher than the surrounding text according to
	* the algorithm. This implementation may set all resolved levels to
	* the same value in such a case.<p>
	*
	* The text can be composed of multiple paragraphs. Occurrence of a block
	* separator in the text terminates a paragraph, and whatever comes next starts
	* a new paragraph. The exception to this rule is when a Carriage Return (CR)
	* is followed by a Line Feed (LF). Both CR and LF are block separators, but
	* in that case, the pair of characters is considered as terminating the
	* preceding paragraph, and a new paragraph will be started by a character
	* coming after the LF.
	*
	* The text is stored internally as an array of characters. Therefore the
	* documentation will refer to indexes of the characters in the text.
	*
	* @param chars contains the text that the Bidi algorithm will be performed
	*        on. This text can be retrieved with <code>getText()</code> or
	*        <code>getTextAsString</code>.<br>
	*
	* @param paraLevel specifies the default level for the text;
	*        it is typically 0 (LTR) or 1 (RTL).
	*        If the method shall determine the paragraph level from the text,
	*        then <code>paraLevel</code> can be set to
	*        either <code>LEVEL_DEFAULT_LTR</code>
	*        or <code>LEVEL_DEFAULT_RTL</code>; if the text contains multiple
	*        paragraphs, the paragraph level shall be determined separately for
	*        each paragraph; if a paragraph does not include any strongly typed
	*        character, then the desired default is used (0 for LTR or 1 for RTL).
	*        Any other value between 0 and <code>MAX_EXPLICIT_LEVEL</code>
	*        is also valid, with odd levels indicating RTL.
	*
	* @param embeddingLevels (in) may be used to preset the embedding and
	*        override levels, ignoring characters like LRE and PDF in the text.
	*        A level overrides the directional property of its corresponding
	*        (same index) character if the level has the
	*        <code>LEVEL_OVERRIDE</code> bit set.<br><br>
	*        Except for that bit, it must be
	*        <code>paraLevel<=embeddingLevels[]<=MAX_EXPLICIT_LEVEL</code>,
	*        with one exception: a level of zero may be specified for a
	*        paragraph separator even if <code>paraLevel&gt;0</code> when multiple
	*        paragraphs are submitted in the same call to <code>setPara()</code>.<br><br>
	*        <strong>Caution: </strong>A reference to this array, not a copy
	*        of the levels, will be stored in the <code>Bidi</code> object;
	*        the <code>embeddingLevels</code>
	*        should not be modified to avoid unexpected results on subsequent
	*        Bidi operations. However, the <code>setPara()</code> and
	*        <code>setLine()</code> methods may modify some or all of the
	*        levels.<br><br>
	*        <strong>Note:</strong> the <code>embeddingLevels</code> array must
	*        have one entry for each character in <code>text</code>.
	*
	* @throws IllegalArgumentException if the values in embeddingLevels are
	*         not within the allowed range
	*
	* @see #LEVEL_DEFAULT_LTR
	* @see #LEVEL_DEFAULT_RTL
	* @see #LEVEL_OVERRIDE
	* @see #MAX_EXPLICIT_LEVEL
	* @stable ICU 3.8
	*/
	@:overload public function setPara(chars : java.NativeArray<java.StdTypes.Char16>, paraLevel : java.StdTypes.Int8, embeddingLevels : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Perform the Unicode Bidi algorithm on a given paragraph, as defined in the
	* <a href="http://www.unicode.org/unicode/reports/tr9/">Unicode Standard Annex #9</a>,
	* version 13,
	* also described in The Unicode Standard, Version 4.0 .<p>
	*
	* This method takes a paragraph of text and computes the
	* left-right-directionality of each character. The text should not
	* contain any Unicode block separators.<p>
	*
	* The RUN_DIRECTION attribute in the text, if present, determines the base
	* direction (left-to-right or right-to-left). If not present, the base
	* direction is computed using the Unicode Bidirectional Algorithm,
	* defaulting to left-to-right if there are no strong directional characters
	* in the text. This attribute, if present, must be applied to all the text
	* in the paragraph.<p>
	*
	* The BIDI_EMBEDDING attribute in the text, if present, represents
	* embedding level information. Negative values from -1 to -62 indicate
	* overrides at the absolute value of the level. Positive values from 1 to
	* 62 indicate embeddings. Where values are zero or not defined, the base
	* embedding level as determined by the base direction is assumed.<p>
	*
	* The NUMERIC_SHAPING attribute in the text, if present, converts European
	* digits to other decimal digits before running the bidi algorithm. This
	* attribute, if present, must be applied to all the text in the paragraph.
	*
	* If the entire text is all of the same directionality, then
	* the method may not perform all the steps described by the algorithm,
	* i.e., some levels may not be the same as if all steps were performed.
	* This is not relevant for unidirectional text.<br>
	* For example, in pure LTR text with numbers the numbers would get
	* a resolved level of 2 higher than the surrounding text according to
	* the algorithm. This implementation may set all resolved levels to
	* the same value in such a case.<p>
	*
	* @param paragraph a paragraph of text with optional character and
	*        paragraph attribute information
	* @stable ICU 3.8
	*/
	@:overload public function setPara(paragraph : java.text.AttributedCharacterIterator) : Void;
	
	/**
	* Get the length of the text.
	*
	* @return The length of the text that the <code>Bidi</code> object was
	*         created for.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @stable ICU 3.8
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Get the paragraph level of the text.
	*
	* @return The paragraph level. If there are multiple paragraphs, their
	*         level may vary if the required paraLevel is LEVEL_DEFAULT_LTR or
	*         LEVEL_DEFAULT_RTL.  In that case, the level of the first paragraph
	*         is returned.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	*
	* @see #LEVEL_DEFAULT_LTR
	* @see #LEVEL_DEFAULT_RTL
	* @see #getParagraph
	* @see #getParagraphByIndex
	* @stable ICU 3.8
	*/
	@:overload public function getParaLevel() : java.StdTypes.Int8;
	
	/**
	* Get the index of a paragraph, given a position within the text.<p>
	*
	* @param charIndex is the index of a character within the text, in the
	*        range <code>[0..getProcessedLength()-1]</code>.
	*
	* @return The index of the paragraph containing the specified position,
	*         starting from 0.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @throws IllegalArgumentException if charIndex is not within the legal range
	*
	* @see com.ibm.icu.text.BidiRun
	* @see #getProcessedLength
	* @stable ICU 3.8
	*/
	@:overload public function getParagraphIndex(charIndex : Int) : Int;
	
	/**
	* <code>setLine()</code> returns a <code>Bidi</code> object to
	* contain the reordering information, especially the resolved levels,
	* for all the characters in a line of text. This line of text is
	* specified by referring to a <code>Bidi</code> object representing
	* this information for a piece of text containing one or more paragraphs,
	* and by specifying a range of indexes in this text.<p>
	* In the new line object, the indexes will range from 0 to <code>limit-start-1</code>.<p>
	*
	* This is used after calling <code>setPara()</code>
	* for a piece of text, and after line-breaking on that text.
	* It is not necessary if each paragraph is treated as a single line.<p>
	*
	* After line-breaking, rules (L1) and (L2) for the treatment of
	* trailing WS and for reordering are performed on
	* a <code>Bidi</code> object that represents a line.<p>
	*
	* <strong>Important: </strong>the line <code>Bidi</code> object may
	* reference data within the global text <code>Bidi</code> object.
	* You should not alter the content of the global text object until
	* you are finished using the line object.
	*
	* @param start is the line's first index into the text.
	*
	* @param limit is just behind the line's last index into the text
	*        (its last index +1).
	*
	* @return a <code>Bidi</code> object that will now represent a line of the text.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code>
	* @throws IllegalArgumentException if start and limit are not in the range
	*         <code>0&lt;=start&lt;limit&lt;=getProcessedLength()</code>,
	*         or if the specified line crosses a paragraph boundary
	*
	* @see #setPara
	* @see #getProcessedLength
	* @stable ICU 3.8
	*/
	@:overload public function setLine(bidi : java.text.Bidi, bidiBase : sun.text.bidi.BidiBase, newBidi : java.text.Bidi, newBidiBase : sun.text.bidi.BidiBase, start : Int, limit : Int) : java.text.Bidi;
	
	/**
	* Get the level for one character.
	*
	* @param charIndex the index of a character.
	*
	* @return The level for the character at <code>charIndex</code>.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @throws IllegalArgumentException if charIndex is not in the range
	*         <code>0&lt;=charIndex&lt;getProcessedLength()</code>
	*
	* @see #getProcessedLength
	* @stable ICU 3.8
	*/
	@:overload public function getLevelAt(charIndex : Int) : java.StdTypes.Int8;
	
	/**
	* Get the number of runs.
	* This method may invoke the actual reordering on the
	* <code>Bidi</code> object, after <code>setPara()</code>
	* may have resolved only the levels of the text. Therefore,
	* <code>countRuns()</code> may have to allocate memory,
	* and may throw an exception if it fails to do so.
	*
	* @return The number of runs.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @stable ICU 3.8
	*/
	@:overload public function countRuns() : Int;
	
	/**
	* Create Bidi from the given text, embedding, and direction information.
	* The embeddings array may be null. If present, the values represent
	* embedding level information. Negative values from -1 to -61 indicate
	* overrides at the absolute value of the level. Positive values from 1 to
	* 61 indicate embeddings. Where values are zero, the base embedding level
	* as determined by the base direction is assumed.<p>
	*
	* Note: this constructor calls setPara() internally.
	*
	* @param text an array containing the paragraph of text to process.
	* @param textStart the index into the text array of the start of the
	*        paragraph.
	* @param embeddings an array containing embedding values for each character
	*        in the paragraph. This can be null, in which case it is assumed
	*        that there is no external embedding information.
	* @param embStart the index into the embedding array of the start of the
	*        paragraph.
	* @param paragraphLength the length of the paragraph in the text and
	*        embeddings arrays.
	* @param flags a collection of flags that control the algorithm. The
	*        algorithm understands the flags DIRECTION_LEFT_TO_RIGHT,
	*        DIRECTION_RIGHT_TO_LEFT, DIRECTION_DEFAULT_LEFT_TO_RIGHT, and
	*        DIRECTION_DEFAULT_RIGHT_TO_LEFT. Other values are reserved.
	*
	* @throws IllegalArgumentException if the values in embeddings are
	*         not within the allowed range
	*
	* @see #DIRECTION_LEFT_TO_RIGHT
	* @see #DIRECTION_RIGHT_TO_LEFT
	* @see #DIRECTION_DEFAULT_LEFT_TO_RIGHT
	* @see #DIRECTION_DEFAULT_RIGHT_TO_LEFT
	* @stable ICU 3.8
	*/
	@:overload public function new(text : java.NativeArray<java.StdTypes.Char16>, textStart : Int, embeddings : java.NativeArray<java.StdTypes.Int8>, embStart : Int, paragraphLength : Int, flags : Int) : Void;
	
	/**
	* Return true if the line is not left-to-right or right-to-left. This means
	* it either has mixed runs of left-to-right and right-to-left text, or the
	* base direction differs from the direction of the only run of text.
	*
	* @return true if the line is not left-to-right or right-to-left.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code>
	* @stable ICU 3.8
	*/
	@:overload public function isMixed() : Bool;
	
	/**
	* Return true if the line is all left-to-right text and the base direction
	* is left-to-right.
	*
	* @return true if the line is all left-to-right text and the base direction
	*         is left-to-right.
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code>
	* @stable ICU 3.8
	*/
	@:overload public function isLeftToRight() : Bool;
	
	/**
	* Return true if the line is all right-to-left text, and the base direction
	* is right-to-left
	*
	* @return true if the line is all right-to-left text, and the base
	*         direction is right-to-left
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code>
	* @stable ICU 3.8
	*/
	@:overload public function isRightToLeft() : Bool;
	
	/**
	* Return true if the base direction is left-to-right
	*
	* @return true if the base direction is left-to-right
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	*
	* @stable ICU 3.8
	*/
	@:overload public function baseIsLeftToRight() : Bool;
	
	/**
	* Return the base level (0 if left-to-right, 1 if right-to-left).
	*
	* @return the base level
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	*
	* @stable ICU 3.8
	*/
	@:overload public function getBaseLevel() : Int;
	
	/**
	* Return the level of the nth logical run in this line.
	*
	* @param run the index of the run, between 0 and <code>countRuns()-1</code>
	*
	* @return the level of the run
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @throws IllegalArgumentException if <code>run</code> is not in
	*         the range <code>0&lt;=run&lt;countRuns()</code>
	* @stable ICU 3.8
	*/
	@:overload public function getRunLevel(run : Int) : Int;
	
	/**
	* Return the index of the character at the start of the nth logical run in
	* this line, as an offset from the start of the line.
	*
	* @param run the index of the run, between 0 and <code>countRuns()</code>
	*
	* @return the start of the run
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @throws IllegalArgumentException if <code>run</code> is not in
	*         the range <code>0&lt;=run&lt;countRuns()</code>
	* @stable ICU 3.8
	*/
	@:overload public function getRunStart(run : Int) : Int;
	
	/**
	* Return the index of the character past the end of the nth logical run in
	* this line, as an offset from the start of the line. For example, this
	* will return the length of the line for the last run on the line.
	*
	* @param run the index of the run, between 0 and <code>countRuns()</code>
	*
	* @return the limit of the run
	*
	* @throws IllegalStateException if this call is not preceded by a successful
	*         call to <code>setPara</code> or <code>setLine</code>
	* @throws IllegalArgumentException if <code>run</code> is not in
	*         the range <code>0&lt;=run&lt;countRuns()</code>
	* @stable ICU 3.8
	*/
	@:overload public function getRunLimit(run : Int) : Int;
	
	/**
	* Return true if the specified text requires bidi analysis. If this returns
	* false, the text will display left-to-right. Clients can then avoid
	* constructing a Bidi object. Text in the Arabic Presentation Forms area of
	* Unicode is presumed to already be shaped and ordered for display, and so
	* will not cause this method to return true.
	*
	* @param text the text containing the characters to test
	* @param start the start of the range of characters to test
	* @param limit the limit of the range of characters to test
	*
	* @return true if the range of characters requires bidi analysis
	*
	* @stable ICU 3.8
	*/
	@:overload public static function requiresBidi(text : java.NativeArray<java.StdTypes.Char16>, start : Int, limit : Int) : Bool;
	
	/**
	* Reorder the objects in the array into visual order based on their levels.
	* This is a utility method to use when you have a collection of objects
	* representing runs of text in logical order, each run containing text at a
	* single level. The elements at <code>index</code> from
	* <code>objectStart</code> up to <code>objectStart + count</code> in the
	* objects array will be reordered into visual order assuming
	* each run of text has the level indicated by the corresponding element in
	* the levels array (at <code>index - objectStart + levelStart</code>).
	*
	* @param levels an array representing the bidi level of each object
	* @param levelStart the start position in the levels array
	* @param objects the array of objects to be reordered into visual order
	* @param objectStart the start position in the objects array
	* @param count the number of objects to reorder
	* @stable ICU 3.8
	*/
	@:overload public static function reorderVisually(levels : java.NativeArray<java.StdTypes.Int8>, levelStart : Int, objects : java.NativeArray<Dynamic>, objectStart : Int, count : Int) : Void;
	
	/**
	* Display the bidi internal state, used in debugging.
	*/
	@:overload public function toString() : String;
	
	
}
/**
*
* <h2>Bidi algorithm for ICU</h2>
*
* This is an implementation of the Unicode Bidirectional algorithm. The
* algorithm is defined in the <a
* href="http://www.unicode.org/unicode/reports/tr9/">Unicode Standard Annex #9</a>,
* version 13, also described in The Unicode Standard, Version 4.0 .
* <p>
*
* Note: Libraries that perform a bidirectional algorithm and reorder strings
* accordingly are sometimes called "Storage Layout Engines". ICU's Bidi and
* shaping (ArabicShaping) classes can be used at the core of such "Storage
* Layout Engines".
*
* <h3>General remarks about the API:</h3>
*
* The &quot;limit&quot; of a sequence of characters is the position just after
* their last character, i.e., one more than that position.
* <p>
*
* Some of the API methods provide access to &quot;runs&quot;. Such a
* &quot;run&quot; is defined as a sequence of characters that are at the same
* embedding level after performing the Bidi algorithm.
* <p>
*
* <h3>Basic concept: paragraph</h3>
* A piece of text can be divided into several paragraphs by characters
* with the Bidi class <code>Block Separator</code>. For handling of
* paragraphs, see:
* <ul>
* <li>{@link #countParagraphs}
* <li>{@link #getParaLevel}
* <li>{@link #getParagraph}
* <li>{@link #getParagraphByIndex}
* </ul>
*
* <h3>Basic concept: text direction</h3>
* The direction of a piece of text may be:
* <ul>
* <li>{@link #LTR}
* <li>{@link #RTL}
* <li>{@link #MIXED}
* </ul>
*
* <h3>Basic concept: levels</h3>
*
* Levels in this API represent embedding levels according to the Unicode
* Bidirectional Algorithm.
* Their low-order bit (even/odd value) indicates the visual direction.<p>
*
* Levels can be abstract values when used for the
* <code>paraLevel</code> and <code>embeddingLevels</code>
* arguments of <code>setPara()</code>; there:
* <ul>
* <li>the high-order bit of an <code>embeddingLevels[]</code>
* value indicates whether the using application is
* specifying the level of a character to <i>override</i> whatever the
* Bidi implementation would resolve it to.</li>
* <li><code>paraLevel</code> can be set to the
* pseudo-level values <code>LEVEL_DEFAULT_LTR</code>
* and <code>LEVEL_DEFAULT_RTL</code>.</li>
* </ul>
*
* <p>The related constants are not real, valid level values.
* <code>DEFAULT_XXX</code> can be used to specify
* a default for the paragraph level for
* when the <code>setPara()</code> method
* shall determine it but there is no
* strongly typed character in the input.<p>
*
* Note that the value for <code>LEVEL_DEFAULT_LTR</code> is even
* and the one for <code>LEVEL_DEFAULT_RTL</code> is odd,
* just like with normal LTR and RTL level values -
* these special values are designed that way. Also, the implementation
* assumes that MAX_EXPLICIT_LEVEL is odd.
*
* <ul><b>See Also:</b>
* <li>{@link #LEVEL_DEFAULT_LTR}
* <li>{@link #LEVEL_DEFAULT_RTL}
* <li>{@link #LEVEL_OVERRIDE}
* <li>{@link #MAX_EXPLICIT_LEVEL}
* <li>{@link #setPara}
* </ul>
*
* <h3>Basic concept: Reordering Mode</h3>
* Reordering mode values indicate which variant of the Bidi algorithm to
* use.
*
* <ul><b>See Also:</b>
* <li>{@link #setReorderingMode}
* <li>{@link #REORDER_DEFAULT}
* <li>{@link #REORDER_NUMBERS_SPECIAL}
* <li>{@link #REORDER_GROUP_NUMBERS_WITH_R}
* <li>{@link #REORDER_RUNS_ONLY}
* <li>{@link #REORDER_INVERSE_NUMBERS_AS_L}
* <li>{@link #REORDER_INVERSE_LIKE_DIRECT}
* <li>{@link #REORDER_INVERSE_FOR_NUMBERS_SPECIAL}
* </ul>
*
* <h3>Basic concept: Reordering Options</h3>
* Reordering options can be applied during Bidi text transformations.
* <ul><b>See Also:</b>
* <li>{@link #setReorderingOptions}
* <li>{@link #OPTION_DEFAULT}
* <li>{@link #OPTION_INSERT_MARKS}
* <li>{@link #OPTION_REMOVE_CONTROLS}
* <li>{@link #OPTION_STREAMING}
* </ul>
*
*
* @author Simon Montagu, Matitiahu Allouche (ported from C code written by Markus W. Scherer)
* @stable ICU 3.8
*
*
* <h4> Sample code for the ICU Bidi API </h4>
*
* <h5>Rendering a paragraph with the ICU Bidi API</h5>
*
* This is (hypothetical) sample code that illustrates how the ICU Bidi API
* could be used to render a paragraph of text. Rendering code depends highly on
* the graphics system, therefore this sample code must make a lot of
* assumptions, which may or may not match any existing graphics system's
* properties.
*
* <p>
* The basic assumptions are:
* </p>
* <ul>
* <li>Rendering is done from left to right on a horizontal line.</li>
* <li>A run of single-style, unidirectional text can be rendered at once.
* </li>
* <li>Such a run of text is passed to the graphics system with characters
* (code units) in logical order.</li>
* <li>The line-breaking algorithm is very complicated and Locale-dependent -
* and therefore its implementation omitted from this sample code.</li>
* </ul>
*
* <pre>
*
*  package com.ibm.icu.dev.test.bidi;
*
*  import com.ibm.icu.text.Bidi;
*  import com.ibm.icu.text.BidiRun;
*
*  public class Sample {
*
*      static final int styleNormal = 0;
*      static final int styleSelected = 1;
*      static final int styleBold = 2;
*      static final int styleItalics = 4;
*      static final int styleSuper=8;
*      static final int styleSub = 16;
*
*      static class StyleRun {
*          int limit;
*          int style;
*
*          public StyleRun(int limit, int style) {
*              this.limit = limit;
*              this.style = style;
*          }
*      }
*
*      static class Bounds {
*          int start;
*          int limit;
*
*          public Bounds(int start, int limit) {
*              this.start = start;
*              this.limit = limit;
*          }
*      }
*
*      static int getTextWidth(String text, int start, int limit,
*                              StyleRun[] styleRuns, int styleRunCount) {
*          // simplistic way to compute the width
*          return limit - start;
*      }
*
*      // set limit and StyleRun limit for a line
*      // from text[start] and from styleRuns[styleRunStart]
*      // using Bidi.getLogicalRun(...)
*      // returns line width
*      static int getLineBreak(String text, Bounds line, Bidi para,
*                              StyleRun styleRuns[], Bounds styleRun) {
*          // dummy return
*          return 0;
*      }
*
*      // render runs on a line sequentially, always from left to right
*
*      // prepare rendering a new line
*      static void startLine(byte textDirection, int lineWidth) {
*          System.out.println();
*      }
*
*      // render a run of text and advance to the right by the run width
*      // the text[start..limit-1] is always in logical order
*      static void renderRun(String text, int start, int limit,
*                            byte textDirection, int style) {
*      }
*
*      // We could compute a cross-product
*      // from the style runs with the directional runs
*      // and then reorder it.
*      // Instead, here we iterate over each run type
*      // and render the intersections -
*      // with shortcuts in simple (and common) cases.
*      // renderParagraph() is the main function.
*
*      // render a directional run with
*      // (possibly) multiple style runs intersecting with it
*      static void renderDirectionalRun(String text, int start, int limit,
*                                       byte direction, StyleRun styleRuns[],
*                                       int styleRunCount) {
*          int i;
*
*          // iterate over style runs
*          if (direction == Bidi.LTR) {
*              int styleLimit;
*              for (i = 0; i < styleRunCount; ++i) {
*                  styleLimit = styleRuns[i].limit;
*                  if (start < styleLimit) {
*                      if (styleLimit > limit) {
*                          styleLimit = limit;
*                      }
*                      renderRun(text, start, styleLimit,
*                                direction, styleRuns[i].style);
*                      if (styleLimit == limit) {
*                          break;
*                      }
*                      start = styleLimit;
*                  }
*              }
*          } else {
*              int styleStart;
*
*              for (i = styleRunCount-1; i >= 0; --i) {
*                  if (i > 0) {
*                      styleStart = styleRuns[i-1].limit;
*                  } else {
*                      styleStart = 0;
*                  }
*                  if (limit >= styleStart) {
*                      if (styleStart < start) {
*                          styleStart = start;
*                      }
*                      renderRun(text, styleStart, limit, direction,
*                                styleRuns[i].style);
*                      if (styleStart == start) {
*                          break;
*                      }
*                      limit = styleStart;
*                  }
*              }
*          }
*      }
*
*      // the line object represents text[start..limit-1]
*      static void renderLine(Bidi line, String text, int start, int limit,
*                             StyleRun styleRuns[], int styleRunCount) {
*          byte direction = line.getDirection();
*          if (direction != Bidi.MIXED) {
*              // unidirectional
*              if (styleRunCount <= 1) {
*                  renderRun(text, start, limit, direction, styleRuns[0].style);
*              } else {
*                  renderDirectionalRun(text, start, limit, direction,
*                                       styleRuns, styleRunCount);
*              }
*          } else {
*              // mixed-directional
*              int count, i;
*              BidiRun run;
*
*              try {
*                  count = line.countRuns();
*              } catch (IllegalStateException e) {
*                  e.printStackTrace();
*                  return;
*              }
*              if (styleRunCount <= 1) {
*                  int style = styleRuns[0].style;
*
*                  // iterate over directional runs
*                  for (i = 0; i < count; ++i) {
*                      run = line.getVisualRun(i);
*                      renderRun(text, run.getStart(), run.getLimit(),
*                                run.getDirection(), style);
*                  }
*              } else {
*                  // iterate over both directional and style runs
*                  for (i = 0; i < count; ++i) {
*                      run = line.getVisualRun(i);
*                      renderDirectionalRun(text, run.getStart(),
*                                           run.getLimit(), run.getDirection(),
*                                           styleRuns, styleRunCount);
*                  }
*              }
*          }
*      }
*
*      static void renderParagraph(String text, byte textDirection,
*                                  StyleRun styleRuns[], int styleRunCount,
*                                  int lineWidth) {
*          int length = text.length();
*          Bidi para = new Bidi();
*          try {
*              para.setPara(text,
*                           textDirection != 0 ? Bidi.LEVEL_DEFAULT_RTL
*                                              : Bidi.LEVEL_DEFAULT_LTR,
*                           null);
*          } catch (Exception e) {
*              e.printStackTrace();
*              return;
*          }
*          byte paraLevel = (byte)(1 & para.getParaLevel());
*          StyleRun styleRun = new StyleRun(length, styleNormal);
*
*          if (styleRuns == null || styleRunCount <= 0) {
*              styleRuns = new StyleRun[1];
*              styleRunCount = 1;
*              styleRuns[0] = styleRun;
*          }
*          // assume styleRuns[styleRunCount-1].limit>=length
*
*          int width = getTextWidth(text, 0, length, styleRuns, styleRunCount);
*          if (width <= lineWidth) {
*              // everything fits onto one line
*
*              // prepare rendering a new line from either left or right
*              startLine(paraLevel, width);
*
*              renderLine(para, text, 0, length, styleRuns, styleRunCount);
*          } else {
*              // we need to render several lines
*              Bidi line = new Bidi(length, 0);
*              int start = 0, limit;
*              int styleRunStart = 0, styleRunLimit;
*
*              for (;;) {
*                  limit = length;
*                  styleRunLimit = styleRunCount;
*                  width = getLineBreak(text, new Bounds(start, limit),
*                                       para, styleRuns,
*                                       new Bounds(styleRunStart, styleRunLimit));
*                  try {
*                      line = para.setLine(start, limit);
*                  } catch (Exception e) {
*                      e.printStackTrace();
*                      return;
*                  }
*                  // prepare rendering a new line
*                  // from either left or right
*                  startLine(paraLevel, width);
*
*                  if (styleRunStart > 0) {
*                      int newRunCount = styleRuns.length - styleRunStart;
*                      StyleRun[] newRuns = new StyleRun[newRunCount];
*                      System.arraycopy(styleRuns, styleRunStart, newRuns, 0,
*                                       newRunCount);
*                      renderLine(line, text, start, limit, newRuns,
*                                 styleRunLimit - styleRunStart);
*                  } else {
*                      renderLine(line, text, start, limit, styleRuns,
*                                 styleRunLimit - styleRunStart);
*                  }
*                  if (limit == length) {
*                      break;
*                  }
*                  start = limit;
*                  styleRunStart = styleRunLimit - 1;
*                  if (start >= styleRuns[styleRunStart].limit) {
*                      ++styleRunStart;
*                  }
*              }
*          }
*      }
*
*      public static void main(String[] args)
*      {
*          renderParagraph("Some Latin text...", Bidi.LTR, null, 0, 80);
*          renderParagraph("Some Hebrew text...", Bidi.RTL, null, 0, 60);
*      }
*  }
*
* </pre>
*/
@:native('sun$text$bidi$BidiBase$Point') @:internal extern class BidiBase_Point
{
	
}
/* flag for LRM/RLM, before/after */
@:native('sun$text$bidi$BidiBase$InsertPoints') @:internal extern class BidiBase_InsertPoints
{
	
}
@:native('sun$text$bidi$BidiBase$ImpTabPair') @:internal extern class BidiBase_ImpTabPair
{
	
}
@:native('sun$text$bidi$BidiBase$LevState') @:internal extern class BidiBase_LevState
{
	
}
/**
* A class that provides access to constants defined by
* java.awt.font.TextAttribute without creating a static dependency.
*/
@:native('sun$text$bidi$BidiBase$TextAttributeConstants') @:internal extern class BidiBase_TextAttributeConstants
{
	
}
/**
* A class that provides access to java.awt.font.NumericShaping without
* creating a static dependency.
*/
@:native('sun$text$bidi$BidiBase$NumericShapings') @:internal extern class BidiBase_NumericShapings
{
	
}
