package javax.swing.text;
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
/**
* Implements View interface for a simple multi-line text view
* that has text in one font and color.  The view represents each
* child element as a line of text.
*
* @author  Timothy Prinzing
* @see     View
*/
extern class PlainView extends javax.swing.text.View implements javax.swing.text.TabExpander
{
	/**
	* Constructs a new PlainView wrapped on an element.
	*
	* @param elem the element
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Returns the tab size set for the document, defaulting to 8.
	*
	* @return the tab size
	*/
	@:overload @:protected private function getTabSize() : Int;
	
	/**
	* Renders a line of text, suppressing whitespace at the end
	* and expanding any tabs.  This is implemented to make calls
	* to the methods <code>drawUnselectedText</code> and
	* <code>drawSelectedText</code> so that the way selected and
	* unselected text are rendered can be customized.
	*
	* @param lineIndex the line to draw >= 0
	* @param g the <code>Graphics</code> context
	* @param x the starting X position >= 0
	* @param y the starting Y position >= 0
	* @see #drawUnselectedText
	* @see #drawSelectedText
	*/
	@:overload @:protected private function drawLine(lineIndex : Int, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	/**
	* Renders the given range in the model as normal unselected
	* text.  Uses the foreground or disabled color to render the text.
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param p0 the beginning position in the model >= 0
	* @param p1 the ending position in the model >= 0
	* @return the X location of the end of the range >= 0
	* @exception BadLocationException if the range is invalid
	*/
	@:overload @:protected private function drawUnselectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
	/**
	* Renders the given range in the model as selected text.  This
	* is implemented to render the text in the color specified in
	* the hosting component.  It assumes the highlighter will render
	* the selected background.
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param p0 the beginning position in the model >= 0
	* @param p1 the ending position in the model >= 0
	* @return the location of the end of the range
	* @exception BadLocationException if the range is invalid
	*/
	@:overload @:protected private function drawSelectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
	/**
	* Gives access to a buffer that can be used to fetch
	* text from the associated document.
	*
	* @return the buffer
	*/
	@:overload @:protected @:final private function getLineBuffer() : javax.swing.text.Segment;
	
	/**
	* Checks to see if the font metrics and longest line
	* are up-to-date.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function updateMetrics() : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Renders using the given rendering surface and area on that surface.
	* The view may need to do layout and create child views to enable
	* itself to render into the given allocation.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	*
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
	* @see View#modelToView
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param fx the X coordinate >= 0
	* @param fy the Y coordinate >= 0
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view >= 0
	* @see View#viewToModel
	*/
	@:overload @:public override public function viewToModel(fx : Single, fy : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload @:public override public function insertUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload @:public override public function removeUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload @:public override public function changedUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view along the given axis, if it
	* has any layout duties.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload @:public override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Returns the next tab stop position after a given reference position.
	* This implementation does not support things like centering so it
	* ignores the tabOffset argument.
	*
	* @param x the current position >= 0
	* @param tabOffset the position within the text stream
	*   that the tab occurred at >= 0.
	* @return the tab stop, measured in points >= 0
	*/
	@:overload @:public public function nextTabStop(x : Single, tabOffset : Int) : Single;
	
	/**
	* Repaint the region of change covered by the given document
	* event.  Damages the line that begins the range to cover
	* the case when the insert/remove is only on one line.
	* If lines are added or removed, damages the whole
	* view.  The longest line is checked to see if it has
	* changed.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function updateDamage(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Repaint the given line range.
	*
	* @param host the component hosting the view (used to call repaint)
	* @param a  the region allocated for the view to render into
	* @param line0 the starting line number to repaint.  This must
	*   be a valid line number in the model.
	* @param line1 the ending line number to repaint.  This must
	*   be a valid line number in the model.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function damageLineRange(line0 : Int, line1 : Int, a : java.awt.Shape, host : java.awt.Component) : Void;
	
	/**
	* Determine the rectangle that represents the given line.
	*
	* @param a  the region allocated for the view to render into
	* @param line the line number to find the region of.  This must
	*   be a valid line number in the model.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function lineToRect(a : java.awt.Shape, line : Int) : java.awt.Rectangle;
	
	/**
	* Font metrics for the current font.
	*/
	@:protected private var metrics : java.awt.FontMetrics;
	
	
}
