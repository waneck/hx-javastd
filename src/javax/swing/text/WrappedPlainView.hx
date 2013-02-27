package javax.swing.text;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
* View of plain text (text with only one font and color)
* that does line-wrapping.  This view expects that its
* associated element has child elements that represent
* the lines it should be wrapping.  It is implemented
* as a vertical box that contains logical line views.
* The logical line views are nested classes that render
* the logical line as multiple physical line if the logical
* line is too wide to fit within the allocation.  The
* line views draw upon the outer class for its state
* to reduce their memory requirements.
* <p>
* The line views do all of their rendering through the
* <code>drawLine</code> method which in turn does all of
* its rendering through the <code>drawSelectedText</code>
* and <code>drawUnselectedText</code> methods.  This
* enables subclasses to easily specialize the rendering
* without concern for the layout aspects.
*
* @author  Timothy Prinzing
* @see     View
*/
extern class WrappedPlainView extends javax.swing.text.BoxView implements javax.swing.text.TabExpander
{
	/**
	* Creates a new WrappedPlainView.  Lines will be wrapped
	* on character boundaries.
	*
	* @param elem the element underlying the view
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Creates a new WrappedPlainView.  Lines can be wrapped on
	* either character or word boundaries depending upon the
	* setting of the wordWrap parameter.
	*
	* @param elem the element underlying the view
	* @param wordWrap should lines be wrapped on word boundaries?
	*/
	@:overload public function new(elem : javax.swing.text.Element, wordWrap : Bool) : Void;
	
	/**
	* Returns the tab size set for the document, defaulting to 8.
	*
	* @return the tab size
	*/
	@:overload private function getTabSize() : Int;
	
	/**
	* Renders a line of text, suppressing whitespace at the end
	* and expanding any tabs.  This is implemented to make calls
	* to the methods <code>drawUnselectedText</code> and
	* <code>drawSelectedText</code> so that the way selected and
	* unselected text are rendered can be customized.
	*
	* @param p0 the starting document location to use >= 0
	* @param p1 the ending document location to use >= p1
	* @param g the graphics context
	* @param x the starting X position >= 0
	* @param y the starting Y position >= 0
	* @see #drawUnselectedText
	* @see #drawSelectedText
	*/
	@:overload private function drawLine(p0 : Int, p1 : Int, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	/**
	* Renders the given range in the model as normal unselected
	* text.
	*
	* @param g the graphics context
	* @param x the starting X coordinate >= 0
	* @param y the starting Y coordinate >= 0
	* @param p0 the beginning position in the model >= 0
	* @param p1 the ending position in the model >= p0
	* @return the X location of the end of the range >= 0
	* @exception BadLocationException if the range is invalid
	*/
	@:overload private function drawUnselectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
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
	* @param p1 the ending position in the model >= p0
	* @return the location of the end of the range.
	* @exception BadLocationException if the range is invalid
	*/
	@:overload private function drawSelectedText(g : java.awt.Graphics, x : Int, y : Int, p0 : Int, p1 : Int) : Int;
	
	/**
	* Gives access to a buffer that can be used to fetch
	* text from the associated document.
	*
	* @return the buffer
	*/
	@:overload @:final private function getLineBuffer() : javax.swing.text.Segment;
	
	/**
	* This is called by the nested wrapped line
	* views to determine the break location.  This can
	* be reimplemented to alter the breaking behavior.
	* It will either break at word or character boundaries
	* depending upon the break argument given at
	* construction.
	*/
	@:overload private function calculateBreakPosition(p0 : Int, p1 : Int) : Int;
	
	/**
	* Loads all of the children to initialize the view.
	* This is called by the <code>setParent</code> method.
	* Subclasses can reimplement this to initialize their
	* child views in a different manner.  The default
	* implementation creates a child view for each
	* child element.
	*
	* @param f the view factory
	*/
	@:overload override private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
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
	@:overload public function nextTabStop(x : Single, tabOffset : Int) : Single;
	
	/**
	* Renders using the given rendering surface and area
	* on that surface.  This is implemented to stash the
	* selection positions, selection colors, and font
	* metrics for the nested lines to use.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	*
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view along the given axis, if it
	* has any layout duties.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.  This is implemented to provide the superclass
	* behavior after first making sure that the current font
	* metrics are cached (for the nested lines which use
	* the metrics to determine the height of the potentially
	* wrapped lines).
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getPreferredSpan
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.  This is implemented to provide the superclass
	* behavior after first making sure that the current font
	* metrics are cached (for the nested lines which use
	* the metrics to determine the height of the potentially
	* wrapped lines).
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getMinimumSpan
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.  This is implemented to provide the superclass
	* behavior after first making sure that the current font
	* metrics are cached (for the nested lines which use
	* the metrics to determine the height of the potentially
	* wrapped lines).
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getMaximumSpan
	*/
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Gives notification that something was inserted into the
	* document in a location that this view is responsible for.
	* This is implemented to simply update the children.
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the
	* document in a location that this view is responsible for.
	* This is implemented to simply update the children.
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
	*
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload override public function changedUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
/**
* Simple view of a line that wraps if it doesn't
* fit withing the horizontal space allocated.
* This class tries to be lightweight by carrying little
* state of it's own and sharing the state of the outer class
* with it's sibblings.
*/
@:native('javax$swing$text$WrappedPlainView$WrappedLine') @:internal extern class WrappedPlainView_WrappedLine extends javax.swing.text.View
{
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either X_AXIS or Y_AXIS
	* @return   the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getPreferredSpan
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  The view may need to do layout and create child
	* views to enable itself to render into the given allocation.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does not represent a
	*   valid location in the associated document
	* @see View#modelToView
	*/
	@:overload override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.
	*
	* @param fx the X coordinate
	* @param fy the Y coordinate
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(fx : Single, fy : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	@:overload override public function insertUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	@:overload override public function removeUpdate(e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	
}
