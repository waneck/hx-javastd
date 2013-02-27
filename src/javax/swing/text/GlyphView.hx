package javax.swing.text;
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
extern class GlyphView extends javax.swing.text.View implements javax.swing.text.TabableView implements java.lang.Cloneable
{
	/**
	* Constructs a new view wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Creates a shallow copy.  This is used by the
	* createFragment and breakView methods.
	*
	* @return the copy
	*/
	@:overload @:final private function clone() : Dynamic;
	
	/**
	* Fetch the currently installed glyph painter.
	* If a painter has not yet been installed, and
	* a default was not yet needed, null is returned.
	*/
	@:overload public function getGlyphPainter() : GlyphView_GlyphPainter;
	
	/**
	* Sets the painter to use for rendering glyphs.
	*/
	@:overload public function setGlyphPainter(p : GlyphView_GlyphPainter) : Void;
	
	/**
	* Fetch a reference to the text that occupies
	* the given range.  This is normally used by
	* the GlyphPainter to determine what characters
	* it should render glyphs for.
	*
	* @param p0  the starting document offset >= 0
	* @param p1  the ending document offset >= p0
	* @return    the <code>Segment</code> containing the text
	*/
	@:overload public function getText(p0 : Int, p1 : Int) : javax.swing.text.Segment;
	
	/**
	* Fetch the background color to use to render the
	* glyphs.  If there is no background color, null should
	* be returned.  This is implemented to call
	* <code>StyledDocument.getBackground</code> if the associated
	* document is a styled document, otherwise it returns null.
	*/
	@:overload public function getBackground() : java.awt.Color;
	
	/**
	* Fetch the foreground color to use to render the
	* glyphs.  If there is no foreground color, null should
	* be returned.  This is implemented to call
	* <code>StyledDocument.getBackground</code> if the associated
	* document is a StyledDocument.  If the associated document
	* is not a StyledDocument, the associated components foreground
	* color is used.  If there is no associated component, null
	* is returned.
	*/
	@:overload public function getForeground() : java.awt.Color;
	
	/**
	* Fetch the font that the glyphs should be based
	* upon.  This is implemented to call
	* <code>StyledDocument.getFont</code> if the associated
	* document is a StyledDocument.  If the associated document
	* is not a StyledDocument, the associated components font
	* is used.  If there is no associated component, null
	* is returned.
	*/
	@:overload public function getFont() : java.awt.Font;
	
	/**
	* Determine if the glyphs should be underlined.  If true,
	* an underline should be drawn through the baseline.
	*/
	@:overload public function isUnderline() : Bool;
	
	/**
	* Determine if the glyphs should have a strikethrough
	* line.  If true, a line should be drawn through the center
	* of the glyphs.
	*/
	@:overload public function isStrikeThrough() : Bool;
	
	/**
	* Determine if the glyphs should be rendered as superscript.
	*/
	@:overload public function isSubscript() : Bool;
	
	/**
	* Determine if the glyphs should be rendered as subscript.
	*/
	@:overload public function isSuperscript() : Bool;
	
	/**
	* Fetch the TabExpander to use if tabs are present in this view.
	*/
	@:overload public function getTabExpander() : javax.swing.text.TabExpander;
	
	/**
	* Check to see that a glyph painter exists.  If a painter
	* doesn't exist, a default glyph painter will be installed.
	*/
	@:overload private function checkPainter() : Void;
	
	/**
	* Determines the desired span when using the given
	* tab expansion implementation.
	*
	* @param x the position the view would be located
	*  at for the purpose of tab expansion >= 0.
	* @param e how to expand the tabs when encountered.
	* @return the desired span >= 0
	* @see TabableView#getTabbedSpan
	*/
	@:overload public function getTabbedSpan(x : Single, e : javax.swing.text.TabExpander) : Single;
	
	/**
	* Determines the span along the same axis as tab
	* expansion for a portion of the view.  This is
	* intended for use by the TabExpander for cases
	* where the tab expansion involves aligning the
	* portion of text that doesn't have whitespace
	* relative to the tab stop.  There is therefore
	* an assumption that the range given does not
	* contain tabs.
	* <p>
	* This method can be called while servicing the
	* getTabbedSpan or getPreferredSize.  It has to
	* arrange for its own text buffer to make the
	* measurements.
	*
	* @param p0 the starting document offset >= 0
	* @param p1 the ending document offset >= p0
	* @return the span >= 0
	*/
	@:overload public function getPartialSpan(p0 : Int, p1 : Int) : Single;
	
	/**
	* Fetches the portion of the model that this view is responsible for.
	*
	* @return the starting offset into the model
	* @see View#getStartOffset
	*/
	@:overload override public function getStartOffset() : Int;
	
	/**
	* Fetches the portion of the model that this view is responsible for.
	*
	* @return the ending offset into the model
	* @see View#getEndOffset
	*/
	@:overload override public function getEndOffset() : Int;
	
	/**
	* Renders a portion of a text style run.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the minimum span for this view along an axis.
	*
	* <p>This implementation returns the longest non-breakable area within
	* the view as a minimum span for {@code View.X_AXIS}.</p>
	*
	* @param axis  may be either {@code View.X_AXIS} or {@code View.Y_AXIS}
	* @return      the minimum span the view can be rendered into
	* @throws IllegalArgumentException if the {@code axis} parameter is invalid
	* @see         javax.swing.text.View#getMinimumSpan
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  For the label, the alignment is along the font
	* baseline for the y axis, and the superclasses alignment
	* along the x axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return the desired alignment.  This should be a value
	*   between 0.0 and 1.0 inclusive, where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin.  An alignment of 0.5 would be the
	*   center of the view.
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a   the allocated region to render into
	* @param b   either <code>Position.Bias.Forward</code>
	*                or <code>Position.Bias.Backward</code>
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not represent a
	*   valid location in the associated document
	* @see View#modelToView
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocated region to render into
	* @param biasReturn either <code>Position.Bias.Forward</code>
	*  or <code>Position.Bias.Backward</code> is returned as the
	*  zero-th element of this array
	* @return the location within the model that best represents the
	*  given point of view >= 0
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines how attractive a break opportunity in
	* this view is.  This can be used for determining which
	* view is the most attractive to call <code>breakView</code>
	* on in the process of formatting.  The
	* higher the weight, the more attractive the break.  A
	* value equal to or lower than <code>View.BadBreakWeight</code>
	* should not be considered for a break.  A value greater
	* than or equal to <code>View.ForcedBreakWeight</code> should
	* be broken.
	* <p>
	* This is implemented to forward to the superclass for
	* the Y_AXIS.  Along the X_AXIS the following values
	* may be returned.
	* <dl>
	* <dt><b>View.ExcellentBreakWeight</b>
	* <dd>if there is whitespace proceeding the desired break
	*   location.
	* <dt><b>View.BadBreakWeight</b>
	* <dd>if the desired break location results in a break
	*   location of the starting offset.
	* <dt><b>View.GoodBreakWeight</b>
	* <dd>if the other conditions don't occur.
	* </dl>
	* This will normally result in the behavior of breaking
	* on a whitespace location if one can be found, otherwise
	* breaking between characters.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @param pos the potential location of the start of the
	*   broken view >= 0.  This may be useful for calculating tab
	*   positions.
	* @param len specifies the relative length from <em>pos</em>
	*   where a potential break is desired >= 0.
	* @return the weight, which should be a value between
	*   View.ForcedBreakWeight and View.BadBreakWeight.
	* @see LabelView
	* @see ParagraphView
	* @see View#BadBreakWeight
	* @see View#GoodBreakWeight
	* @see View#ExcellentBreakWeight
	* @see View#ForcedBreakWeight
	*/
	@:overload override public function getBreakWeight(axis : Int, pos : Single, len : Single) : Int;
	
	/**
	* Breaks this view on the given axis at the given length.
	* This is implemented to attempt to break on a whitespace
	* location, and returns a fragment with the whitespace at
	* the end.  If a whitespace location can't be found, the
	* nearest character is used.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @param p0 the location in the model where the
	*  fragment should start it's representation >= 0.
	* @param pos the position along the axis that the
	*  broken view would occupy >= 0.  This may be useful for
	*  things like tab calculations.
	* @param len specifies the distance along the axis
	*  where a potential break is desired >= 0.
	* @return the fragment of the view that represents the
	*  given span, if the view can be broken.  If the view
	*  doesn't support breaking behavior, the view itself is
	*  returned.
	* @see View#breakView
	*/
	@:overload override public function breakView(axis : Int, p0 : Int, pos : Single, len : Single) : javax.swing.text.View;
	
	/**
	* Creates a view that represents a portion of the element.
	* This is potentially useful during formatting operations
	* for taking measurements of fragments of the view.  If
	* the view doesn't support fragmenting (the default), it
	* should return itself.
	* <p>
	* This view does support fragmenting.  It is implemented
	* to return a nested class that shares state in this view
	* representing only a portion of the view.
	*
	* @param p0 the starting offset >= 0.  This should be a value
	*   greater or equal to the element starting offset and
	*   less than the element ending offset.
	* @param p1 the ending offset > p0.  This should be a value
	*   less than or equal to the elements end offset and
	*   greater than the elements starting offset.
	* @return the view fragment, or itself if the view doesn't
	*   support breaking into fragments
	* @see LabelView
	*/
	@:overload override public function createFragment(p0 : Int, p1 : Int) : javax.swing.text.View;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be
	* visible, they might not be in the same order found in the model, or
	* they just might not allow access to some of the locations in the
	* model.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This may be SwingConstants.WEST, SwingConstants.EAST,
	*  SwingConstants.NORTH, or SwingConstants.SOUTH.
	* @return the location within the model that best represents the next
	*  location visual position.
	* @exception BadLocationException
	* @exception IllegalArgumentException for an invalid direction
	*/
	@:overload override public function getNextVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into
	* the document in a location that this view is responsible for.
	* This is implemented to call preferenceChanged along the
	* axis the glyphs are rendered.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	* This is implemented to call preferenceChanged along the
	* axis the glyphs are rendered.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload override public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	* This is implemented to call preferenceChanged along both the
	* horizontal and vertical axis.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
/**
* Class to hold data needed to justify this GlyphView in a PargraphView.Row
*/
@:native('javax$swing$text$GlyphView$JustificationInfo') @:internal extern class GlyphView_JustificationInfo
{
	
}
/**
* A class to perform rendering of the glyphs.
* This can be implemented to be stateless, or
* to hold some information as a cache to
* facilitate faster rendering and model/view
* translation.  At a minimum, the GlyphPainter
* allows a View implementation to perform its
* duties independant of a particular version
* of JVM and selection of capabilities (i.e.
* shaping for i18n, etc).
*
* @since 1.3
*/
@:require(java3) @:native('javax$swing$text$GlyphView$GlyphPainter') extern class GlyphView_GlyphPainter
{
	/**
	* Determine the span the glyphs given a start location
	* (for tab expansion).
	*/
	@:overload @:abstract public function getSpan(v : GlyphView, p0 : Int, p1 : Int, e : javax.swing.text.TabExpander, x : Single) : Single;
	
	@:overload @:abstract public function getHeight(v : GlyphView) : Single;
	
	@:overload @:abstract public function getAscent(v : GlyphView) : Single;
	
	@:overload @:abstract public function getDescent(v : GlyphView) : Single;
	
	/**
	* Paint the glyphs representing the given range.
	*/
	@:overload @:abstract public function paint(v : GlyphView, g : java.awt.Graphics, a : java.awt.Shape, p0 : Int, p1 : Int) : Void;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	* This is shared by the broken views.
	*
	* @param v     the <code>GlyphView</code> containing the
	*              destination coordinate space
	* @param pos   the position to convert
	* @param bias  either <code>Position.Bias.Forward</code>
	*                  or <code>Position.Bias.Backward</code>
	* @param a     Bounds of the View
	* @return      the bounding box of the given position
	* @exception BadLocationException  if the given position does not represent a
	*   valid location in the associated document
	* @see View#modelToView
	*/
	@:overload @:abstract public function modelToView(v : GlyphView, pos : Int, bias : javax.swing.text.Position.Position_Bias, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param v          the <code>GlyphView</code> to provide a mapping for
	* @param x          the X coordinate
	* @param y          the Y coordinate
	* @param a          the allocated region to render into
	* @param biasReturn either <code>Position.Bias.Forward</code>
	*                   or <code>Position.Bias.Backward</code>
	*                   is returned as the zero-th element of this array
	* @return the location within the model that best represents the
	*         given point of view
	* @see View#viewToModel
	*/
	@:overload @:abstract public function viewToModel(v : GlyphView, x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Determines the model location that represents the
	* maximum advance that fits within the given span.
	* This could be used to break the given view.  The result
	* should be a location just shy of the given advance.  This
	* differs from viewToModel which returns the closest
	* position which might be proud of the maximum advance.
	*
	* @param v the view to find the model location to break at.
	* @param p0 the location in the model where the
	*  fragment should start it's representation >= 0.
	* @param x  the graphic location along the axis that the
	*  broken view would occupy >= 0.  This may be useful for
	*  things like tab calculations.
	* @param len specifies the distance into the view
	*  where a potential break is desired >= 0.
	* @return the maximum model location possible for a break.
	* @see View#breakView
	*/
	@:overload @:abstract public function getBoundedPosition(v : GlyphView, p0 : Int, x : Single, len : Single) : Int;
	
	/**
	* Create a painter to use for the given GlyphView.  If
	* the painter carries state it can create another painter
	* to represent a new GlyphView that is being created.  If
	* the painter doesn't hold any significant state, it can
	* return itself.  The default behavior is to return itself.
	* @param v  the <code>GlyphView</code> to provide a painter for
	* @param p0 the starting document offset >= 0
	* @param p1 the ending document offset >= p0
	*/
	@:overload public function getPainter(v : GlyphView, p0 : Int, p1 : Int) : GlyphView_GlyphPainter;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be
	* visible, they might not be in the same order found in the model, or
	* they just might not allow access to some of the locations in the
	* model.
	*
	* @param v the view to use
	* @param pos the position to convert >= 0
	* @param b   either <code>Position.Bias.Forward</code>
	*                or <code>Position.Bias.Backward</code>
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard.
	*  This may be SwingConstants.WEST, SwingConstants.EAST,
	*  SwingConstants.NORTH, or SwingConstants.SOUTH.
	* @param biasRet  either <code>Position.Bias.Forward</code>
	*                 or <code>Position.Bias.Backward</code>
	*                 is returned as the zero-th element of this array
	* @return the location within the model that best represents the next
	*  location visual position.
	* @exception BadLocationException
	* @exception IllegalArgumentException for an invalid direction
	*/
	@:overload public function getNextVisualPositionFrom(v : GlyphView, pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
