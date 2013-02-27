package java.awt.font;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright Taligent, Inc. 1996 - 1997, All Rights Reserved
* (C) Copyright IBM Corp. 1996-2003, All Rights Reserved
*
* The original version of this source code and documentation is
* copyrighted and owned by Taligent, Inc., a wholly-owned subsidiary
* of IBM. These materials are provided under terms of a License
* Agreement between Taligent and Sun. This technology is protected
* by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class TextLayout implements java.lang.Cloneable
{
	/**
	* This <code>CaretPolicy</code> is used when a policy is not specified
	* by the client.  With this policy, a hit on a character whose direction
	* is the same as the line direction is stronger than a hit on a
	* counterdirectional character.  If the characters' directions are
	* the same, a hit on the leading edge of a character is stronger
	* than a hit on the trailing edge of a character.
	*/
	public static var DEFAULT_CARET_POLICY(default, null) : TextLayout_CaretPolicy;
	
	/**
	* Constructs a <code>TextLayout</code> from a <code>String</code>
	* and a {@link Font}.  All the text is styled using the specified
	* <code>Font</code>.
	* <p>
	* The <code>String</code> must specify a single paragraph of text,
	* because an entire paragraph is required for the bidirectional
	* algorithm.
	* @param string the text to display
	* @param font a <code>Font</code> used to style the text
	* @param frc contains information about a graphics device which is needed
	*       to measure the text correctly.
	*       Text measurements can vary slightly depending on the
	*       device resolution, and attributes such as antialiasing.  This
	*       parameter does not specify a translation between the
	*       <code>TextLayout</code> and user space.
	*/
	@:overload public function new(string : String, font : java.awt.Font, frc : java.awt.font.FontRenderContext) : Void;
	
	/**
	* Constructs a <code>TextLayout</code> from a <code>String</code>
	* and an attribute set.
	* <p>
	* All the text is styled using the provided attributes.
	* <p>
	* <code>string</code> must specify a single paragraph of text because an
	* entire paragraph is required for the bidirectional algorithm.
	* @param string the text to display
	* @param attributes the attributes used to style the text
	* @param frc contains information about a graphics device which is needed
	*       to measure the text correctly.
	*       Text measurements can vary slightly depending on the
	*       device resolution, and attributes such as antialiasing.  This
	*       parameter does not specify a translation between the
	*       <code>TextLayout</code> and user space.
	*/
	@:overload public function new(string : String, attributes : java.util.Map<java.text.AttributedCharacterIterator.AttributedCharacterIterator_Attribute, Dynamic>, frc : java.awt.font.FontRenderContext) : Void;
	
	/**
	* Constructs a <code>TextLayout</code> from an iterator over styled text.
	* <p>
	* The iterator must specify a single paragraph of text because an
	* entire paragraph is required for the bidirectional
	* algorithm.
	* @param text the styled text to display
	* @param frc contains information about a graphics device which is needed
	*       to measure the text correctly.
	*       Text measurements can vary slightly depending on the
	*       device resolution, and attributes such as antialiasing.  This
	*       parameter does not specify a translation between the
	*       <code>TextLayout</code> and user space.
	*/
	@:overload public function new(text : java.text.AttributedCharacterIterator, frc : java.awt.font.FontRenderContext) : Void;
	
	/**
	* Creates a copy of this <code>TextLayout</code>.
	*/
	@:overload private function clone() : Dynamic;
	
	/**
	* Creates a copy of this <code>TextLayout</code> justified to the
	* specified width.
	* <p>
	* If this <code>TextLayout</code> has already been justified, an
	* exception is thrown.  If this <code>TextLayout</code> object's
	* justification ratio is zero, a <code>TextLayout</code> identical
	* to this <code>TextLayout</code> is returned.
	* @param justificationWidth the width to use when justifying the line.
	* For best results, it should not be too different from the current
	* advance of the line.
	* @return a <code>TextLayout</code> justified to the specified width.
	* @exception Error if this layout has already been justified, an Error is
	* thrown.
	*/
	@:overload public function getJustifiedLayout(justificationWidth : Single) : TextLayout;
	
	/**
	* Justify this layout.  Overridden by subclassers to control justification
	* (if there were subclassers, that is...)
	*
	* The layout will only justify if the paragraph attributes (from the
	* source text, possibly defaulted by the layout attributes) indicate a
	* non-zero justification ratio.  The text will be justified to the
	* indicated width.  The current implementation also adjusts hanging
	* punctuation and trailing whitespace to overhang the justification width.
	* Once justified, the layout may not be rejustified.
	* <p>
	* Some code may rely on immutablity of layouts.  Subclassers should not
	* call this directly, but instead should call getJustifiedLayout, which
	* will call this method on a clone of this layout, preserving
	* the original.
	*
	* @param justificationWidth the width to use when justifying the line.
	* For best results, it should not be too different from the current
	* advance of the line.
	* @see #getJustifiedLayout(float)
	*/
	@:overload private function handleJustify(justificationWidth : Single) : Void;
	
	/**
	* Returns the baseline for this <code>TextLayout</code>.
	* The baseline is one of the values defined in <code>Font</code>,
	* which are roman, centered and hanging.  Ascent and descent are
	* relative to this baseline.  The <code>baselineOffsets</code>
	* are also relative to this baseline.
	* @return the baseline of this <code>TextLayout</code>.
	* @see #getBaselineOffsets()
	* @see Font
	*/
	@:overload public function getBaseline() : java.StdTypes.Int8;
	
	/**
	* Returns the offsets array for the baselines used for this
	* <code>TextLayout</code>.
	* <p>
	* The array is indexed by one of the values defined in
	* <code>Font</code>, which are roman, centered and hanging.  The
	* values are relative to this <code>TextLayout</code> object's
	* baseline, so that <code>getBaselineOffsets[getBaseline()] == 0</code>.
	* Offsets are added to the position of the <code>TextLayout</code>
	* object's baseline to get the position for the new baseline.
	* @return the offsets array containing the baselines used for this
	*    <code>TextLayout</code>.
	* @see #getBaseline()
	* @see Font
	*/
	@:overload public function getBaselineOffsets() : java.NativeArray<Single>;
	
	/**
	* Returns the advance of this <code>TextLayout</code>.
	* The advance is the distance from the origin to the advance of the
	* rightmost (bottommost) character.  This is in baseline-relative
	* coordinates.
	* @return the advance of this <code>TextLayout</code>.
	*/
	@:overload public function getAdvance() : Single;
	
	/**
	* Returns the advance of this <code>TextLayout</code>, minus trailing
	* whitespace.  This is in baseline-relative coordinates.
	* @return the advance of this <code>TextLayout</code> without the
	*      trailing whitespace.
	* @see #getAdvance()
	*/
	@:overload public function getVisibleAdvance() : Single;
	
	/**
	* Returns the ascent of this <code>TextLayout</code>.
	* The ascent is the distance from the top (right) of the
	* <code>TextLayout</code> to the baseline.  It is always either
	* positive or zero.  The ascent is sufficient to
	* accomodate superscripted text and is the maximum of the sum of the
	* ascent, offset, and baseline of each glyph.  The ascent is
	* the maximum ascent from the baseline of all the text in the
	* TextLayout.  It is in baseline-relative coordinates.
	* @return the ascent of this <code>TextLayout</code>.
	*/
	@:overload public function getAscent() : Single;
	
	/**
	* Returns the descent of this <code>TextLayout</code>.
	* The descent is the distance from the baseline to the bottom (left) of
	* the <code>TextLayout</code>.  It is always either positive or zero.
	* The descent is sufficient to accomodate subscripted text and is the
	* maximum of the sum of the descent, offset, and baseline of each glyph.
	* This is the maximum descent from the baseline of all the text in
	* the TextLayout.  It is in baseline-relative coordinates.
	* @return the descent of this <code>TextLayout</code>.
	*/
	@:overload public function getDescent() : Single;
	
	/**
	* Returns the leading of the <code>TextLayout</code>.
	* The leading is the suggested interline spacing for this
	* <code>TextLayout</code>.  This is in baseline-relative
	* coordinates.
	* <p>
	* The leading is computed from the leading, descent, and baseline
	* of all glyphvectors in the <code>TextLayout</code>.  The algorithm
	* is roughly as follows:
	* <blockquote><pre>
	* maxD = 0;
	* maxDL = 0;
	* for (GlyphVector g in all glyphvectors) {
	*    maxD = max(maxD, g.getDescent() + offsets[g.getBaseline()]);
	*    maxDL = max(maxDL, g.getDescent() + g.getLeading() +
	*                       offsets[g.getBaseline()]);
	* }
	* return maxDL - maxD;
	* </pre></blockquote>
	* @return the leading of this <code>TextLayout</code>.
	*/
	@:overload public function getLeading() : Single;
	
	/**
	* Returns the bounds of this <code>TextLayout</code>.
	* The bounds are in standard coordinates.
	* <p>Due to rasterization effects, this bounds might not enclose all of the
	* pixels rendered by the TextLayout.</p>
	* It might not coincide exactly with the ascent, descent,
	* origin or advance of the <code>TextLayout</code>.
	* @return a {@link Rectangle2D} that is the bounds of this
	*        <code>TextLayout</code>.
	*/
	@:overload public function getBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the pixel bounds of this <code>TextLayout</code> when
	* rendered in a graphics with the given
	* <code>FontRenderContext</code> at the given location.  The
	* graphics render context need not be the same as the
	* <code>FontRenderContext</code> used to create this
	* <code>TextLayout</code>, and can be null.  If it is null, the
	* <code>FontRenderContext</code> of this <code>TextLayout</code>
	* is used.
	* @param frc the <code>FontRenderContext</code> of the <code>Graphics</code>.
	* @param x the x-coordinate at which to render this <code>TextLayout</code>.
	* @param y the y-coordinate at which to render this <code>TextLayout</code>.
	* @return a <code>Rectangle</code> bounding the pixels that would be affected.
	* @see GlyphVector#getPixelBounds
	* @since 1.6
	*/
	@:require(java6) @:overload public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	/**
	* Returns <code>true</code> if this <code>TextLayout</code> has
	* a left-to-right base direction or <code>false</code> if it has
	* a right-to-left base direction.  The <code>TextLayout</code>
	* has a base direction of either left-to-right (LTR) or
	* right-to-left (RTL).  The base direction is independent of the
	* actual direction of text on the line, which may be either LTR,
	* RTL, or mixed. Left-to-right layouts by default should position
	* flush left.  If the layout is on a tabbed line, the
	* tabs run left to right, so that logically successive layouts position
	* left to right.  The opposite is true for RTL layouts. By default they
	* should position flush left, and tabs run right-to-left.
	* @return <code>true</code> if the base direction of this
	*         <code>TextLayout</code> is left-to-right; <code>false</code>
	*         otherwise.
	*/
	@:overload public function isLeftToRight() : Bool;
	
	/**
	* Returns <code>true</code> if this <code>TextLayout</code> is vertical.
	* @return <code>true</code> if this <code>TextLayout</code> is vertical;
	*      <code>false</code> otherwise.
	*/
	@:overload public function isVertical() : Bool;
	
	/**
	* Returns the number of characters represented by this
	* <code>TextLayout</code>.
	* @return the number of characters in this <code>TextLayout</code>.
	*/
	@:overload public function getCharacterCount() : Int;
	
	/**
	* Returns information about the caret corresponding to <code>hit</code>.
	* The first element of the array is the intersection of the caret with
	* the baseline, as a distance along the baseline. The second element
	* of the array is the inverse slope (run/rise) of the caret, measured
	* with respect to the baseline at that point.
	* <p>
	* This method is meant for informational use.  To display carets, it
	* is better to use <code>getCaretShapes</code>.
	* @param hit a hit on a character in this <code>TextLayout</code>
	* @param bounds the bounds to which the caret info is constructed.
	*     The bounds is in baseline-relative coordinates.
	* @return a two-element array containing the position and slope of
	* the caret.  The returned caret info is in baseline-relative coordinates.
	* @see #getCaretShapes(int, Rectangle2D, TextLayout.CaretPolicy)
	* @see Font#getItalicAngle
	*/
	@:overload public function getCaretInfo(hit : java.awt.font.TextHitInfo, bounds : java.awt.geom.Rectangle2D) : java.NativeArray<Single>;
	
	/**
	* Returns information about the caret corresponding to <code>hit</code>.
	* This method is a convenience overload of <code>getCaretInfo</code> and
	* uses the natural bounds of this <code>TextLayout</code>.
	* @param hit a hit on a character in this <code>TextLayout</code>
	* @return the information about a caret corresponding to a hit.  The
	*     returned caret info is in baseline-relative coordinates.
	*/
	@:overload public function getCaretInfo(hit : java.awt.font.TextHitInfo) : java.NativeArray<Single>;
	
	/**
	* Returns the hit for the next caret to the right (bottom); if there
	* is no such hit, returns <code>null</code>.
	* If the hit character index is out of bounds, an
	* {@link IllegalArgumentException} is thrown.
	* @param hit a hit on a character in this layout
	* @return a hit whose caret appears at the next position to the
	* right (bottom) of the caret of the provided hit or <code>null</code>.
	*/
	@:overload public function getNextRightHit(hit : java.awt.font.TextHitInfo) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit for the next caret to the right (bottom); if no
	* such hit, returns <code>null</code>.  The hit is to the right of
	* the strong caret at the specified offset, as determined by the
	* specified policy.
	* The returned hit is the stronger of the two possible
	* hits, as determined by the specified policy.
	* @param offset an insertion offset in this <code>TextLayout</code>.
	* Cannot be less than 0 or greater than this <code>TextLayout</code>
	* object's character count.
	* @param policy the policy used to select the strong caret
	* @return a hit whose caret appears at the next position to the
	* right (bottom) of the caret of the provided hit, or <code>null</code>.
	*/
	@:overload public function getNextRightHit(offset : Int, policy : TextLayout_CaretPolicy) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit for the next caret to the right (bottom); if no
	* such hit, returns <code>null</code>.  The hit is to the right of
	* the strong caret at the specified offset, as determined by the
	* default policy.
	* The returned hit is the stronger of the two possible
	* hits, as determined by the default policy.
	* @param offset an insertion offset in this <code>TextLayout</code>.
	* Cannot be less than 0 or greater than the <code>TextLayout</code>
	* object's character count.
	* @return a hit whose caret appears at the next position to the
	* right (bottom) of the caret of the provided hit, or <code>null</code>.
	*/
	@:overload public function getNextRightHit(offset : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit for the next caret to the left (top); if no such
	* hit, returns <code>null</code>.
	* If the hit character index is out of bounds, an
	* <code>IllegalArgumentException</code> is thrown.
	* @param hit a hit on a character in this <code>TextLayout</code>.
	* @return a hit whose caret appears at the next position to the
	* left (top) of the caret of the provided hit, or <code>null</code>.
	*/
	@:overload public function getNextLeftHit(hit : java.awt.font.TextHitInfo) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit for the next caret to the left (top); if no
	* such hit, returns <code>null</code>.  The hit is to the left of
	* the strong caret at the specified offset, as determined by the
	* specified policy.
	* The returned hit is the stronger of the two possible
	* hits, as determined by the specified policy.
	* @param offset an insertion offset in this <code>TextLayout</code>.
	* Cannot be less than 0 or greater than this <code>TextLayout</code>
	* object's character count.
	* @param policy the policy used to select the strong caret
	* @return a hit whose caret appears at the next position to the
	* left (top) of the caret of the provided hit, or <code>null</code>.
	*/
	@:overload public function getNextLeftHit(offset : Int, policy : TextLayout_CaretPolicy) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit for the next caret to the left (top); if no
	* such hit, returns <code>null</code>.  The hit is to the left of
	* the strong caret at the specified offset, as determined by the
	* default policy.
	* The returned hit is the stronger of the two possible
	* hits, as determined by the default policy.
	* @param offset an insertion offset in this <code>TextLayout</code>.
	* Cannot be less than 0 or greater than this <code>TextLayout</code>
	* object's character count.
	* @return a hit whose caret appears at the next position to the
	* left (top) of the caret of the provided hit, or <code>null</code>.
	*/
	@:overload public function getNextLeftHit(offset : Int) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hit on the opposite side of the specified hit's caret.
	* @param hit the specified hit
	* @return a hit that is on the opposite side of the specified hit's
	*    caret.
	*/
	@:overload public function getVisualOtherHit(hit : java.awt.font.TextHitInfo) : java.awt.font.TextHitInfo;
	
	/**
	* Returns a {@link Shape} representing the caret at the specified
	* hit inside the specified bounds.
	* @param hit the hit at which to generate the caret
	* @param bounds the bounds of the <code>TextLayout</code> to use
	*    in generating the caret.  The bounds is in baseline-relative
	*    coordinates.
	* @return a <code>Shape</code> representing the caret.  The returned
	*    shape is in standard coordinates.
	*/
	@:overload public function getCaretShape(hit : java.awt.font.TextHitInfo, bounds : java.awt.geom.Rectangle2D) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> representing the caret at the specified
	* hit inside the natural bounds of this <code>TextLayout</code>.
	* @param hit the hit at which to generate the caret
	* @return a <code>Shape</code> representing the caret.  The returned
	*     shape is in standard coordinates.
	*/
	@:overload public function getCaretShape(hit : java.awt.font.TextHitInfo) : java.awt.Shape;
	
	/**
	* Returns the level of the character at <code>index</code>.
	* Indices -1 and <code>characterCount</code> are assigned the base
	* level of this <code>TextLayout</code>.
	* @param index the index of the character from which to get the level
	* @return the level of the character at the specified index.
	*/
	@:overload public function getCharacterLevel(index : Int) : java.StdTypes.Int8;
	
	/**
	* Returns two paths corresponding to the strong and weak caret.
	* @param offset an offset in this <code>TextLayout</code>
	* @param bounds the bounds to which to extend the carets.  The
	* bounds is in baseline-relative coordinates.
	* @param policy the specified <code>CaretPolicy</code>
	* @return an array of two paths.  Element zero is the strong
	* caret.  If there are two carets, element one is the weak caret,
	* otherwise it is <code>null</code>. The returned shapes
	* are in standard coordinates.
	*/
	@:overload public function getCaretShapes(offset : Int, bounds : java.awt.geom.Rectangle2D, policy : TextLayout_CaretPolicy) : java.NativeArray<java.awt.Shape>;
	
	/**
	* Returns two paths corresponding to the strong and weak caret.
	* This method is a convenience overload of <code>getCaretShapes</code>
	* that uses the default caret policy.
	* @param offset an offset in this <code>TextLayout</code>
	* @param bounds the bounds to which to extend the carets.  This is
	*     in baseline-relative coordinates.
	* @return two paths corresponding to the strong and weak caret as
	*    defined by the <code>DEFAULT_CARET_POLICY</code>.  These are
	*    in standard coordinates.
	*/
	@:overload public function getCaretShapes(offset : Int, bounds : java.awt.geom.Rectangle2D) : java.NativeArray<java.awt.Shape>;
	
	/**
	* Returns two paths corresponding to the strong and weak caret.
	* This method is a convenience overload of <code>getCaretShapes</code>
	* that uses the default caret policy and this <code>TextLayout</code>
	* object's natural bounds.
	* @param offset an offset in this <code>TextLayout</code>
	* @return two paths corresponding to the strong and weak caret as
	*    defined by the <code>DEFAULT_CARET_POLICY</code>.  These are
	*    in standard coordinates.
	*/
	@:overload public function getCaretShapes(offset : Int) : java.NativeArray<java.awt.Shape>;
	
	/**
	* Returns the logical ranges of text corresponding to a visual selection.
	* @param firstEndpoint an endpoint of the visual range
	* @param secondEndpoint the other endpoint of the visual range.
	* This endpoint can be less than <code>firstEndpoint</code>.
	* @return an array of integers representing start/limit pairs for the
	* selected ranges.
	* @see #getVisualHighlightShape(TextHitInfo, TextHitInfo, Rectangle2D)
	*/
	@:overload public function getLogicalRangesForVisualSelection(firstEndpoint : java.awt.font.TextHitInfo, secondEndpoint : java.awt.font.TextHitInfo) : java.NativeArray<Int>;
	
	/**
	* Returns a path enclosing the visual selection in the specified range,
	* extended to <code>bounds</code>.
	* <p>
	* If the selection includes the leftmost (topmost) position, the selection
	* is extended to the left (top) of <code>bounds</code>.  If the
	* selection includes the rightmost (bottommost) position, the selection
	* is extended to the right (bottom) of the bounds.  The height
	* (width on vertical lines) of the selection is always extended to
	* <code>bounds</code>.
	* <p>
	* Although the selection is always contiguous, the logically selected
	* text can be discontiguous on lines with mixed-direction text.  The
	* logical ranges of text selected can be retrieved using
	* <code>getLogicalRangesForVisualSelection</code>.  For example,
	* consider the text 'ABCdef' where capital letters indicate
	* right-to-left text, rendered on a right-to-left line, with a visual
	* selection from 0L (the leading edge of 'A') to 3T (the trailing edge
	* of 'd').  The text appears as follows, with bold underlined areas
	* representing the selection:
	* <br><pre>
	*    d<u><b>efCBA  </b></u>
	* </pre>
	* The logical selection ranges are 0-3, 4-6 (ABC, ef) because the
	* visually contiguous text is logically discontiguous.  Also note that
	* since the rightmost position on the layout (to the right of 'A') is
	* selected, the selection is extended to the right of the bounds.
	* @param firstEndpoint one end of the visual selection
	* @param secondEndpoint the other end of the visual selection
	* @param bounds the bounding rectangle to which to extend the selection.
	*     This is in baseline-relative coordinates.
	* @return a <code>Shape</code> enclosing the selection.  This is in
	*     standard coordinates.
	* @see #getLogicalRangesForVisualSelection(TextHitInfo, TextHitInfo)
	* @see #getLogicalHighlightShape(int, int, Rectangle2D)
	*/
	@:overload public function getVisualHighlightShape(firstEndpoint : java.awt.font.TextHitInfo, secondEndpoint : java.awt.font.TextHitInfo, bounds : java.awt.geom.Rectangle2D) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> enclosing the visual selection in the
	* specified range, extended to the bounds.  This method is a
	* convenience overload of <code>getVisualHighlightShape</code> that
	* uses the natural bounds of this <code>TextLayout</code>.
	* @param firstEndpoint one end of the visual selection
	* @param secondEndpoint the other end of the visual selection
	* @return a <code>Shape</code> enclosing the selection.  This is
	*     in standard coordinates.
	*/
	@:overload public function getVisualHighlightShape(firstEndpoint : java.awt.font.TextHitInfo, secondEndpoint : java.awt.font.TextHitInfo) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> enclosing the logical selection in the
	* specified range, extended to the specified <code>bounds</code>.
	* <p>
	* If the selection range includes the first logical character, the
	* selection is extended to the portion of <code>bounds</code> before
	* the start of this <code>TextLayout</code>.  If the range includes
	* the last logical character, the selection is extended to the portion
	* of <code>bounds</code> after the end of this <code>TextLayout</code>.
	* The height (width on vertical lines) of the selection is always
	* extended to <code>bounds</code>.
	* <p>
	* The selection can be discontiguous on lines with mixed-direction text.
	* Only those characters in the logical range between start and limit
	* appear selected.  For example, consider the text 'ABCdef' where capital
	* letters indicate right-to-left text, rendered on a right-to-left line,
	* with a logical selection from 0 to 4 ('ABCd').  The text appears as
	* follows, with bold standing in for the selection, and underlining for
	* the extension:
	* <br><pre>
	*    <u><b>d</b></u>ef<u><b>CBA  </b></u>
	* </pre>
	* The selection is discontiguous because the selected characters are
	* visually discontiguous. Also note that since the range includes the
	* first logical character (A), the selection is extended to the portion
	* of the <code>bounds</code> before the start of the layout, which in
	* this case (a right-to-left line) is the right portion of the
	* <code>bounds</code>.
	* @param firstEndpoint an endpoint in the range of characters to select
	* @param secondEndpoint the other endpoint of the range of characters
	* to select. Can be less than <code>firstEndpoint</code>.  The range
	* includes the character at min(firstEndpoint, secondEndpoint), but
	* excludes max(firstEndpoint, secondEndpoint).
	* @param bounds the bounding rectangle to which to extend the selection.
	*     This is in baseline-relative coordinates.
	* @return an area enclosing the selection.  This is in standard
	*     coordinates.
	* @see #getVisualHighlightShape(TextHitInfo, TextHitInfo, Rectangle2D)
	*/
	@:overload public function getLogicalHighlightShape(firstEndpoint : Int, secondEndpoint : Int, bounds : java.awt.geom.Rectangle2D) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> enclosing the logical selection in the
	* specified range, extended to the natural bounds of this
	* <code>TextLayout</code>.  This method is a convenience overload of
	* <code>getLogicalHighlightShape</code> that uses the natural bounds of
	* this <code>TextLayout</code>.
	* @param firstEndpoint an endpoint in the range of characters to select
	* @param secondEndpoint the other endpoint of the range of characters
	* to select. Can be less than <code>firstEndpoint</code>.  The range
	* includes the character at min(firstEndpoint, secondEndpoint), but
	* excludes max(firstEndpoint, secondEndpoint).
	* @return a <code>Shape</code> enclosing the selection.  This is in
	*     standard coordinates.
	*/
	@:overload public function getLogicalHighlightShape(firstEndpoint : Int, secondEndpoint : Int) : java.awt.Shape;
	
	/**
	* Returns the black box bounds of the characters in the specified range.
	* The black box bounds is an area consisting of the union of the bounding
	* boxes of all the glyphs corresponding to the characters between start
	* and limit.  This area can be disjoint.
	* @param firstEndpoint one end of the character range
	* @param secondEndpoint the other end of the character range.  Can be
	* less than <code>firstEndpoint</code>.
	* @return a <code>Shape</code> enclosing the black box bounds.  This is
	*     in standard coordinates.
	*/
	@:overload public function getBlackBoxBounds(firstEndpoint : Int, secondEndpoint : Int) : java.awt.Shape;
	
	/**
	* Returns a <code>TextHitInfo</code> corresponding to the
	* specified point.
	* Coordinates outside the bounds of the <code>TextLayout</code>
	* map to hits on the leading edge of the first logical character,
	* or the trailing edge of the last logical character, as appropriate,
	* regardless of the position of that character in the line.  Only the
	* direction along the baseline is used to make this evaluation.
	* @param x the x offset from the origin of this
	*     <code>TextLayout</code>.  This is in standard coordinates.
	* @param y the y offset from the origin of this
	*     <code>TextLayout</code>.  This is in standard coordinates.
	* @param bounds the bounds of the <code>TextLayout</code>.  This
	*     is in baseline-relative coordinates.
	* @return a hit describing the character and edge (leading or trailing)
	*     under the specified point.
	*/
	@:overload public function hitTestChar(x : Single, y : Single, bounds : java.awt.geom.Rectangle2D) : java.awt.font.TextHitInfo;
	
	/**
	* Returns a <code>TextHitInfo</code> corresponding to the
	* specified point.  This method is a convenience overload of
	* <code>hitTestChar</code> that uses the natural bounds of this
	* <code>TextLayout</code>.
	* @param x the x offset from the origin of this
	*     <code>TextLayout</code>.  This is in standard coordinates.
	* @param y the y offset from the origin of this
	*     <code>TextLayout</code>.  This is in standard coordinates.
	* @return a hit describing the character and edge (leading or trailing)
	* under the specified point.
	*/
	@:overload public function hitTestChar(x : Single, y : Single) : java.awt.font.TextHitInfo;
	
	/**
	* Returns the hash code of this <code>TextLayout</code>.
	* @return the hash code of this <code>TextLayout</code>.
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Returns <code>true</code> if the specified <code>Object</code> is a
	* <code>TextLayout</code> object and if the specified <code>Object</code>
	* equals this <code>TextLayout</code>.
	* @param obj an <code>Object</code> to test for equality
	* @return <code>true</code> if the specified <code>Object</code>
	*      equals this <code>TextLayout</code>; <code>false</code>
	*      otherwise.
	*/
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/**
	* Returns <code>true</code> if the two layouts are equal.
	* Two layouts are equal if they contain equal glyphvectors in the same order.
	* @param rhs the <code>TextLayout</code> to compare to this
	*       <code>TextLayout</code>
	* @return <code>true</code> if the specified <code>TextLayout</code>
	*      equals this <code>TextLayout</code>.
	*
	*/
	@:overload public function equals(rhs : TextLayout) : Bool;
	
	/**
	* Returns debugging information for this <code>TextLayout</code>.
	* @return the <code>textLine</code> of this <code>TextLayout</code>
	*        as a <code>String</code>.
	*/
	@:overload public function toString() : String;
	
	/**
	* Renders this <code>TextLayout</code> at the specified location in
	* the specified {@link java.awt.Graphics2D Graphics2D} context.
	* The origin of the layout is placed at x,&nbsp;y.  Rendering may touch
	* any point within <code>getBounds()</code> of this position.  This
	* leaves the <code>g2</code> unchanged.  Text is rendered along the
	* baseline path.
	* @param g2 the <code>Graphics2D</code> context into which to render
	*         the layout
	* @param x the X coordinate of the origin of this <code>TextLayout</code>
	* @param y the Y coordinate of the origin of this <code>TextLayout</code>
	* @see #getBounds()
	*/
	@:overload public function draw(g2 : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* Returns a <code>Shape</code> representing the outline of this
	* <code>TextLayout</code>.
	* @param tx an optional {@link AffineTransform} to apply to the
	*     outline of this <code>TextLayout</code>.
	* @return a <code>Shape</code> that is the outline of this
	*     <code>TextLayout</code>.  This is in standard coordinates.
	*/
	@:overload public function getOutline(tx : java.awt.geom.AffineTransform) : java.awt.Shape;
	
	/**
	* Return the LayoutPath, or null if the layout path is the
	* default path (x maps to advance, y maps to offset).
	* @return the layout path
	* @since 1.6
	*/
	@:require(java6) @:overload public function getLayoutPath() : java.awt.font.LayoutPath;
	
	/**
	* Convert a hit to a point in standard coordinates.  The point is
	* on the baseline of the character at the leading or trailing
	* edge of the character, as appropriate.  If the path is
	* broken at the side of the character represented by the hit, the
	* point will be adjacent to the character.
	* @param hit the hit to check.  This must be a valid hit on
	* the TextLayout.
	* @param point the returned point. The point is in standard
	*     coordinates.
	* @throws IllegalArgumentException if the hit is not valid for the
	* TextLayout.
	* @throws NullPointerException if hit or point is null.
	* @since 1.6
	*/
	@:require(java6) @:overload public function hitToPoint(hit : java.awt.font.TextHitInfo, point : java.awt.geom.Point2D) : Void;
	
	
}
/**
* Defines a policy for determining the strong caret location.
* This class contains one method, <code>getStrongCaret</code>, which
* is used to specify the policy that determines the strong caret in
* dual-caret text.  The strong caret is used to move the caret to the
* left or right. Instances of this class can be passed to
* <code>getCaretShapes</code>, <code>getNextLeftHit</code> and
* <code>getNextRightHit</code> to customize strong caret
* selection.
* <p>
* To specify alternate caret policies, subclass <code>CaretPolicy</code>
* and override <code>getStrongCaret</code>.  <code>getStrongCaret</code>
* should inspect the two <code>TextHitInfo</code> arguments and choose
* one of them as the strong caret.
* <p>
* Most clients do not need to use this class.
*/
@:native('java$awt$font$TextLayout$CaretPolicy') extern class TextLayout_CaretPolicy
{
	/**
	* Constructs a <code>CaretPolicy</code>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Chooses one of the specified <code>TextHitInfo</code> instances as
	* a strong caret in the specified <code>TextLayout</code>.
	* @param hit1 a valid hit in <code>layout</code>
	* @param hit2 a valid hit in <code>layout</code>
	* @param layout the <code>TextLayout</code> in which
	*        <code>hit1</code> and <code>hit2</code> are used
	* @return <code>hit1</code> or <code>hit2</code>
	*        (or an equivalent <code>TextHitInfo</code>), indicating the
	*        strong caret.
	*/
	@:overload public function getStrongCaret(hit1 : java.awt.font.TextHitInfo, hit2 : java.awt.font.TextHitInfo, layout : TextLayout) : java.awt.font.TextHitInfo;
	
	
}
