package java.awt.font;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* @author Charlton Innovations, Inc.
*/
extern class GlyphVector implements java.lang.Cloneable
{
	/**
	* Returns the <code>Font</code> associated with this
	* <code>GlyphVector</code>.
	* @return <code>Font</code> used to create this
	* <code>GlyphVector</code>.
	* @see Font
	*/
	@:overload @:abstract public function getFont() : java.awt.Font;
	
	/**
	* Returns the {@link FontRenderContext} associated with this
	* <code>GlyphVector</code>.
	* @return <code>FontRenderContext</code> used to create this
	* <code>GlyphVector</code>.
	* @see FontRenderContext
	* @see Font
	*/
	@:overload @:abstract public function getFontRenderContext() : java.awt.font.FontRenderContext;
	
	/**
	* Assigns default positions to each glyph in this
	* <code>GlyphVector</code>. This can destroy information
	* generated during initial layout of this <code>GlyphVector</code>.
	*/
	@:overload @:abstract public function performDefaultLayout() : Void;
	
	/**
	* Returns the number of glyphs in this <code>GlyphVector</code>.
	* @return number of glyphs in this <code>GlyphVector</code>.
	*/
	@:overload @:abstract public function getNumGlyphs() : Int;
	
	/**
	* Returns the glyphcode of the specified glyph.
	* This return value is meaningless to anything other
	* than the <code>Font</code> object that created this
	* <code>GlyphVector</code>.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* that corresponds to the glyph from which to retrieve the
	* glyphcode.
	* @return the glyphcode of the glyph at the specified
	* <code>glyphIndex</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	* is less than 0 or greater than or equal to the
	* number of glyphs in this <code>GlyphVector</code>
	*/
	@:overload @:abstract public function getGlyphCode(glyphIndex : Int) : Int;
	
	/**
	* Returns an array of glyphcodes for the specified glyphs.
	* The contents of this return value are meaningless to anything other
	* than the <code>Font</code> used to create this
	* <code>GlyphVector</code>.  This method is used
	* for convenience and performance when processing glyphcodes.
	* If no array is passed in, a new array is created.
	* @param beginGlyphIndex the index into this
	*   <code>GlyphVector</code> at which to start retrieving glyphcodes
	* @param numEntries the number of glyphcodes to retrieve
	* @param codeReturn the array that receives the glyphcodes and is
	*   then returned
	* @return an array of glyphcodes for the specified glyphs.
	* @throws IllegalArgumentException if <code>numEntries</code> is
	*   less than 0
	* @throws IndexOutOfBoundsException if <code>beginGlyphIndex</code>
	*   is less than 0
	* @throws IndexOutOfBoundsException if the sum of
	*   <code>beginGlyphIndex</code> and <code>numEntries</code> is
	*   greater than the number of glyphs in this
	*   <code>GlyphVector</code>
	*/
	@:overload @:abstract public function getGlyphCodes(beginGlyphIndex : Int, numEntries : Int, codeReturn : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns the character index of the specified glyph.
	* The character index is the index of the first logical
	* character represented by the glyph.  The default
	* implementation assumes a one-to-one, left-to-right mapping
	* of glyphs to characters.
	* @param glyphIndex the index of the glyph
	* @return the index of the first character represented by the glyph
	* @since 1.4
	*/
	@:require(java4) @:overload public function getGlyphCharIndex(glyphIndex : Int) : Int;
	
	/**
	* Returns the character indices of the specified glyphs.
	* The character index is the index of the first logical
	* character represented by the glyph.  Indices are returned
	* in glyph order.  The default implementation invokes
	* getGlyphCharIndex for each glyph, and subclassers will probably
	* want to override this implementation for performance reasons.
	* Use this method for convenience and performance
	* in processing of glyphcodes. If no array is passed in,
	* a new array is created.
	* @param beginGlyphIndex the index of the first glyph
	* @param numEntries the number of glyph indices
	* @param codeReturn the array into which to return the character indices
	* @return an array of character indices, one per glyph.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getGlyphCharIndices(beginGlyphIndex : Int, numEntries : Int, codeReturn : java.NativeArray<Int>) : java.NativeArray<Int>;
	
	/**
	* Returns the logical bounds of this <code>GlyphVector</code>.
	* This method is used when positioning this <code>GlyphVector</code>
	* in relation to visually adjacent <code>GlyphVector</code> objects.
	* @return a {@link Rectangle2D} that is the logical bounds of this
	* <code>GlyphVector</code>.
	*/
	@:overload @:abstract public function getLogicalBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the visual bounds of this <code>GlyphVector</code>
	* The visual bounds is the bounding box of the outline of this
	* <code>GlyphVector</code>.  Because of rasterization and
	* alignment of pixels, it is possible that this box does not
	* enclose all pixels affected by rendering this <code>GlyphVector</code>.
	* @return a <code>Rectangle2D</code> that is the bounding box
	* of this <code>GlyphVector</code>.
	*/
	@:overload @:abstract public function getVisualBounds() : java.awt.geom.Rectangle2D;
	
	/**
	* Returns the pixel bounds of this <code>GlyphVector</code> when
	* rendered in a graphics with the given
	* <code>FontRenderContext</code> at the given location.  The
	* renderFRC need not be the same as the
	* <code>FontRenderContext</code> of this
	* <code>GlyphVector</code>, and can be null.  If it is null, the
	* <code>FontRenderContext</code> of this <code>GlyphVector</code>
	* is used.  The default implementation returns the visual bounds,
	* offset to x, y and rounded out to the next integer value (i.e. returns an
	* integer rectangle which encloses the visual bounds) and
	* ignores the FRC.  Subclassers should override this method.
	* @param renderFRC the <code>FontRenderContext</code> of the <code>Graphics</code>.
	* @param x the x-coordinate at which to render this <code>GlyphVector</code>.
	* @param y the y-coordinate at which to render this <code>GlyphVector</code>.
	* @return a <code>Rectangle</code> bounding the pixels that would be affected.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPixelBounds(renderFRC : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	/**
	* Returns a <code>Shape</code> whose interior corresponds to the
	* visual representation of this <code>GlyphVector</code>.
	* @return a <code>Shape</code> that is the outline of this
	* <code>GlyphVector</code>.
	*/
	@:overload @:abstract public function getOutline() : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> whose interior corresponds to the
	* visual representation of this <code>GlyphVector</code> when
	* rendered at x,&nbsp;y.
	* @param x the X coordinate of this <code>GlyphVector</code>.
	* @param y the Y coordinate of this <code>GlyphVector</code>.
	* @return a <code>Shape</code> that is the outline of this
	*   <code>GlyphVector</code> when rendered at the specified
	*   coordinates.
	*/
	@:overload @:abstract public function getOutline(x : Single, y : Single) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> whose interior corresponds to the
	* visual representation of the specified glyph
	* within this <code>GlyphVector</code>.
	* The outline returned by this method is positioned around the
	* origin of each individual glyph.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @return a <code>Shape</code> that is the outline of the glyph
	*   at the specified <code>glyphIndex</code> of this
	*   <code>GlyphVector</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	*/
	@:overload @:abstract public function getGlyphOutline(glyphIndex : Int) : java.awt.Shape;
	
	/**
	* Returns a <code>Shape</code> whose interior corresponds to the
	* visual representation of the specified glyph
	* within this <code>GlyphVector</code>, offset to x,&nbsp;y.
	* The outline returned by this method is positioned around the
	* origin of each individual glyph.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @param x the X coordinate of the location of this {@code GlyphVector}
	* @param y the Y coordinate of the location of this {@code GlyphVector}
	* @return a <code>Shape</code> that is the outline of the glyph
	*   at the specified <code>glyphIndex</code> of this
	*   <code>GlyphVector</code> when rendered at the specified
	*   coordinates.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	* @since 1.4
	*/
	@:require(java4) @:overload public function getGlyphOutline(glyphIndex : Int, x : Single, y : Single) : java.awt.Shape;
	
	/**
	* Returns the position of the specified glyph relative to the
	* origin of this <code>GlyphVector</code>.
	* If <code>glyphIndex</code> equals the number of of glyphs in
	* this <code>GlyphVector</code>, this method returns the position after
	* the last glyph. This position is used to define the advance of
	* the entire <code>GlyphVector</code>.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @return a {@link Point2D} object that is the position of the glyph
	*   at the specified <code>glyphIndex</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than the number of glyphs
	*   in this <code>GlyphVector</code>
	* @see #setGlyphPosition
	*/
	@:overload @:abstract public function getGlyphPosition(glyphIndex : Int) : java.awt.geom.Point2D;
	
	/**
	* Sets the position of the specified glyph within this
	* <code>GlyphVector</code>.
	* If <code>glyphIndex</code> equals the number of of glyphs in
	* this <code>GlyphVector</code>, this method sets the position after
	* the last glyph. This position is used to define the advance of
	* the entire <code>GlyphVector</code>.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @param newPos the <code>Point2D</code> at which to position the
	*   glyph at the specified <code>glyphIndex</code>
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than the number of glyphs
	*   in this <code>GlyphVector</code>
	* @see #getGlyphPosition
	*/
	@:overload @:abstract public function setGlyphPosition(glyphIndex : Int, newPos : java.awt.geom.Point2D) : Void;
	
	/**
	* Returns the transform of the specified glyph within this
	* <code>GlyphVector</code>.  The transform is relative to the
	* glyph position.  If no special transform has been applied,
	* <code>null</code> can be returned.  A null return indicates
	* an identity transform.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @return an {@link AffineTransform} that is the transform of
	*   the glyph at the specified <code>glyphIndex</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	* @see #setGlyphTransform
	*/
	@:overload @:abstract public function getGlyphTransform(glyphIndex : Int) : java.awt.geom.AffineTransform;
	
	/**
	* Sets the transform of the specified glyph within this
	* <code>GlyphVector</code>.  The transform is relative to the glyph
	* position.  A <code>null</code> argument for <code>newTX</code>
	* indicates that no special transform is applied for the specified
	* glyph.
	* This method can be used to rotate, mirror, translate and scale the
	* glyph.  Adding a transform can result in signifant performance changes.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	* @param newTX the new transform of the glyph at <code>glyphIndex</code>
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	* @see #getGlyphTransform
	*/
	@:overload @:abstract public function setGlyphTransform(glyphIndex : Int, newTX : java.awt.geom.AffineTransform) : Void;
	
	/**
	* Returns flags describing the global state of the GlyphVector.
	* Flags not described below are reserved.  The default
	* implementation returns 0 (meaning false) for the position adjustments,
	* transforms, rtl, and complex flags.
	* Subclassers should override this method, and make sure
	* it correctly describes the GlyphVector and corresponds
	* to the results of related calls.
	* @return an int containing the flags describing the state
	* @see #FLAG_HAS_POSITION_ADJUSTMENTS
	* @see #FLAG_HAS_TRANSFORMS
	* @see #FLAG_RUN_RTL
	* @see #FLAG_COMPLEX_GLYPHS
	* @see #FLAG_MASK
	* @since 1.4
	*/
	@:require(java4) @:overload public function getLayoutFlags() : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates that this <code>GlyphVector</code> has
	* per-glyph transforms.
	* @since 1.4
	*/
	@:require(java4) public static var FLAG_HAS_TRANSFORMS(default, null) : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates that this <code>GlyphVector</code> has
	* position adjustments.  When this is true, the glyph positions don't match the
	* accumulated default advances of the glyphs (for example, if kerning has been done).
	* @since 1.4
	*/
	@:require(java4) public static var FLAG_HAS_POSITION_ADJUSTMENTS(default, null) : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates that this <code>GlyphVector</code> has
	* a right-to-left run direction.  This refers to the glyph-to-char mapping and does
	* not imply that the visual locations of the glyphs are necessarily in this order,
	* although generally they will be.
	* @since 1.4
	*/
	@:require(java4) public static var FLAG_RUN_RTL(default, null) : Int;
	
	/**
	* A flag used with getLayoutFlags that indicates that this <code>GlyphVector</code> has
	* a complex glyph-to-char mapping (one that does not map glyphs to chars one-to-one in
	* strictly ascending or descending order matching the run direction).
	* @since 1.4
	*/
	@:require(java4) public static var FLAG_COMPLEX_GLYPHS(default, null) : Int;
	
	/**
	* A mask for supported flags from getLayoutFlags.  Only bits covered by the mask
	* should be tested.
	* @since 1.4
	*/
	@:require(java4) public static var FLAG_MASK(default, null) : Int;
	
	/**
	* Returns an array of glyph positions for the specified glyphs.
	* This method is used for convenience and performance when
	* processing glyph positions.
	* If no array is passed in, a new array is created.
	* Even numbered array entries beginning with position zero are the X
	* coordinates of the glyph numbered <code>beginGlyphIndex + position/2</code>.
	* Odd numbered array entries beginning with position one are the Y
	* coordinates of the glyph numbered <code>beginGlyphIndex + (position-1)/2</code>.
	* If <code>beginGlyphIndex</code> equals the number of of glyphs in
	* this <code>GlyphVector</code>, this method gets the position after
	* the last glyph and this position is used to define the advance of
	* the entire <code>GlyphVector</code>.
	* @param beginGlyphIndex the index at which to begin retrieving
	*   glyph positions
	* @param numEntries the number of glyphs to retrieve
	* @param positionReturn the array that receives the glyph positions
	*   and is then returned.
	* @return an array of glyph positions specified by
	*  <code>beginGlyphIndex</code> and <code>numEntries</code>.
	* @throws IllegalArgumentException if <code>numEntries</code> is
	*   less than 0
	* @throws IndexOutOfBoundsException if <code>beginGlyphIndex</code>
	*   is less than 0
	* @throws IndexOutOfBoundsException if the sum of
	*   <code>beginGlyphIndex</code> and <code>numEntries</code>
	*   is greater than the number of glyphs in this
	*   <code>GlyphVector</code> plus one
	*/
	@:overload @:abstract public function getGlyphPositions(beginGlyphIndex : Int, numEntries : Int, positionReturn : java.NativeArray<Single>) : java.NativeArray<Single>;
	
	/**
	* Returns the logical bounds of the specified glyph within this
	* <code>GlyphVector</code>.
	* These logical bounds have a total of four edges, with two edges
	* parallel to the baseline under the glyph's transform and the other two
	* edges are shared with adjacent glyphs if they are present.  This
	* method is useful for hit-testing of the specified glyph,
	* positioning of a caret at the leading or trailing edge of a glyph,
	* and for drawing a highlight region around the specified glyph.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	*   that corresponds to the glyph from which to retrieve its logical
	*   bounds
	* @return  a <code>Shape</code> that is the logical bounds of the
	*   glyph at the specified <code>glyphIndex</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	* @see #getGlyphVisualBounds
	*/
	@:overload @:abstract public function getGlyphLogicalBounds(glyphIndex : Int) : java.awt.Shape;
	
	/**
	* Returns the visual bounds of the specified glyph within the
	* <code>GlyphVector</code>.
	* The bounds returned by this method is positioned around the
	* origin of each individual glyph.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	*   that corresponds to the glyph from which to retrieve its visual
	*   bounds
	* @return a <code>Shape</code> that is the visual bounds of the
	*   glyph at the specified <code>glyphIndex</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	* @see #getGlyphLogicalBounds
	*/
	@:overload @:abstract public function getGlyphVisualBounds(glyphIndex : Int) : java.awt.Shape;
	
	/**
	* Returns the pixel bounds of the glyph at index when this
	* <code>GlyphVector</code> is rendered in a <code>Graphics</code> with the
	* given <code>FontRenderContext</code> at the given location. The
	* renderFRC need not be the same as the
	* <code>FontRenderContext</code> of this
	* <code>GlyphVector</code>, and can be null.  If it is null, the
	* <code>FontRenderContext</code> of this <code>GlyphVector</code>
	* is used.  The default implementation returns the visual bounds of the glyph,
	* offset to x, y and rounded out to the next integer value, and
	* ignores the FRC.  Subclassers should override this method.
	* @param index the index of the glyph.
	* @param renderFRC the <code>FontRenderContext</code> of the <code>Graphics</code>.
	* @param x the X position at which to render this <code>GlyphVector</code>.
	* @param y the Y position at which to render this <code>GlyphVector</code>.
	* @return a <code>Rectangle</code> bounding the pixels that would be affected.
	* @since 1.4
	*/
	@:require(java4) @:overload public function getGlyphPixelBounds(index : Int, renderFRC : java.awt.font.FontRenderContext, x : Single, y : Single) : java.awt.Rectangle;
	
	/**
	* Returns the metrics of the glyph at the specified index into
	* this <code>GlyphVector</code>.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	*   that corresponds to the glyph from which to retrieve its metrics
	* @return a {@link GlyphMetrics} object that represents the
	*   metrics of the glyph at the specified <code>glyphIndex</code>
	*   into this <code>GlyphVector</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	*/
	@:overload @:abstract public function getGlyphMetrics(glyphIndex : Int) : java.awt.font.GlyphMetrics;
	
	/**
	* Returns the justification information for the glyph at
	* the specified index into this <code>GlyphVector</code>.
	* @param glyphIndex the index into this <code>GlyphVector</code>
	*   that corresponds to the glyph from which to retrieve its
	*   justification properties
	* @return a {@link GlyphJustificationInfo} object that
	*   represents the justification properties of the glyph at the
	*   specified <code>glyphIndex</code> into this
	*   <code>GlyphVector</code>.
	* @throws IndexOutOfBoundsException if <code>glyphIndex</code>
	*   is less than 0 or greater than or equal to the number
	*   of glyphs in this <code>GlyphVector</code>
	*/
	@:overload @:abstract public function getGlyphJustificationInfo(glyphIndex : Int) : java.awt.font.GlyphJustificationInfo;
	
	/**
	* Tests if the specified <code>GlyphVector</code> exactly
	* equals this <code>GlyphVector</code>.
	* @param set the specified <code>GlyphVector</code> to test
	* @return <code>true</code> if the specified
	*   <code>GlyphVector</code> equals this <code>GlyphVector</code>;
	*   <code>false</code> otherwise.
	*/
	@:overload @:abstract public function equals(set : GlyphVector) : Bool;
	
	
}
