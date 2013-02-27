package javax.swing;
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
extern class JScrollBar extends javax.swing.JComponent implements java.awt.Adjustable implements javax.accessibility.Accessible
{
	/**
	* The model that represents the scrollbar's minimum, maximum, extent
	* (aka "visibleAmount") and current value.
	* @see #setModel
	*/
	private var model : javax.swing.BoundedRangeModel;
	
	/**
	* @see #setOrientation
	*/
	private var orientation : Int;
	
	/**
	* @see #setUnitIncrement
	*/
	private var unitIncrement : Int;
	
	/**
	* @see #setBlockIncrement
	*/
	private var blockIncrement : Int;
	
	/**
	* Creates a scrollbar with the specified orientation,
	* value, extent, minimum, and maximum.
	* The "extent" is the size of the viewable area. It is also known
	* as the "visible amount".
	* <p>
	* Note: Use <code>setBlockIncrement</code> to set the block
	* increment to a size slightly smaller than the view's extent.
	* That way, when the user jumps the knob to an adjacent position,
	* one or two lines of the original contents remain in view.
	*
	* @exception IllegalArgumentException if orientation is not one of VERTICAL, HORIZONTAL
	*
	* @see #setOrientation
	* @see #setValue
	* @see #setVisibleAmount
	* @see #setMinimum
	* @see #setMaximum
	*/
	@:overload public function new(orientation : Int, value : Int, extent : Int, min : Int, max : Int) : Void;
	
	/**
	* Creates a scrollbar with the specified orientation
	* and the following initial values:
	* <pre>
	* minimum = 0
	* maximum = 100
	* value = 0
	* extent = 10
	* </pre>
	*/
	@:overload public function new(orientation : Int) : Void;
	
	/**
	* Creates a vertical scrollbar with the following initial values:
	* <pre>
	* minimum = 0
	* maximum = 100
	* value = 0
	* extent = 10
	* </pre>
	*/
	@:overload public function new() : Void;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>ScrollBarUI</code> L&F object
	* @see UIDefaults#getUI
	* @since 1.4
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel
	*/
	@:require(java4) @:overload public function setUI(ui : javax.swing.plaf.ScrollBarUI) : Void;
	
	/**
	* Returns the delegate that implements the look and feel for
	* this component.
	*
	* @see JComponent#setUI
	*/
	@:overload public function getUI() : javax.swing.plaf.ScrollBarUI;
	
	/**
	* Overrides <code>JComponent.updateUI</code>.
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the LookAndFeel class for this component.
	*
	* @return "ScrollBarUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Returns the component's orientation (horizontal or vertical).
	*
	* @return VERTICAL or HORIZONTAL
	* @see #setOrientation
	* @see java.awt.Adjustable#getOrientation
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* Set the scrollbar's orientation to either VERTICAL or
	* HORIZONTAL.
	*
	* @exception IllegalArgumentException if orientation is not one of VERTICAL, HORIZONTAL
	* @see #getOrientation
	* @beaninfo
	*    preferred: true
	*        bound: true
	*    attribute: visualUpdate true
	*  description: The scrollbar's orientation.
	*         enum: VERTICAL JScrollBar.VERTICAL
	*               HORIZONTAL JScrollBar.HORIZONTAL
	*/
	@:overload public function setOrientation(orientation : Int) : Void;
	
	/**
	* Returns data model that handles the scrollbar's four
	* fundamental properties: minimum, maximum, value, extent.
	*
	* @see #setModel
	*/
	@:overload public function getModel() : javax.swing.BoundedRangeModel;
	
	/**
	* Sets the model that handles the scrollbar's four
	* fundamental properties: minimum, maximum, value, extent.
	*
	* @see #getModel
	* @beaninfo
	*       bound: true
	*       expert: true
	* description: The scrollbar's BoundedRangeModel.
	*/
	@:overload public function setModel(newModel : javax.swing.BoundedRangeModel) : Void;
	
	/**
	* Returns the amount to change the scrollbar's value by,
	* given a unit up/down request.  A ScrollBarUI implementation
	* typically calls this method when the user clicks on a scrollbar
	* up/down arrow and uses the result to update the scrollbar's
	* value.   Subclasses my override this method to compute
	* a value, e.g. the change required to scroll up or down one
	* (variable height) line text or one row in a table.
	* <p>
	* The JScrollPane component creates scrollbars (by default)
	* that override this method and delegate to the viewports
	* Scrollable view, if it has one.  The Scrollable interface
	* provides a more specialized version of this method.
	*
	* @param direction is -1 or 1 for up/down respectively
	* @return the value of the unitIncrement property
	* @see #setUnitIncrement
	* @see #setValue
	* @see Scrollable#getScrollableUnitIncrement
	*/
	@:overload public function getUnitIncrement(direction : Int) : Int;
	
	/**
	* Sets the unitIncrement property.
	* <p>
	* Note, that if the argument is equal to the value of Integer.MIN_VALUE,
	* the most look and feels will not provide the scrolling to the right/down.
	* @see #getUnitIncrement
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The scrollbar's unit increment.
	*/
	@:overload public function setUnitIncrement(unitIncrement : Int) : Void;
	
	/**
	* Returns the amount to change the scrollbar's value by,
	* given a block (usually "page") up/down request.  A ScrollBarUI
	* implementation typically calls this method when the user clicks
	* above or below the scrollbar "knob" to change the value
	* up or down by large amount.  Subclasses my override this
	* method to compute a value, e.g. the change required to scroll
	* up or down one paragraph in a text document.
	* <p>
	* The JScrollPane component creates scrollbars (by default)
	* that override this method and delegate to the viewports
	* Scrollable view, if it has one.  The Scrollable interface
	* provides a more specialized version of this method.
	*
	* @param direction is -1 or 1 for up/down respectively
	* @return the value of the blockIncrement property
	* @see #setBlockIncrement
	* @see #setValue
	* @see Scrollable#getScrollableBlockIncrement
	*/
	@:overload public function getBlockIncrement(direction : Int) : Int;
	
	/**
	* Sets the blockIncrement property.
	* <p>
	* Note, that if the argument is equal to the value of Integer.MIN_VALUE,
	* the most look and feels will not provide the scrolling to the right/down.
	* @see #getBlockIncrement()
	* @beaninfo
	*   preferred: true
	*       bound: true
	* description: The scrollbar's block increment.
	*/
	@:overload public function setBlockIncrement(blockIncrement : Int) : Void;
	
	/**
	* For backwards compatibility with java.awt.Scrollbar.
	* @see Adjustable#getUnitIncrement
	* @see #getUnitIncrement(int)
	*/
	@:overload public function getUnitIncrement() : Int;
	
	/**
	* For backwards compatibility with java.awt.Scrollbar.
	* @see Adjustable#getBlockIncrement
	* @see #getBlockIncrement(int)
	*/
	@:overload public function getBlockIncrement() : Int;
	
	/**
	* Returns the scrollbar's value.
	* @return the model's value property
	* @see #setValue
	*/
	@:overload public function getValue() : Int;
	
	/**
	* Sets the scrollbar's value.  This method just forwards the value
	* to the model.
	*
	* @see #getValue
	* @see BoundedRangeModel#setValue
	* @beaninfo
	*   preferred: true
	* description: The scrollbar's current value.
	*/
	@:overload public function setValue(value : Int) : Void;
	
	/**
	* Returns the scrollbar's extent, aka its "visibleAmount".  In many
	* scrollbar look and feel implementations the size of the
	* scrollbar "knob" or "thumb" is proportional to the extent.
	*
	* @return the value of the model's extent property
	* @see #setVisibleAmount
	*/
	@:overload public function getVisibleAmount() : Int;
	
	/**
	* Set the model's extent property.
	*
	* @see #getVisibleAmount
	* @see BoundedRangeModel#setExtent
	* @beaninfo
	*   preferred: true
	* description: The amount of the view that is currently visible.
	*/
	@:overload public function setVisibleAmount(extent : Int) : Void;
	
	/**
	* Returns the minimum value supported by the scrollbar
	* (usually zero).
	*
	* @return the value of the model's minimum property
	* @see #setMinimum
	*/
	@:overload public function getMinimum() : Int;
	
	/**
	* Sets the model's minimum property.
	*
	* @see #getMinimum
	* @see BoundedRangeModel#setMinimum
	* @beaninfo
	*   preferred: true
	* description: The scrollbar's minimum value.
	*/
	@:overload public function setMinimum(minimum : Int) : Void;
	
	/**
	* The maximum value of the scrollbar is maximum - extent.
	*
	* @return the value of the model's maximum property
	* @see #setMaximum
	*/
	@:overload public function getMaximum() : Int;
	
	/**
	* Sets the model's maximum property.  Note that the scrollbar's value
	* can only be set to maximum - extent.
	*
	* @see #getMaximum
	* @see BoundedRangeModel#setMaximum
	* @beaninfo
	*   preferred: true
	* description: The scrollbar's maximum value.
	*/
	@:overload public function setMaximum(maximum : Int) : Void;
	
	/**
	* True if the scrollbar knob is being dragged.
	*
	* @return the value of the model's valueIsAdjusting property
	* @see #setValueIsAdjusting
	*/
	@:overload public function getValueIsAdjusting() : Bool;
	
	/**
	* Sets the model's valueIsAdjusting property.  Scrollbar look and
	* feel implementations should set this property to true when
	* a knob drag begins, and to false when the drag ends.  The
	* scrollbar model will not generate ChangeEvents while
	* valueIsAdjusting is true.
	*
	* @see #getValueIsAdjusting
	* @see BoundedRangeModel#setValueIsAdjusting
	* @beaninfo
	*      expert: true
	* description: True if the scrollbar thumb is being dragged.
	*/
	@:overload public function setValueIsAdjusting(b : Bool) : Void;
	
	/**
	* Sets the four BoundedRangeModel properties after forcing
	* the arguments to obey the usual constraints:
	* <pre>
	* minimum <= value <= value+extent <= maximum
	* </pre>
	* <p>
	*
	* @see BoundedRangeModel#setRangeProperties
	* @see #setValue
	* @see #setVisibleAmount
	* @see #setMinimum
	* @see #setMaximum
	*/
	@:overload public function setValues(newValue : Int, newExtent : Int, newMin : Int, newMax : Int) : Void;
	
	/**
	* Adds an AdjustmentListener.  Adjustment listeners are notified
	* each time the scrollbar's model changes.  Adjustment events are
	* provided for backwards compatibility with java.awt.Scrollbar.
	* <p>
	* Note that the AdjustmentEvents type property will always have a
	* placeholder value of AdjustmentEvent.TRACK because all changes
	* to a BoundedRangeModels value are considered equivalent.  To change
	* the value of a BoundedRangeModel one just sets its value property,
	* i.e. model.setValue(123).  No information about the origin of the
	* change, e.g. it's a block decrement, is provided.  We don't try
	* fabricate the origin of the change here.
	*
	* @param l the AdjustmentLister to add
	* @see #removeAdjustmentListener
	* @see BoundedRangeModel#addChangeListener
	*/
	@:overload public function addAdjustmentListener(l : java.awt.event.AdjustmentListener) : Void;
	
	/**
	* Removes an AdjustmentEvent listener.
	*
	* @param l the AdjustmentLister to remove
	* @see #addAdjustmentListener
	*/
	@:overload public function removeAdjustmentListener(l : java.awt.event.AdjustmentListener) : Void;
	
	/**
	* Returns an array of all the <code>AdjustmentListener</code>s added
	* to this JScrollBar with addAdjustmentListener().
	*
	* @return all of the <code>AdjustmentListener</code>s added or an empty
	*         array if no listeners have been added
	* @since 1.4
	*/
	@:require(java4) @:overload public function getAdjustmentListeners() : java.NativeArray<java.awt.event.AdjustmentListener>;
	
	/**
	* Notify listeners that the scrollbar's model has changed.
	*
	* @see #addAdjustmentListener
	* @see EventListenerList
	*/
	@:overload private function fireAdjustmentValueChanged(id : Int, type : Int, value : Int) : Void;
	
	/**
	* The scrollbar is flexible along it's scrolling axis and
	* rigid along the other axis.
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* The scrollbar is flexible along it's scrolling axis and
	* rigid along the other axis.
	*/
	@:overload override public function getMaximumSize() : java.awt.Dimension;
	
	/**
	* Enables the component so that the knob position can be changed.
	* When the disabled, the knob position cannot be changed.
	*
	* @param x a boolean value, where true enables the component and
	*          false disables it
	*/
	@:overload override public function setEnabled(x : Bool) : Void;
	
	/**
	* Returns a string representation of this JScrollBar. This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this JScrollBar.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JScrollBar.
	* For JScrollBar, the AccessibleContext takes the form of an
	* AccessibleJScrollBar.
	* A new AccessibleJScrollBar instance is created if necessary.
	*
	* @return an AccessibleJScrollBar that serves as the
	*         AccessibleContext of this JScrollBar
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class listens to ChangeEvents on the model and forwards
* AdjustmentEvents for the sake of backwards compatibility.
* Unfortunately there's no way to determine the proper
* type of the AdjustmentEvent as all updates to the model's
* value are considered equivalent.
*/
@:native('javax$swing$JScrollBar$ModelListener') @:internal extern class JScrollBar_ModelListener implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JScrollBar</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to scroll bar user-interface
* elements.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$JScrollBar$AccessibleJScrollBar') extern class JScrollBar_AccessibleJScrollBar extends AccessibleJComponent implements javax.accessibility.AccessibleValue
{
	/**
	* Get the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the
	* object
	*/
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	/**
	* Get the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleValue interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Get the accessible value of this object.
	*
	* @return The current value of this object.
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Set the value of this object as a Number.
	*
	* @return True if the value was set.
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Get the minimum accessible value of this object.
	*
	* @return The minimum value of this object.
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Get the maximum accessible value of this object.
	*
	* @return The maximum value of this object.
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	
}
