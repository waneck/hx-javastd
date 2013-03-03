package sun.font;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1998-2003 - All Rights Reserved
*/
@:internal extern class ExtendedTextSourceLabel extends sun.font.ExtendedTextLabel implements sun.font.Decoration.Decoration_Label
{
	/**
	* Create from a TextSource.
	*/
	@:overload @:public public function new(source : sun.font.TextSource, decorator : sun.font.Decoration) : Void;
	
	/**
	* Create from a TextSource, optionally using cached data from oldLabel starting at the offset.
	* If present oldLabel must have been created from a run of text that includes the text used in
	* the new label.  Start in source corresponds to logical character offset in oldLabel.
	*/
	@:overload @:public public function new(source : sun.font.TextSource, oldLabel : sun.font.ExtendedTextSourceLabel, offset : Int) : Void;
	
	@:overload @:public override public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getLogicalBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getAdvance() : Single;
	
	@:overload @:public override public function getVisualBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getAlignBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getItalicBounds(x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getPixelBounds(frc : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	@:overload @:public override public function isSimple() : Bool;
	
	@:overload @:public override public function getBaselineTransform() : java.awt.geom.AffineTransform;
	
	@:overload @:public public function handleGetOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload @:public override public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	@:overload @:public public function handleDraw(g : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	@:overload @:public override public function draw(g : java.awt.Graphics2D, x : Single, y : Single) : Void;
	
	/**
	* The logical bounds extends from the origin of the glyphvector to the
	* position at which a following glyphvector's origin should be placed.
	* We always assume glyph vectors are rendered from left to right, so
	* the origin is always to the left.
	* <p> On a left-to-right run, combining marks and 'ligatured away'
	* characters are to the right of their base characters.  The charinfo
	* array will record the character positions for these 'missing' characters
	* as being at the origin+advance of the base glyph, with zero advance.
	* (This is not necessarily the same as the glyph position, for example,
	* an umlaut glyph may have a position to the left of this point, it depends
	* on whether the font was designed so that such glyphs overhang to the left
	* of their origin, or whether it presumes some kind of kerning to position
	* the glyphs).  Anyway, the left of the bounds is the origin of the first
	* logical (leftmost) character, and the right is the origin + advance of the
	* last logical (rightmost) character.
	* <p> On a right-to-left run, these special characters are to the left
	* of their base characters.  Again, since 'glyph position' has been abstracted
	* away, we can use the origin of the leftmost character, and the origin +
	* advance of the rightmost character.
	* <p> On a mixed run (hindi) we can't rely on the first logical character
	* being the leftmost character.  However we can again rely on the leftmost
	* character origin and the rightmost character + advance.
	*/
	@:overload @:protected private function createLogicalBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public public function handleGetVisualBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Like createLogicalBounds except ignore leading and logically trailing white space.
	* this assumes logically trailing whitespace is also visually trailing.
	* Whitespace is anything that has a zero visual width, regardless of its advance.
	* <p> We make the same simplifying assumptions as in createLogicalBounds, namely
	* that we can rely on the charinfo to shield us from any glyph positioning oddities
	* in the font that place the glyph for a character at other than the pos + advance
	* of the character to its left.  So we no longer need to skip chars with zero
	* advance, as their bounds (right and left) are already correct.
	*/
	@:overload @:protected private function createAlignBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:public public function createItalicBounds() : java.awt.geom.Rectangle2D;
	
	@:overload @:protected private function createGV() : sun.font.StandardGlyphVector;
	
	@:overload @:public override public function getNumCharacters() : Int;
	
	@:overload @:public override public function getCoreMetrics() : sun.font.CoreMetrics;
	
	@:overload @:public override public function getCharX(index : Int) : Single;
	
	@:overload @:public override public function getCharY(index : Int) : Single;
	
	@:overload @:public override public function getCharAdvance(index : Int) : Single;
	
	@:overload @:public public function handleGetCharVisualBounds(index : Int) : java.awt.geom.Rectangle2D;
	
	@:overload @:public override public function getCharVisualBounds(index : Int, x : Single, y : Single) : java.awt.geom.Rectangle2D;
	
	/*
	public int hitTestChar(float x, float y) {
	// !!! return index of char hit, for swing
	// result is negative for trailing-edge hits
	// no italics so no problem at margins.
	// for now, ignore y since we assume horizontal text

	// find non-combining char origin to right of x
	float[] charinfo = getCharinfo();

	int n = 0;
	int e = source.getLength();
	while (n < e && charinfo[n + advx] != 0 && charinfo[n + posx] > x) {
	n += numvals;
	}
	float rightx = n < e ? charinfo[n+posx] : charinfo[e - numvals + posx] + charinfo[e - numvals + advx];

	// find non-combining char to left of that char
	n -= numvals;
	while (n >= 0 && charinfo[n+advx] == 0) {
	n -= numvals;
	}
	float leftx = n >= 0 ? charinfo[n+posx] : 0;
	float lefta = n >= 0 ? charinfo[n+advx] : 0;

	n /= numvals;

	boolean left = true;
	if (x < leftx + lefta / 2f) {
	// left of prev char
	} else if (x < (leftx + lefta + rightx) / 2f) {
	// right of prev char
	left = false;
	} else {
	// left of follow char
	n += 1;
	}

	if ((source.getLayoutFlags() & 0x1) != 0) {
	n = getNumCharacters() - 1 - n;
	left = !left;
	}

	return left ? n : -n;
	}
	*/
	@:overload @:public override public function logicalToVisual(logicalIndex : Int) : Int;
	
	@:overload @:public override public function visualToLogical(visualIndex : Int) : Int;
	
	@:overload @:public override public function getLineBreakIndex(start : Int, width : Single) : Int;
	
	@:overload @:public override public function getAdvanceBetween(start : Int, limit : Int) : Single;
	
	@:overload @:public override public function caretAtOffsetIsValid(offset : Int) : Bool;
	
	/*
* This takes the glyph info record obtained from the glyph vector and converts it into a similar record
* adjusted to represent character data instead.  For economy we don't use glyph info records in this processing.
*
* Here are some constraints:
* - there can be more glyphs than characters (glyph insertion, perhaps based on normalization, has taken place)
* - there can not be fewer glyphs than characters (0xffff glyphs are inserted for characters ligaturized away)
* - each glyph maps to a single character, when multiple glyphs exist for a character they all map to it, but
*   no two characters map to the same glyph
* - multiple glyphs mapping to the same character need not be in sequence (thai, tamil have split characters)
* - glyphs may be arbitrarily reordered (Indic reorders glyphs)
* - all glyphs share the same bidi level
* - all glyphs share the same horizontal (or vertical) baseline
* - combining marks visually follow their base character in the glyph array-- i.e. in an rtl gv they are
*   to the left of their base character-- and have zero advance.
*
* The output maps this to character positions, and therefore caret positions, via the following assumptions:
* - zero-advance glyphs do not contribute to the advance of their character (i.e. position is ignored), conversely
*   if a glyph is to contribute to the advance of its character it must have a non-zero (float) advance
* - no carets can appear between a zero width character and its preceeding character, where 'preceeding' is
*   defined logically.
* - no carets can appear within a split character
* - no carets can appear within a local reordering (i.e. Indic reordering, or non-adjacent split characters)
* - all characters lie on the same baseline, and it is either horizontal or vertical
* - the charinfo is in uniform ltr or rtl order (visual order), since local reorderings and split characters are removed
*
* The algorithm works in the following way:
* 1) we scan the glyphs ltr or rtl based on the bidi run direction
* 2) we can work in place, since we always consume a glyph for each char we write
*    a) if the line is ltr, we start writing at position 0 until we finish, there may be leftver space
*    b) if the line is rtl and 1-1, we start writing at position numChars/glyphs - 1 until we finish at 0
*    c) otherwise if we don't finish at 0, we have to copy the data down
* 3) we consume clusters in the following way:
*    a) the first element is always consumed
*    b) subsequent elements are consumed if:
*       i) their advance is zero
*       ii) their character index <= the character index of any character seen in this cluster
*       iii) the minimum character index seen in this cluster isn't adjacent to the previous cluster
*    c) character data is written as follows for horizontal lines (x/y and w/h are exchanged on vertical lines)
*       i) the x position is the position of the leftmost glyph whose advance is not zero
*       ii)the y position is the baseline
*       iii) the x advance is the distance to the maximum x + adv of all glyphs whose advance is not zero
*       iv) the y advance is the baseline
*       v) vis x,y,w,h tightly encloses the vis x,y,w,h of all the glyphs with nonzero w and h
* 4) we can make some simple optimizations if we know some things:
*    a) if the mapping is 1-1, unidirectional, and there are no zero-adv glyphs, we just return the glyphinfo
*    b) if the mapping is 1-1, unidirectional, we just adjust the remaining glyphs to originate at right/left of the base
*    c) if the mapping is 1-1, we compute the base position and advance as we go, then go back to adjust the remaining glyphs
*    d) otherwise we keep separate track of the write position as we do (c) since no glyph in the cluster may be in the
*    position we are writing.
*    e) most clusters are simply the single base glyph in the same position as its character, so we try to avoid
*    copying its data unnecessarily.
* 5) the glyph vector ought to provide access to these 'global' attributes to enable these optimizations.  A single
*    int with flags set is probably ok, we could also provide accessors for each attribute.  This doesn't map to
*    the GlyphMetrics flags very well, so I won't attempt to keep them similar.  It might be useful to add those
*    in addition to these.
*    int FLAG_HAS_ZERO_ADVANCE_GLYPHS = 1; // set if there are zero-advance glyphs
*    int FLAG_HAS_NONUNIFORM_ORDER = 2; // set if some glyphs are rearranged out of character visual order
*    int FLAG_HAS_SPLIT_CHARACTERS = 4; // set if multiple glyphs per character
*    int getDescriptionFlags(); // return an int containing the above flags
*    boolean hasZeroAdvanceGlyphs();
*    boolean hasNonuniformOrder();
*    boolean hasSplitCharacters();
*    The optimized cases in (4) correspond to values 0, 1, 3, and 7 returned by getDescriptionFlags().
*/
	@:overload @:protected private function createCharinfo() : java.NativeArray<Single>;
	
	/**
	* Map logical character index to visual character index.
	* <p>
	* This ignores hindi reordering.  @see createCharinfo
	*/
	@:overload @:protected private function l2v(index : Int) : Int;
	
	/**
	* Map visual character index to logical character index.
	* <p>
	* This ignores hindi reordering.  @see createCharinfo
	*/
	@:overload @:protected private function v2l(index : Int) : Int;
	
	@:overload @:public override public function getSubset(start : Int, limit : Int, dir : Int) : sun.font.TextLineComponent;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public override public function getNumJustificationInfos() : Int;
	
	@:overload @:public override public function getJustificationInfos(infos : java.NativeArray<java.awt.font.GlyphJustificationInfo>, infoStart : Int, charStart : Int, charLimit : Int) : Void;
	
	@:overload @:public override public function applyJustificationDeltas(deltas : java.NativeArray<Single>, deltaStart : Int, flags : java.NativeArray<Bool>) : sun.font.TextLineComponent;
	
	
}
