package javax.swing.text;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class FlowView extends javax.swing.text.BoxView
{
	/**
	* Constructs a FlowView for the given element.
	*
	* @param elem the element that this view is responsible for
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	*/
	@:overload public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* Fetches the axis along which views should be
	* flowed.  By default, this will be the axis
	* orthogonal to the axis along which the flow
	* rows are tiled (the axis of the default flow
	* rows themselves).  This is typically used
	* by the <code>FlowStrategy</code>.
	*/
	@:overload public function getFlowAxis() : Int;
	
	/**
	* Fetch the constraining span to flow against for
	* the given child index.  This is called by the
	* FlowStrategy while it is updating the flow.
	* A flow can be shaped by providing different values
	* for the row constraints.  By default, the entire
	* span inside of the insets along the flow axis
	* is returned.
	*
	* @param index the index of the row being updated.
	*   This should be a value >= 0 and < getViewCount().
	* @see #getFlowStart
	*/
	@:overload public function getFlowSpan(index : Int) : Int;
	
	/**
	* Fetch the location along the flow axis that the
	* flow span will start at.  This is called by the
	* FlowStrategy while it is updating the flow.
	* A flow can be shaped by providing different values
	* for the row constraints.

	* @param index the index of the row being updated.
	*   This should be a value >= 0 and < getViewCount().
	* @see #getFlowSpan
	*/
	@:overload public function getFlowStart(index : Int) : Int;
	
	/**
	* Create a View that should be used to hold a
	* a rows worth of children in a flow.  This is
	* called by the FlowStrategy when new children
	* are added or removed (i.e. rows are added or
	* removed) in the process of updating the flow.
	*/
	@:overload @:abstract private function createRow() : javax.swing.text.View;
	
	/**
	* Loads all of the children to initialize the view.
	* This is called by the <code>setParent</code> method.
	* This is reimplemented to not load any children directly
	* (as they are created in the process of formatting).
	* If the layoutPool variable is null, an instance of
	* LogicalView is created to represent the logical view
	* that is used in the process of formatting.
	*
	* @param f the view factory
	*/
	@:overload override private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the child view index representing the given position in
	* the model.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	*/
	@:overload override private function getViewIndexAtPosition(pos : Int) : Int;
	
	/**
	* Lays out the children.  If the span along the flow
	* axis has changed, layout is marked as invalid which
	* which will cause the superclass behavior to recalculate
	* the layout along the box axis.  The FlowStrategy.layout
	* method will be called to rebuild the flow rows as
	* appropriate.  If the height of this view changes
	* (determined by the perferred size along the box axis),
	* a preferenceChanged is called.  Following all of that,
	* the normal box layout of the superclass is performed.
	*
	* @param width  the width to lay out against >= 0.  This is
	*   the width inside of the inset area.
	* @param height the height to lay out against >= 0 This
	*   is the height inside of the inset area.
	*/
	@:overload override private function layout(width : Int, height : Int) : Void;
	
	/**
	* Calculate equirements along the minor axis.  This
	* is implemented to forward the request to the logical
	* view by calling getMinimumSpan, getPreferredSpan, and
	* getMaximumSpan on it.
	*/
	@:overload override private function calculateMinorAxisRequirements(axis : Int, r : javax.swing.SizeRequirements) : javax.swing.SizeRequirements;
	
	/**
	* Gives notification that something was inserted into the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#insertUpdate
	*/
	@:overload override public function insertUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#removeUpdate
	*/
	@:overload override public function removeUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param changes the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see View#changedUpdate
	*/
	@:overload override public function changedUpdate(changes : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/** {@inheritDoc} */
	@:overload override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Default constraint against which the flow is
	* created against.
	*/
	private var layoutSpan : Int;
	
	/**
	* These are the views that represent the child elements
	* of the element this view represents (The logical view
	* to translate to a physical view).  These are not
	* directly children of this view.  These are either
	* placed into the rows directly or used for the purpose
	* of breaking into smaller chunks, to form the physical
	* view.
	*/
	private var layoutPool : javax.swing.text.View;
	
	/**
	* The behavior for keeping the flow updated.  By
	* default this is a singleton shared by all instances
	* of FlowView (FlowStrategy is stateless).  Subclasses
	* can create an alternative strategy, which might keep
	* state.
	*/
	private var strategy : FlowView_FlowStrategy;
	
	
}
/**
* Strategy for maintaining the physical form
* of the flow.  The default implementation is
* completely stateless, and recalculates the
* entire flow if the layout is invalid on the
* given FlowView.  Alternative strategies can
* be implemented by subclassing, and might
* perform incrementatal repair to the layout
* or alternative breaking behavior.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$text$FlowView$FlowStrategy') extern class FlowView_FlowStrategy
{
	/**
	* Gives notification that something was inserted into the document
	* in a location that the given flow view is responsible for.  The
	* strategy should update the appropriate changed region (which
	* depends upon the strategy used for repair).
	*
	* @param e the change information from the associated document
	* @param alloc the current allocation of the view inside of the insets.
	*   This value will be null if the view has not yet been displayed.
	* @see View#insertUpdate
	*/
	@:overload public function insertUpdate(fv : FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Gives notification that something was removed from the document
	* in a location that the given flow view is responsible for.
	*
	* @param e the change information from the associated document
	* @param alloc the current allocation of the view inside of the insets.
	* @see View#removeUpdate
	*/
	@:overload public function removeUpdate(fv : FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* Gives notification from the document that attributes were changed
	* in a location that this view is responsible for.
	*
	* @param fv     the <code>FlowView</code> containing the changes
	* @param e      the <code>DocumentEvent</code> describing the changes
	*               done to the Document
	* @param alloc  Bounds of the View
	* @see View#changedUpdate
	*/
	@:overload public function changedUpdate(fv : FlowView, e : javax.swing.event.DocumentEvent, alloc : java.awt.Rectangle) : Void;
	
	/**
	* This method gives flow strategies access to the logical
	* view of the FlowView.
	*/
	@:overload private function getLogicalView(fv : FlowView) : javax.swing.text.View;
	
	/**
	* Update the flow on the given FlowView.  By default, this causes
	* all of the rows (child views) to be rebuilt to match the given
	* constraints for each row.  This is called by a FlowView.layout
	* to update the child views in the flow.
	*
	* @param fv the view to reflow
	*/
	@:overload public function layout(fv : FlowView) : Void;
	
	/**
	* Creates a row of views that will fit within the
	* layout span of the row.  This is called by the layout method.
	* This is implemented to fill the row by repeatedly calling
	* the createView method until the available span has been
	* exhausted, a forced break was encountered, or the createView
	* method returned null.  If the remaining span was exhaused,
	* the adjustRow method will be called to perform adjustments
	* to the row to try and make it fit into the given span.
	*
	* @param rowIndex the index of the row to fill in with views.  The
	*   row is assumed to be empty on entry.
	* @param pos  The current position in the children of
	*   this views element from which to start.
	* @return the position to start the next row
	*/
	@:overload private function layoutRow(fv : FlowView, rowIndex : Int, pos : Int) : Int;
	
	/**
	* Adjusts the given row if possible to fit within the
	* layout span.  By default this will try to find the
	* highest break weight possible nearest the end of
	* the row.  If a forced break is encountered, the
	* break will be positioned there.
	*
	* @param rowIndex the row to adjust to the current layout
	*  span.
	* @param desiredSpan the current layout span >= 0
	* @param x the location r starts at.
	*/
	@:overload private function adjustRow(fv : FlowView, rowIndex : Int, desiredSpan : Int, x : Int) : Void;
	
	/**
	* Creates a view that can be used to represent the current piece
	* of the flow.  This can be either an entire view from the
	* logical view, or a fragment of the logical view.
	*
	* @param fv the view holding the flow
	* @param startOffset the start location for the view being created
	* @param spanLeft the about of span left to fill in the row
	* @param rowIndex the row the view will be placed into
	*/
	@:overload private function createView(fv : FlowView, startOffset : Int, spanLeft : Int, rowIndex : Int) : javax.swing.text.View;
	
	
}
/**
* This class can be used to represent a logical view for
* a flow.  It keeps the children updated to reflect the state
* of the model, gives the logical child views access to the
* view hierarchy, and calculates a preferred span.  It doesn't
* do any rendering, layout, or model/view translation.
*/
@:native('javax$swing$text$FlowView$LogicalView') @:internal extern class FlowView_LogicalView extends javax.swing.text.CompositeView
{
	@:overload override private function getViewIndexAtPosition(pos : Int) : Int;
	
	@:overload override private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the attributes to use when rendering.  This view
	* isn't directly responsible for an element so it returns
	* the outer classes attributes.
	*/
	@:overload override public function getAttributes() : javax.swing.text.AttributeSet;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getPreferredSpan
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.  The is implemented to find the minimum unbreakable
	* span.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @see View#getPreferredSpan
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Forward the DocumentEvent to the given child view.  This
	* is implemented to reparent the child to the logical view
	* (the children may have been parented by a row in the flow
	* if they fit without breaking) and then execute the superclass
	* behavior.
	*
	* @param v the child view to forward the event to.
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @param f the factory to use to rebuild if the view has children
	* @see #forwardUpdate
	* @since 1.3
	*/
	@:require(java3) @:overload override private function forwardUpdateToView(v : javax.swing.text.View, e : javax.swing.event.DocumentEvent, a : java.awt.Shape, f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Renders using the given rendering surface and area on that
	* surface.  This is implemented to do nothing, the logical
	* view is never visible.
	*
	* @param g the rendering surface to use
	* @param allocation the allocated region to render into
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, allocation : java.awt.Shape) : Void;
	
	/**
	* Tests whether a point lies before the rectangle range.
	* Implemented to return false, as hit detection is not
	* performed on the logical view.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the rectangle
	* @return true if the point is before the specified range
	*/
	@:overload override private function isBefore(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	/**
	* Tests whether a point lies after the rectangle range.
	* Implemented to return false, as hit detection is not
	* performed on the logical view.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the rectangle
	* @return true if the point is after the specified range
	*/
	@:overload override private function isAfter(x : Int, y : Int, alloc : java.awt.Rectangle) : Bool;
	
	/**
	* Fetches the child view at the given point.
	* Implemented to return null, as hit detection is not
	* performed on the logical view.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param alloc the parent's allocation on entry, which should
	*   be changed to the child's allocation on exit
	* @return the child view
	*/
	@:overload override private function getViewAtPoint(x : Int, y : Int, alloc : java.awt.Rectangle) : javax.swing.text.View;
	
	/**
	* Returns the allocation for a given child.
	* Implemented to do nothing, as the logical view doesn't
	* perform layout on the children.
	*
	* @param index the index of the child, >= 0 && < getViewCount()
	* @param a  the allocation to the interior of the box on entry,
	*   and the allocation of the child view at the index on exit.
	*/
	@:overload override private function childAllocation(index : Int, a : java.awt.Rectangle) : Void;
	
	
}
