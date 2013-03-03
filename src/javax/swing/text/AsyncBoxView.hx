package javax.swing.text;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class AsyncBoxView extends javax.swing.text.View
{
	/**
	* Construct a box view that does asynchronous layout.
	*
	* @param elem the element of the model to represent
	* @param axis the axis to tile along.  This can be
	*  either X_AXIS or Y_AXIS.
	*/
	@:overload @:public public function new(elem : javax.swing.text.Element, axis : Int) : Void;
	
	/**
	* Fetch the major axis (the axis the children
	* are tiled along).  This will have a value of
	* either X_AXIS or Y_AXIS.
	*/
	@:overload @:public public function getMajorAxis() : Int;
	
	/**
	* Fetch the minor axis (the axis orthoginal
	* to the tiled axis).  This will have a value of
	* either X_AXIS or Y_AXIS.
	*/
	@:overload @:public public function getMinorAxis() : Int;
	
	/**
	* Get the top part of the margin around the view.
	*/
	@:overload @:public public function getTopInset() : Single;
	
	/**
	* Set the top part of the margin around the view.
	*
	* @param i the value of the inset
	*/
	@:overload @:public public function setTopInset(i : Single) : Void;
	
	/**
	* Get the bottom part of the margin around the view.
	*/
	@:overload @:public public function getBottomInset() : Single;
	
	/**
	* Set the bottom part of the margin around the view.
	*
	* @param i the value of the inset
	*/
	@:overload @:public public function setBottomInset(i : Single) : Void;
	
	/**
	* Get the left part of the margin around the view.
	*/
	@:overload @:public public function getLeftInset() : Single;
	
	/**
	* Set the left part of the margin around the view.
	*
	* @param i the value of the inset
	*/
	@:overload @:public public function setLeftInset(i : Single) : Void;
	
	/**
	* Get the right part of the margin around the view.
	*/
	@:overload @:public public function getRightInset() : Single;
	
	/**
	* Set the right part of the margin around the view.
	*
	* @param i the value of the inset
	*/
	@:overload @:public public function setRightInset(i : Single) : Void;
	
	/**
	* Fetch the span along an axis that is taken up by the insets.
	*
	* @param axis the axis to determine the total insets along,
	*  either X_AXIS or Y_AXIS.
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getInsetSpan(axis : Int) : Single;
	
	/**
	* Set the estimatedMajorSpan property that determines if the
	* major span should be treated as being estimated.  If this
	* property is true, the value of setSize along the major axis
	* will change the requirements along the major axis and incremental
	* changes will be ignored until all of the children have been updated
	* (which will cause the property to automatically be set to false).
	* If the property is false the value of the majorSpan will be
	* considered to be accurate and incremental changes will be
	* added into the total as they are calculated.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function setEstimatedMajorSpan(isEstimated : Bool) : Void;
	
	/**
	* Is the major span currently estimated?
	*
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function getEstimatedMajorSpan() : Bool;
	
	/**
	* Fetch the object representing the layout state of
	* of the child at the given index.
	*
	* @param index the child index.  This should be a
	*   value >= 0 and < getViewCount().
	*/
	@:overload @:protected private function getChildState(index : Int) : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState;
	
	/**
	* Fetch the queue to use for layout.
	*/
	@:overload @:protected private function getLayoutQueue() : javax.swing.text.LayoutQueue;
	
	/**
	* New ChildState records are created through
	* this method to allow subclasses the extend
	* the ChildState records to do/hold more
	*/
	@:overload @:protected private function createChildState(v : javax.swing.text.View) : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState;
	
	/**
	* Requirements changed along the major axis.
	* This is called by the thread doing layout for
	* the given ChildState object when it has completed
	* fetching the child views new preferences.
	* Typically this would be the layout thread, but
	* might be the event thread if it is trying to update
	* something immediately (such as to perform a
	* model/view translation).
	* <p>
	* This is implemented to mark the major axis as having
	* changed so that a future check to see if the requirements
	* need to be published to the parent view will consider
	* the major axis.  If the span along the major axis is
	* not estimated, it is updated by the given delta to reflect
	* the incremental change.  The delta is ignored if the
	* major span is estimated.
	*/
	@:overload @:protected @:synchronized private function majorRequirementChange(cs : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState, delta : Single) : Void;
	
	/**
	* Requirements changed along the minor axis.
	* This is called by the thread doing layout for
	* the given ChildState object when it has completed
	* fetching the child views new preferences.
	* Typically this would be the layout thread, but
	* might be the GUI thread if it is trying to update
	* something immediately (such as to perform a
	* model/view translation).
	*/
	@:overload @:protected @:synchronized private function minorRequirementChange(cs : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState) : Void;
	
	/**
	* Publish the changes in preferences upward to the parent
	* view.  This is normally called by the layout thread.
	*/
	@:overload @:protected private function flushRequirementChanges() : Void;
	
	/**
	* Calls the superclass to update the child views, and
	* updates the status records for the children.  This
	* is expected to be called while a write lock is held
	* on the model so that interaction with the layout
	* thread will not happen (i.e. the layout thread
	* acquires a read lock before doing anything).
	*
	* @param offset the starting offset into the child views >= 0
	* @param length the number of existing views to replace >= 0
	* @param views the child views to insert
	*/
	@:overload @:public override public function replace(offset : Int, length : Int, views : java.NativeArray<javax.swing.text.View>) : Void;
	
	/**
	* Loads all of the children to initialize the view.
	* This is called by the {@link #setParent setParent}
	* method.  Subclasses can reimplement this to initialize
	* their child views in a different manner.  The default
	* implementation creates a child view for each
	* child element.
	* <p>
	* Normally a write-lock is held on the Document while
	* the children are being changed, which keeps the rendering
	* and layout threads safe.  The exception to this is when
	* the view is initialized to represent an existing element
	* (via this method), so it is synchronized to exclude
	* preferenceChanged while we are initializing.
	*
	* @param f the view factory
	* @see #setParent
	*/
	@:overload @:protected private function loadChildren(f : javax.swing.text.ViewFactory) : Void;
	
	/**
	* Fetches the child view index representing the given position in
	* the model.  This is implemented to fetch the view in the case
	* where there is a child view for each child element.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	*/
	@:overload @:protected @:synchronized private function getViewIndexAtPosition(pos : Int, b : javax.swing.text.Position.Position_Bias) : Int;
	
	/**
	* Update the layout in response to receiving notification of
	* change from the model.  This is implemented to note the
	* change on the ChildLocator so that offsets of the children
	* will be correctly computed.
	*
	* @param ec changes to the element this view is responsible
	*  for (may be null if there were no changes).
	* @param e the change information from the associated document
	* @param a the current allocation of the view
	* @see #insertUpdate
	* @see #removeUpdate
	* @see #changedUpdate
	*/
	@:overload @:protected override private function updateLayout(ec : javax.swing.event.DocumentEvent.DocumentEvent_ElementChange, e : javax.swing.event.DocumentEvent, a : java.awt.Shape) : Void;
	
	/**
	* Sets the parent of the view.
	* This is reimplemented to provide the superclass
	* behavior as well as calling the <code>loadChildren</code>
	* method if this view does not already have children.
	* The children should not be loaded in the
	* constructor because the act of setting the parent
	* may cause them to try to search up the hierarchy
	* (to get the hosting Container for example).
	* If this view has children (the view is being moved
	* from one place in the view hierarchy to another),
	* the <code>loadChildren</code> method will not be called.
	*
	* @param parent the parent of the view, null if none
	*/
	@:overload @:public override public function setParent(parent : javax.swing.text.View) : Void;
	
	/**
	* Child views can call this on the parent to indicate that
	* the preference has changed and should be reconsidered
	* for layout.  This is reimplemented to queue new work
	* on the layout thread.  This method gets messaged from
	* multiple threads via the children.
	*
	* @param child the child view
	* @param width true if the width preference has changed
	* @param height true if the height preference has changed
	* @see javax.swing.JComponent#revalidate
	*/
	@:overload @:public @:synchronized override public function preferenceChanged(child : javax.swing.text.View, width : Bool, height : Bool) : Void;
	
	/**
	* Sets the size of the view.  This should cause
	* layout of the view if the view caches any layout
	* information.
	* <p>
	* Since the major axis is updated asynchronously and should be
	* the sum of the tiled children the call is ignored for the major
	* axis.  Since the minor axis is flexible, work is queued to resize
	* the children if the minor span changes.
	*
	* @param width the width >= 0
	* @param height the height >= 0
	*/
	@:overload @:public override public function setSize(width : Single, height : Single) : Void;
	
	/**
	* Render the view using the given allocation and
	* rendering surface.
	* <p>
	* This is implemented to determine whether or not the
	* desired region to be rendered (i.e. the unclipped
	* area) is up to date or not.  If up-to-date the children
	* are rendered.  If not up-to-date, a task to build
	* the desired area is placed on the layout queue as
	* a high priority task.  This keeps by event thread
	* moving by rendering if ready, and postponing until
	* a later time if not ready (since paint requests
	* can be rescheduled).
	*
	* @param g the rendering surface to use
	* @param alloc the allocated region to render into
	* @see View#paint
	*/
	@:overload @:public override public function paint(g : java.awt.Graphics, alloc : java.awt.Shape) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload @:public override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return  the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload @:public override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis type
	*/
	@:overload @:public override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Returns the number of views in this view.  Since
	* the default is to not be a composite view this
	* returns 0.
	*
	* @return the number of views >= 0
	* @see View#getViewCount
	*/
	@:overload @:public override public function getViewCount() : Int;
	
	/**
	* Gets the nth child view.  Since there are no
	* children by default, this returns null.
	*
	* @param n the number of the view to get, >= 0 && < getViewCount()
	* @return the view
	*/
	@:overload @:public override public function getView(n : Int) : javax.swing.text.View;
	
	/**
	* Fetches the allocation for the given child view.
	* This enables finding out where various views
	* are located, without assuming the views store
	* their location.  This returns null since the
	* default is to not have any child views.
	*
	* @param index the index of the child, >= 0 && < getViewCount()
	* @param a  the allocation to this view.
	* @return the allocation to the child
	*/
	@:overload @:public override public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Returns the child view index representing the given position in
	* the model.  By default a view has no children so this is implemented
	* to return -1 to indicate there is no valid child index for any
	* position.
	*
	* @param pos the position >= 0
	* @return  index of the view representing the given position, or
	*   -1 if no view represents that position
	* @since 1.3
	*/
	@:require(java3) @:overload @:public override public function getViewIndex(pos : Int, b : javax.swing.text.Position.Position_Bias) : Int;
	
	/**
	* Provides a mapping from the document model coordinate space
	* to the coordinate space of the view mapped to it.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param b the bias toward the previous character or the
	*  next character represented by the offset, in case the
	*  position is a boundary of two views.
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does
	*   not represent a valid location in the associated document
	* @exception IllegalArgumentException for an invalid bias argument
	* @see View#viewToModel
	*/
	@:overload @:public override public function modelToView(pos : Int, a : java.awt.Shape, b : javax.swing.text.Position.Position_Bias) : java.awt.Shape;
	
	/**
	* Provides a mapping from the view coordinate space to the logical
	* coordinate space of the model.  The biasReturn argument will be
	* filled in to indicate that the point given is closer to the next
	* character in the model or the previous character in the model.
	* <p>
	* This is expected to be called by the GUI thread, holding a
	* read-lock on the associated model.  It is implemented to
	* locate the child view and determine it's allocation with a
	* lock on the ChildLocator object, and to call viewToModel
	* on the child view with a lock on the ChildState object
	* to avoid interaction with the layout thread.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocated region to render into
	* @return the location within the model that best represents the
	*  given point in the view >= 0.  The biasReturn argument will be
	* filled in to indicate that the point given is closer to the next
	* character in the model or the previous character in the model.
	*/
	@:overload @:public override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, biasReturn : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Provides a way to determine the next visually represented model
	* location that one might place a caret.  Some views may not be visible,
	* they might not be in the same order found in the model, or they just
	* might not allow access to some of the locations in the model.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @param direction the direction from the current position that can
	*  be thought of as the arrow keys typically found on a keyboard;
	*  this may be one of the following:
	*  <ul>
	*  <code>SwingConstants.WEST</code>
	*  <code>SwingConstants.EAST</code>
	*  <code>SwingConstants.NORTH</code>
	*  <code>SwingConstants.SOUTH</code>
	*  </ul>
	* @param biasRet an array contain the bias that was checked
	* @return the location within the model that best represents the next
	*  location visual position
	* @exception BadLocationException
	* @exception IllegalArgumentException if <code>direction</code> is invalid
	*/
	@:overload @:public override public function getNextVisualPositionFrom(pos : Int, b : javax.swing.text.Position.Position_Bias, a : java.awt.Shape, direction : Int, biasRet : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	/**
	* Object that manages the offsets of the
	* children.  All locking for management of
	* child locations is on this object.
	*/
	@:protected private var locator : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildLocator;
	
	
}
/**
* A class to manage the effective position of the
* child views in a localized area while changes are
* being made around the localized area.  The AsyncBoxView
* may be continuously changing, but the visible area
* needs to remain fairly stable until the layout thread
* decides to publish an update to the parent.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$text$AsyncBoxView$ChildLocator') extern class AsyncBoxView_ChildLocator
{
	/**
	* construct a child locator.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Notification that a child changed.  This can effect
	* whether or not new offset calculations are needed.
	* This is called by a ChildState object that has
	* changed it's major span.  This can therefore be
	* called by multiple threads.
	*/
	@:overload @:public @:synchronized public function childChanged(cs : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState) : Void;
	
	/**
	* Paint the children that intersect the clip area.
	*/
	@:overload @:public @:synchronized public function paintChildren(g : java.awt.Graphics) : Void;
	
	/**
	* Fetch the allocation to use for a child view.
	* This will update the offsets for all children
	* not yet updated before the given index.
	*/
	@:overload @:public @:synchronized public function getChildAllocation(index : Int, a : java.awt.Shape) : java.awt.Shape;
	
	/**
	* Fetches the child view index at the given point.
	* This is called by the various View methods that
	* need to calculate which child to forward a message
	* to.  This should be called by a block synchronized
	* on this object, and would typically be followed
	* with one or more calls to getChildAllocation that
	* should also be in the synchronized block.
	*
	* @param x the X coordinate >= 0
	* @param y the Y coordinate >= 0
	* @param a the allocation to the View
	* @return the nearest child index
	*/
	@:overload @:public public function getViewIndexAtPoint(x : Single, y : Single, a : java.awt.Shape) : Int;
	
	/**
	* Fetch the allocation to use for a child view.
	* <em>This does not update the offsets in the ChildState
	* records.</em>
	*/
	@:overload @:protected private function getChildAllocation(index : Int) : java.awt.Shape;
	
	/**
	* Copy the currently allocated shape into the Rectangle
	* used to store the current allocation.  This would be
	* a floating point rectangle in a Java2D-specific implmentation.
	*/
	@:overload @:protected private function setAllocation(a : java.awt.Shape) : Void;
	
	/**
	* Locate the view responsible for an offset into the box
	* along the major axis.  Make sure that offsets are set
	* on the ChildState objects up to the given target span
	* past the desired offset.
	*
	* @return   index of the view representing the given visual
	*   location (targetOffset), or -1 if no view represents
	*   that location
	*/
	@:overload @:protected private function getViewIndexAtVisualOffset(targetOffset : Single) : Int;
	
	/**
	* The location of the last offset calculation
	* that is valid.
	*/
	@:protected private var lastValidOffset : javax.swing.text.AsyncBoxView.AsyncBoxView_ChildState;
	
	/**
	* The last seen allocation (for repainting when changes
	* are flushed upward).
	*/
	@:protected private var lastAlloc : java.awt.Rectangle;
	
	/**
	* A shape to use for the child allocation to avoid
	* creating a lot of garbage.
	*/
	@:protected private var childAlloc : java.awt.Rectangle;
	
	
}
/**
* A record representing the layout state of a
* child view.  It is runnable as a task on another
* thread.  All access to the child view that is
* based upon a read-lock on the model should synchronize
* on this object (i.e. The layout thread and the GUI
* thread can both have a read lock on the model at the
* same time and are not protected from each other).
* Access to a child view hierarchy is serialized via
* synchronization on the ChildState instance.
* @since 1.3
*/
@:require(java3) @:native('javax$swing$text$AsyncBoxView$ChildState') extern class AsyncBoxView_ChildState implements java.lang.Runnable
{
	/**
	* Construct a child status.  This needs to start
	* out as fairly large so we don't falsely begin with
	* the idea that all of the children are visible.
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(v : javax.swing.text.View) : Void;
	
	/**
	* Fetch the child view this record represents
	*/
	@:overload @:public public function getChildView() : javax.swing.text.View;
	
	/**
	* Update the child state.  This should be
	* called by the thread that desires to spend
	* time updating the child state (intended to
	* be the layout thread).
	* <p>
	* This aquires a read lock on the associated
	* document for the duration of the update to
	* ensure the model is not changed while it is
	* operating.  The first thing to do would be
	* to see if any work actually needs to be done.
	* The following could have conceivably happened
	* while the state was waiting to be updated:
	* <ol>
	* <li>The child may have been removed from the
	* view hierarchy.
	* <li>The child may have been updated by a
	* higher priority operation (i.e. the child
	* may have become visible).
	* </ol>
	*/
	@:overload @:public public function run() : Void;
	
	/**
	* What is the span along the minor axis.
	*/
	@:overload @:public public function getMinorSpan() : Single;
	
	/**
	* What is the offset along the minor axis
	*/
	@:overload @:public public function getMinorOffset() : Single;
	
	/**
	* What is the span along the major axis.
	*/
	@:overload @:public public function getMajorSpan() : Single;
	
	/**
	* Get the offset along the major axis
	*/
	@:overload @:public public function getMajorOffset() : Single;
	
	/**
	* This method should only be called by the ChildLocator,
	* it is simply a convenient place to hold the cached
	* location.
	*/
	@:overload @:public public function setMajorOffset(offs : Single) : Void;
	
	/**
	* Mark preferences changed for this child.
	*
	* @param width true if the width preference has changed
	* @param height true if the height preference has changed
	* @see javax.swing.JComponent#revalidate
	*/
	@:overload @:public public function preferenceChanged(width : Bool, height : Bool) : Void;
	
	/**
	* Has the child view been laid out.
	*/
	@:overload @:public public function isLayoutValid() : Bool;
	
	
}
/**
* Task to flush requirement changes upward
*/
@:native('javax$swing$text$AsyncBoxView$FlushTask') @:internal extern class AsyncBoxView_FlushTask implements java.lang.Runnable
{
	@:overload @:public public function run() : Void;
	
	
}
