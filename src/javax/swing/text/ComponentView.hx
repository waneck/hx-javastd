package javax.swing.text;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Component decorator that implements the view interface.  The
* entire element is used to represent the component.  This acts
* as a gateway from the display-only View implementations to
* interactive lightweight components (ie it allows components
* to be embedded into the View hierarchy).
* <p>
* The component is placed relative to the text baseline
* according to the value returned by
* <code>Component.getAlignmentY</code>.  For Swing components
* this value can be conveniently set using the method
* <code>JComponent.setAlignmentY</code>.  For example, setting
* a value of <code>0.75</code> will cause 75 percent of the
* component to be above the baseline, and 25 percent of the
* component to be below the baseline.
* <p>
* This class is implemented to do the extra work necessary to
* work properly in the presence of multiple threads (i.e. from
* asynchronous notification of model changes for example) by
* ensuring that all component access is done on the event thread.
* <p>
* The component used is determined by the return value of the
* createComponent method.  The default implementation of this
* method is to return the component held as an attribute of
* the element (by calling StyleConstants.getComponent).  A
* limitation of this behavior is that the component cannot
* be used by more than one text component (i.e. with a shared
* model).  Subclasses can remove this constraint by implementing
* the createComponent to actually create a component based upon
* some kind of specification contained in the attributes.  The
* ObjectView class in the html package is an example of a
* ComponentView implementation that supports multiple component
* views of a shared model.
*
* @author Timothy Prinzing
*/
extern class ComponentView extends javax.swing.text.View
{
	/**
	* Creates a new ComponentView object.
	*
	* @param elem the element to decorate
	*/
	@:overload public function new(elem : javax.swing.text.Element) : Void;
	
	/**
	* Create the component that is associated with
	* this view.  This will be called when it has
	* been determined that a new component is needed.
	* This would result from a call to setParent or
	* as a result of being notified that attributes
	* have changed.
	*/
	@:overload private function createComponent() : java.awt.Component;
	
	/**
	* Fetch the component associated with the view.
	*/
	@:overload @:final public function getComponent() : java.awt.Component;
	
	/**
	* The real paint behavior occurs naturally from the association
	* that the component has with its parent container (the same
	* container hosting this view).  This is implemented to do nothing.
	*
	* @param g the graphics context
	* @param a the shape
	* @see View#paint
	*/
	@:overload override public function paint(g : java.awt.Graphics, a : java.awt.Shape) : Void;
	
	/**
	* Determines the preferred span for this view along an
	* axis.  This is implemented to return the value
	* returned by Component.getPreferredSize along the
	* axis of interest.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getPreferredSpan(axis : Int) : Single;
	
	/**
	* Determines the minimum span for this view along an
	* axis.  This is implemented to return the value
	* returned by Component.getMinimumSize along the
	* axis of interest.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getMinimumSpan(axis : Int) : Single;
	
	/**
	* Determines the maximum span for this view along an
	* axis.  This is implemented to return the value
	* returned by Component.getMaximumSize along the
	* axis of interest.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return   the span the view would like to be rendered into >= 0.
	*           Typically the view is told to render into the span
	*           that is returned, although there is no guarantee.
	*           The parent may choose to resize or break the view.
	* @exception IllegalArgumentException for an invalid axis
	*/
	@:overload override public function getMaximumSpan(axis : Int) : Single;
	
	/**
	* Determines the desired alignment for this view along an
	* axis.  This is implemented to give the alignment of the
	* embedded component.
	*
	* @param axis may be either View.X_AXIS or View.Y_AXIS
	* @return the desired alignment.  This should be a value
	*   between 0.0 and 1.0 where 0 indicates alignment at the
	*   origin and 1.0 indicates alignment to the full span
	*   away from the origin.  An alignment of 0.5 would be the
	*   center of the view.
	*/
	@:overload override public function getAlignment(axis : Int) : Single;
	
	/**
	* Sets the parent for a child view.
	* The parent calls this on the child to tell it who its
	* parent is, giving the view access to things like
	* the hosting Container.  The superclass behavior is
	* executed, followed by a call to createComponent if
	* the parent view parameter is non-null and a component
	* has not yet been created. The embedded components parent
	* is then set to the value returned by <code>getContainer</code>.
	* If the parent view parameter is null, this view is being
	* cleaned up, thus the component is removed from its parent.
	* <p>
	* The changing of the component hierarchy will
	* touch the component lock, which is the one thing
	* that is not safe from the View hierarchy.  Therefore,
	* this functionality is executed immediately if on the
	* event thread, or is queued on the event queue if
	* called from another thread (notification of change
	* from an asynchronous update).
	*
	* @param p the parent
	*/
	@:overload override public function setParent(p : javax.swing.text.View) : Void;
	
	/**
	* Provides a mapping from the coordinate space of the model to
	* that of the view.
	*
	* @param pos the position to convert >= 0
	* @param a the allocated region to render into
	* @return the bounding box of the given position is returned
	* @exception BadLocationException  if the given position does not
	*   represent a valid location in the associated document
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
	* @return the location within the model that best represents
	*    the given point in the view
	* @see View#viewToModel
	*/
	@:overload override public function viewToModel(x : Single, y : Single, a : java.awt.Shape, bias : java.NativeArray<javax.swing.text.Position.Position_Bias>) : Int;
	
	
}
/**
* This class feeds the invalidate back to the
* hosting View.  This is needed to get the View
* hierarchy to consider giving the component
* a different size (i.e. layout may have been
* cached between the associated view and the
* container hosting this component).
*/
@:native('javax$swing$text$ComponentView$Invalidator') @:internal extern class ComponentView_Invalidator extends java.awt.Container implements java.beans.PropertyChangeListener
{
	/**
	* The components invalid layout needs
	* to be propagated through the view hierarchy
	* so the views (which position the component)
	* can have their layout recomputed.
	*/
	@:overload override public function invalidate() : Void;
	
	@:overload override public function doLayout() : Void;
	
	@:overload override public function setBounds(x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function validateIfNecessary() : Void;
	
	/**
	* Shows or hides this component depending on the value of parameter
	* <code>b</code>.
	* @param b If <code>true</code>, shows this component;
	* otherwise, hides this component.
	* @see #isVisible
	* @since JDK1.1
	*/
	@:require(java1) @:overload override public function setVisible(b : Bool) : Void;
	
	/**
	* Overridden to fix 4759054. Must return true so that content
	* is painted when inside a CellRendererPane which is normally
	* invisible.
	*/
	@:overload override public function isShowing() : Bool;
	
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload override public function getMaximumSize() : java.awt.Dimension;
	
	@:overload override public function getAlignmentX() : Single;
	
	@:overload override public function getAlignmentY() : Single;
	
	@:overload override public function getFocusTraversalKeys(id : Int) : java.util.Set<java.awt.AWTKeyStroke>;
	
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
