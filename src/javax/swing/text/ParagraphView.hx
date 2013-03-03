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
extern class ParagraphView extends javax.swing.text.FlowView implements javax.swing.text.TabExpander
{
	/**
	* Constructs a <code>ParagraphView</code> for the given element.
	*
	* @param elem the element that this view is responsible for
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Sets the type of justification.
	*
	* @param j one of the following values:
	* <ul>
	* <li><code>StyleConstants.ALIGN_LEFT</code>
	* <li><code>StyleConstants.ALIGN_CENTER</code>
	* <li><code>StyleConstants.ALIGN_RIGHT</code>
	* </ul>
	*/
	@:overload @:protected private function setJustification(j : Int) : Void;
	
	/**
	* Sets the line spacing.
	*
	* @param ls the value is a factor of the line hight
	*/
	@:overload @:protected private function setLineSpacing(ls : Single) : Void;
	
	/**
	* Sets the indent on the first line.
	*
	* @param fi the value in points
	*/
	@:overload @:protected private function setFirstLineIndent(fi : Single) : Void;
	
	/**
	* Set the cached properties from the attributes.
	*/
	@:overload @:protected private function setPropertiesFromAttributes() : Void;
	
	/**
	* Returns the number of views that this view is
	* responsible for.
	* The child views of the paragraph are rows which
	* have been used to arrange pieces of the <code>View</code>s
	* that represent the child elements.  This is the number
	* of views that have been tiled in two dimensions,
	* and should be equivalent to the number of child elements
	* to the element this view is responsible for.
	*
	* @return the number of views that this <code>ParagraphView</code>
	*          is responsible for
	*/
	@:overload @:protected private function getLayoutViewCount() : Int;
	
	/**
	* Returns the view at a given <code>index</code>.
	* The child views of the paragraph are rows which
	* have been used to arrange pieces of the <code>Views</code>
	* that represent the child elements.  This methods returns
	* the view responsible for the child element index
	* (prior to breaking).  These are the Views that were
	* produced from a factory (to represent the child
	* elements) and used for layout.
	*
	* @param index the <code>index</code> of the desired view
	* @return the view at <code>index</code>
	*/
	@:overload @:protected private function getLayoutView(index : Int) : javax.swing.text.View;
	
	/**
	* Returns the next visual position for the cursor, in
	* either the east or west direction.
	* Overridden from <code>CompositeView</code>.
	* @param pos position into the model
	* @param b either <code>Position.Bias.Forward</code> or
	*          <code>Position.Bias.Backward</code>
	* @param a the allocated region to render into
	* @param direction either <code>SwingConstants.NORTH</code>
	*          or <code>SwingConstants.SOUTH</code>
	* @param biasRet an array containing the bias that were checked
	*  in this method
	* @return the location in the model that represents the
	*  next location visual position
	*/
	@:overload @:protected override private function getNextNorthSouthVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Returns the closest model position to <code>x</code>.
	* <code>rowIndex</code> gives the index of the view that corresponds
	* that should be looked in.
	* @param pos  position into the model
	* @param a the allocated region to render into
	* @param direction one of the following values:
	* <ul>
	* <li><code>SwingConstants.NORTH</code>
	* <li><code>SwingConstants.SOUTH</code>
	* </ul>
	* @param biasRet an array containing the bias that were checked
	*  in this method
	* @param rowIndex the index of the view
	* @param x the x coordinate of interest
	* @return the closest model position to <code>x</code>
	*/
	@:overload @:protected private function getClosestPositionTo(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>, rowIndex : Int, x : Int) : Int;
	
	/**
	* Determines in which direction the next view lays.
	* Consider the <code>View</code> at index n.
	* Typically the <code>View</code>s are layed out
	* from left to right, so that the <code>View</code>
	* to the EAST will be at index n + 1, and the
	* <code>View</code> to the WEST will be at index n - 1.
	* In certain situations, such as with bidirectional text,
	* it is possible that the <code>View</code> to EAST is not
	* at index n + 1, but rather at index n - 1,
	* or that the <code>View</code> to the WEST is not at
	* index n - 1, but index n + 1.  In this case this method
	* would return true, indicating the <code>View</code>s are
	* layed out in descending order.
	* <p>
	* This will return true if the text is layed out right
	* to left at position, otherwise false.
	*
	* @param position position into the model
	* @param bias either <code>Position.Bias.Forward</code> or
	*          <code>Position.Bias.Backward</code>
	* @return true if the text is layed out right to left at
	*         position, otherwise false.
	*/
	@:overload @:protected override private function flipEastAndWestAtEnds(position : Int, bias : javax.swing.text.Position.Position_Bias) : Bool;
	
	/**
	* Fetches the constraining span to flow against for
	* the given child index.
	* @param index the index of the view being queried
	* @return the constraining span for the given view at
	*  <code>index</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getFlowSpan(index : Int) : Int;
	
	/**
	* Fetches the location along the flow axis that the
	* flow span will start at.
	* @param index the index of the view being queried
	* @return the location for the given view at
	*  <code>index</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getFlowStart(index : Int) : Int;
	
	/**
	* Create a <code>View</code> that should be used to hold a
	* a row's worth of children in a flow.
	* @return the new <code>View</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected override private function createRow() : javax.swing.text.View;
	
	/**
	* Returns the next tab stop position given a reference position.
	* This view implements the tab coordinate system, and calls
	* <code>getTabbedSpan</code> on the logical children in the process
	* of layout to determine the desired span of the children.  The
	* logical children can delegate their tab expansion upward to
	* the paragraph which knows how to expand tabs.
	* <code>LabelView</code> is an example of a view that delegates
	* its tab expansion needs upward to the paragraph.
	* <p>
	* This is implemented to try and locate a <code>TabSet</code>
	* in the paragraph element's attribute set.  If one can be
	* found, its settings will be used, otherwise a default expansion
	* will be provided.  The base location for for tab expansion
	* is the left inset from the paragraphs most recent allocation
	* (which is what the layout of the children is based upon).
	*
	* @param x the X reference position
	* @param tabOffset the position within the text stream
	*   that the tab occurred at >= 0
	* @return the trailing end of the tab expansion >= 0
	* @see TabSet
	* @see TabStop
	* @see LabelView
	*/
	@:overload @:public public function nextTabStop(x : Single, tabOffset : Int) : Single;
	
	/**
	* Gets the <code>Tabset</code> to be used in calculating tabs.
	*
	* @return the <code>TabSet</code>
	*/
	@:overload @:protected private function getTabSet() : javax.swing.text.TabSet;
	
	/**
	* Returns the size used by the views between
	* <code>startOffset</code> and <code>endOffset</code>.
	* This uses <code>getPartialView</code> to calculate the
	* size if the child view implements the
	* <code>TabableView</code> interface. If a
	* size is needed and a <code>View</code> does not implement
	* the <code>TabableView</code> interface,
	* the <code>preferredSpan</code> will be used.
	*
	* @param startOffset the starting document offset >= 0
	* @param endOffset the ending document offset >= startOffset
	* @return the size >= 0
	*/
	@:overload @:protected private function getPartialSize(startOffset : Int, endOffset : Int) : Single;
	
	/**
	* Finds the next character in the document with a character in
	* <code>string</code>, starting at offset <code>start</code>. If
	* there are no characters found, -1 will be returned.
	*
	* @param string the string of characters
	* @param start where to start in the model >= 0
	* @return the document offset, or -1 if no characters found
	*/
	@:overload @:protected private function findOffsetToCharactersInString(string : java.NativeArray<java.StdTypes.Char16>, start : Int) : Int;
	
	/**
	* Returns where the tabs are calculated from.
	* @return where tabs are calculated from
	*/
	@:overload @:protected private function getTabBase() : Single;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  This is implemented to delgate to the superclass
	* after stashing the base coordinate for tab calculations.
	*
	* @param g the rendering surface to use
	* @param a the allocated region to render into
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  This is implemented to give the alignment to the
	* center of the first row along the y axis, and the default
	* along the x axis.
	*
	* @param axis may be either <code>View.X_AXIS</code> or
	*   <code>View.Y_AXIS</code>
	* @return the desired alignment.  This should be a value
	*   between 0.0 and 1.0 inclusive, where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin.  An alignment of 0.5 would be the
	*   center of the view.
	*/
	@:overload @:public override public function getAlignment(axis : Int) : Single;
	
	/**
	* Breaks this view on the given axis at the given length.
	* <p>
	* <code>ParagraphView</code> instances are breakable
	* along the <code>Y_AXIS</code> only, and only if
	* <code>len</code> is after the first line.
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*  or <code>View.Y_AXIS</code>
	* @param len specifies where a potential break is desired
	*  along the given axis >= 0
	* @param a the current allocation of the view
	* @return the fragment of the view that represents the
	*  given span, if the view can be broken; if the view
	*  doesn't support breaking behavior, the view itself is
	*  returned
	* @see View#breakView
	*/
	@:overload @:public public function breakView(axis : Int, len : Single, a : java.awt.Shape) : javax.swing.text.View;
	
	/**
	* Gets the break weight for a given location.
	* <p>
	* <code>ParagraphView</code> instances are breakable
	* along the <code>Y_AXIS</code> only, and only if
	* <code>len</code> is after the first row.  If the length
	* is less than one row, a value of <code>BadBreakWeight</code>
	* is returned.
	*
	* @param axis may be either <code>View.X_AXIS</code>
	*  or <code>View.Y_AXIS</code>
	* @param len specifies where a potential break is desired >= 0
	* @return a value indicating the attractiveness of breaking here;
	*  either <code>GoodBreakWeight</code> or <code>BadBreakWeight</code>
	* @see View#getBreakWeight
	*/
	@:overload @:public public function getBreakWeight(axis : Int, len : Single) : Int;
	
	/**
	* Calculate the needs for the paragraph along the minor axis.
	*
	* <p>This uses size requirements of the superclass, modified to take into
	* account the non-breakable areas at the adjacent views edges.  The minimal
	* size requirements for such views should be no less than the sum of all
	* adjacent fragments.</p>
	*
	* <p>If the {@code axis} parameter is neither {@code View.X_AXIS} nor
	* {@code View.Y_AXIS}, {@link IllegalArgumentException} is thrown.  If the
	* {@code r} parameter is {@code null,} a new {@code SizeRequirements}
	* object is created, otherwise the supplied {@code SizeRequirements}
	* object is returned.</p>
	*
	* @param axis  the minor axis
	* @param r     the input {@code SizeRequirements} object
	* @return      the new or adjusted {@code SizeRequirements} object
	* @throws IllegalArgumentException  if the {@code axis} parameter is invalid
	*/
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the
	*  associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload @:public override public function changedUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/** Indentation for the first line, from the left inset. */
	@:protected private var firstLineIndent : Int;
	
	
}
/**
* Internally created view that has the purpose of holding
* the views that represent the children of the paragraph
* that have been arranged in rows.
*/
@:native('javax$swing$text$ParagraphView$Row') @:internal extern class ParagraphView_Row extends javax.swing.text.BoxView
{
	/**
	* This is reimplemented to do nothing since the
	* paragraph fills in the row with its needed
	* children.
	*/
	@:overload @:protected override private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the attributes to use when rendering.  This view
	* isn't directly responsible for an element so it returns
	* the outer classes attributes.
	*/
	@:overload @:public override public function getAttributes() : javax.swing.text.AttributeSet;
	
	@:overload @:public override public function getAlignment(axis : Int) : Single;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.  This is
	* implemented to let the superclass find the position along
	* the major axis and the allocation of the row is used
	* along the minor axis, so that even though the children
	* are different heights they all get the same caret height.
	*
	* @param pos the position to convert
	* @param a the allocated region to render into
	* @return the bounding box of the given position
	* @exception BadLocationException  if the given position does not represent a
	*   valid location in the associated document
	* @see View#modelToView
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Range represented by a row in the paragraph is only
	* a subset of the total range of the paragraph element.
	* @see View#getRange
	*/
	@:overload @:public override public function getStartOffset() : Int;
	
	@:overload @:public override public function getEndOffset() : Int;
	
	/**
	* Perform layout for the minor axis of the box (i.e. the
	* axis orthoginal to the axis that it represents).  The results
	* of the layout should be placed in the given arrays which represent
	* the allocations to the children along the minor axis.
	* <p>
	* This is implemented to do a baseline layout of the children
	* by calling BoxView.baselineLayout.
	*
	* @param targetSpan the total span given to the view, which
	*  whould be used to layout the children.
	* @param axis the axis being layed out.
	* @param offsets the offsets from the origin of the view for
	*  each of the child views.  This is a return value and is
	*  filled in by the implementation of this method.
	* @param spans the span of each child view.  This is a return
	*  value and is filled in by the implementation of this method.
	* @return the offset and span for each child view in the
	*  offsets and spans parameters
	*/
	@:overload @:protected override private function layoutMinorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	@:overload @:protected override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	@:overload @:protected override private function calculateMajorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	@:overload @:protected override private function layoutMajorAxis(targetSpan : Int, axis : Int, offsets : java.NativeArray<Int>, spans : java.NativeArray<Int>) : Void;
	
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Fetches the child view index representing the given position in
	* the model.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	*/
	@:overload @:protected override private function getViewIndexAtPosition(pos : Int) : Int;
	
	/**
	* Gets the left inset.
	*
	* @return the inset
	*/
	@:overload @:protected override private function getLeftInset() : java.StdTypes.Int16;
	
	@:overload @:protected override private function getBottomInset() : java.StdTypes.Int16;
	
	
}
