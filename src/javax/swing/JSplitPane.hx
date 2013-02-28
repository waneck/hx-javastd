package javax.swing;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JSplitPane extends javax.swing.JComponent implements javax.accessibility.Accessible
{
	/**
	* Vertical split indicates the <code>Component</code>s are
	* split along the y axis.  For example the two
	* <code>Component</code>s will be split one on top of the other.
	*/
	public static var VERTICAL_SPLIT(default, null) : Int;
	
	/**
	* Horizontal split indicates the <code>Component</code>s are
	* split along the x axis.  For example the two
	* <code>Component</code>s will be split one to the left of the
	* other.
	*/
	public static var HORIZONTAL_SPLIT(default, null) : Int;
	
	/**
	* Used to add a <code>Component</code> to the left of the other
	* <code>Component</code>.
	*/
	public static var LEFT(default, null) : String;
	
	/**
	* Used to add a <code>Component</code> to the right of the other
	* <code>Component</code>.
	*/
	public static var RIGHT(default, null) : String;
	
	/**
	* Used to add a <code>Component</code> above the other
	* <code>Component</code>.
	*/
	public static var TOP(default, null) : String;
	
	/**
	* Used to add a <code>Component</code> below the other
	* <code>Component</code>.
	*/
	public static var BOTTOM(default, null) : String;
	
	/**
	* Used to add a <code>Component</code> that will represent the divider.
	*/
	public static var DIVIDER(default, null) : String;
	
	/**
	* Bound property name for orientation (horizontal or vertical).
	*/
	public static var ORIENTATION_PROPERTY(default, null) : String;
	
	/**
	* Bound property name for continuousLayout.
	*/
	public static var CONTINUOUS_LAYOUT_PROPERTY(default, null) : String;
	
	/**
	* Bound property name for border.
	*/
	public static var DIVIDER_SIZE_PROPERTY(default, null) : String;
	
	/**
	* Bound property for oneTouchExpandable.
	*/
	public static var ONE_TOUCH_EXPANDABLE_PROPERTY(default, null) : String;
	
	/**
	* Bound property for lastLocation.
	*/
	public static var LAST_DIVIDER_LOCATION_PROPERTY(default, null) : String;
	
	/**
	* Bound property for the dividerLocation.
	* @since 1.3
	*/
	@:require(java3) public static var DIVIDER_LOCATION_PROPERTY(default, null) : String;
	
	/**
	* Bound property for weight.
	* @since 1.3
	*/
	@:require(java3) public static var RESIZE_WEIGHT_PROPERTY(default, null) : String;
	
	/**
	* How the views are split.
	*/
	private var orientation : Int;
	
	/**
	* Whether or not the views are continuously redisplayed while
	* resizing.
	*/
	private var continuousLayout : Bool;
	
	/**
	* The left or top component.
	*/
	private var leftComponent : java.awt.Component;
	
	/**
	* The right or bottom component.
	*/
	private var rightComponent : java.awt.Component;
	
	/**
	* Size of the divider.
	*/
	private var dividerSize : Int;
	
	/**
	* Is a little widget provided to quickly expand/collapse the
	* split pane?
	*/
	private var oneTouchExpandable : Bool;
	
	/**
	* Previous location of the split pane.
	*/
	private var lastDividerLocation : Int;
	
	/**
	* Creates a new <code>JSplitPane</code> configured to arrange the child
	* components side-by-side horizontally, using two buttons for the components.
	*/
	@:overload public function new() : Void;
	
	/**
	* Creates a new <code>JSplitPane</code> configured with the
	* specified orientation.
	*
	* @param newOrientation  <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                        <code>JSplitPane.VERTICAL_SPLIT</code>
	* @exception IllegalArgumentException if <code>orientation</code>
	*          is not one of HORIZONTAL_SPLIT or VERTICAL_SPLIT.
	*/
	@:overload public function new(newOrientation : Int) : Void;
	
	/**
	* Creates a new <code>JSplitPane</code> with the specified
	* orientation and redrawing style.
	*
	* @param newOrientation  <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                        <code>JSplitPane.VERTICAL_SPLIT</code>
	* @param newContinuousLayout  a boolean, true for the components to
	*        redraw continuously as the divider changes position, false
	*        to wait until the divider position stops changing to redraw
	* @exception IllegalArgumentException if <code>orientation</code>
	*          is not one of HORIZONTAL_SPLIT or VERTICAL_SPLIT
	*/
	@:overload public function new(newOrientation : Int, newContinuousLayout : Bool) : Void;
	
	/**
	* Creates a new <code>JSplitPane</code> with the specified
	* orientation and the specified components.
	*
	* @param newOrientation  <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                        <code>JSplitPane.VERTICAL_SPLIT</code>
	* @param newLeftComponent the <code>Component</code> that will
	*          appear on the left
	*          of a horizontally-split pane, or at the top of a
	*          vertically-split pane
	* @param newRightComponent the <code>Component</code> that will
	*          appear on the right
	*          of a horizontally-split pane, or at the bottom of a
	*          vertically-split pane
	* @exception IllegalArgumentException if <code>orientation</code>
	*          is not one of: HORIZONTAL_SPLIT or VERTICAL_SPLIT
	*/
	@:overload public function new(newOrientation : Int, newLeftComponent : java.awt.Component, newRightComponent : java.awt.Component) : Void;
	
	/**
	* Creates a new <code>JSplitPane</code> with the specified
	* orientation and
	* redrawing style, and with the specified components.
	*
	* @param newOrientation  <code>JSplitPane.HORIZONTAL_SPLIT</code> or
	*                        <code>JSplitPane.VERTICAL_SPLIT</code>
	* @param newContinuousLayout  a boolean, true for the components to
	*        redraw continuously as the divider changes position, false
	*        to wait until the divider position stops changing to redraw
	* @param newLeftComponent the <code>Component</code> that will
	*          appear on the left
	*          of a horizontally-split pane, or at the top of a
	*          vertically-split pane
	* @param newRightComponent the <code>Component</code> that will
	*          appear on the right
	*          of a horizontally-split pane, or at the bottom of a
	*          vertically-split pane
	* @exception IllegalArgumentException if <code>orientation</code>
	*          is not one of HORIZONTAL_SPLIT or VERTICAL_SPLIT
	*/
	@:overload public function new(newOrientation : Int, newContinuousLayout : Bool, newLeftComponent : java.awt.Component, newRightComponent : java.awt.Component) : Void;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>SplitPaneUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload public function setUI(ui : javax.swing.plaf.SplitPaneUI) : Void;
	
	/**
	* Returns the <code>SplitPaneUI</code> that is providing the
	* current look and feel.
	*
	* @return the <code>SplitPaneUI</code> object that renders this component
	* @beaninfo
	*       expert: true
	*  description: The L&F object that renders this component.
	*/
	@:overload public function getUI() : javax.swing.plaf.SplitPaneUI;
	
	/**
	* Notification from the <code>UIManager</code> that the L&F has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "SplitPaneUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	* @beaninfo
	*       expert: true
	*  description: A string that specifies the name of the L&F class.
	*/
	@:overload override public function getUIClassID() : String;
	
	/**
	* Sets the size of the divider.
	*
	* @param newSize an integer giving the size of the divider in pixels
	* @beaninfo
	*        bound: true
	*  description: The size of the divider.
	*/
	@:overload public function setDividerSize(newSize : Int) : Void;
	
	/**
	* Returns the size of the divider.
	*
	* @return an integer giving the size of the divider in pixels
	*/
	@:overload public function getDividerSize() : Int;
	
	/**
	* Sets the component to the left (or above) the divider.
	*
	* @param comp the <code>Component</code> to display in that position
	*/
	@:overload public function setLeftComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the component to the left (or above) the divider.
	*
	* @return the <code>Component</code> displayed in that position
	* @beaninfo
	*    preferred: true
	*  description: The component to the left (or above) the divider.
	*/
	@:overload public function getLeftComponent() : java.awt.Component;
	
	/**
	* Sets the component above, or to the left of the divider.
	*
	* @param comp the <code>Component</code> to display in that position
	* @beaninfo
	*  description: The component above, or to the left of the divider.
	*/
	@:overload public function setTopComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the component above, or to the left of the divider.
	*
	* @return the <code>Component</code> displayed in that position
	*/
	@:overload public function getTopComponent() : java.awt.Component;
	
	/**
	* Sets the component to the right (or below) the divider.
	*
	* @param comp the <code>Component</code> to display in that position
	* @beaninfo
	*    preferred: true
	*  description: The component to the right (or below) the divider.
	*/
	@:overload public function setRightComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the component to the right (or below) the divider.
	*
	* @return the <code>Component</code> displayed in that position
	*/
	@:overload public function getRightComponent() : java.awt.Component;
	
	/**
	* Sets the component below, or to the right of the divider.
	*
	* @param comp the <code>Component</code> to display in that position
	* @beaninfo
	*  description: The component below, or to the right of the divider.
	*/
	@:overload public function setBottomComponent(comp : java.awt.Component) : Void;
	
	/**
	* Returns the component below, or to the right of the divider.
	*
	* @return the <code>Component</code> displayed in that position
	*/
	@:overload public function getBottomComponent() : java.awt.Component;
	
	/**
	* Sets the value of the <code>oneTouchExpandable</code> property,
	* which must be <code>true</code> for the
	* <code>JSplitPane</code> to provide a UI widget
	* on the divider to quickly expand/collapse the divider.
	* The default value of this property is <code>false</code>.
	* Some look and feels might not support one-touch expanding;
	* they will ignore this property.
	*
	* @param newValue <code>true</code> to specify that the split pane should provide a
	*        collapse/expand widget
	* @beaninfo
	*        bound: true
	*  description: UI widget on the divider to quickly
	*               expand/collapse the divider.
	*
	* @see #isOneTouchExpandable
	*/
	@:overload public function setOneTouchExpandable(newValue : Bool) : Void;
	
	/**
	* Gets the <code>oneTouchExpandable</code> property.
	*
	* @return the value of the <code>oneTouchExpandable</code> property
	* @see #setOneTouchExpandable
	*/
	@:overload public function isOneTouchExpandable() : Bool;
	
	/**
	* Sets the last location the divider was at to
	* <code>newLastLocation</code>.
	*
	* @param newLastLocation an integer specifying the last divider location
	*        in pixels, from the left (or upper) edge of the pane to the
	*        left (or upper) edge of the divider
	* @beaninfo
	*        bound: true
	*  description: The last location the divider was at.
	*/
	@:overload public function setLastDividerLocation(newLastLocation : Int) : Void;
	
	/**
	* Returns the last location the divider was at.
	*
	* @return an integer specifying the last divider location as a count
	*       of pixels from the left (or upper) edge of the pane to the
	*       left (or upper) edge of the divider
	*/
	@:overload public function getLastDividerLocation() : Int;
	
	/**
	* Sets the orientation, or how the splitter is divided. The options
	* are:<ul>
	* <li>JSplitPane.VERTICAL_SPLIT  (above/below orientation of components)
	* <li>JSplitPane.HORIZONTAL_SPLIT  (left/right orientation of components)
	* </ul>
	*
	* @param orientation an integer specifying the orientation
	* @exception IllegalArgumentException if orientation is not one of:
	*        HORIZONTAL_SPLIT or VERTICAL_SPLIT.
	* @beaninfo
	*        bound: true
	*  description: The orientation, or how the splitter is divided.
	*         enum: HORIZONTAL_SPLIT JSplitPane.HORIZONTAL_SPLIT
	*               VERTICAL_SPLIT   JSplitPane.VERTICAL_SPLIT
	*/
	@:overload public function setOrientation(orientation : Int) : Void;
	
	/**
	* Returns the orientation.
	*
	* @return an integer giving the orientation
	* @see #setOrientation
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* Sets the value of the <code>continuousLayout</code> property,
	* which must be <code>true</code> for the child components
	* to be continuously
	* redisplayed and laid out during user intervention.
	* The default value of this property is look and feel dependent.
	* Some look and feels might not support continuous layout;
	* they will ignore this property.
	*
	* @param newContinuousLayout  <code>true</code> if the components
	*        should continuously be redrawn as the divider changes position
	* @beaninfo
	*        bound: true
	*  description: Whether the child components are
	*               continuously redisplayed and laid out during
	*               user intervention.
	* @see #isContinuousLayout
	*/
	@:overload public function setContinuousLayout(newContinuousLayout : Bool) : Void;
	
	/**
	* Gets the <code>continuousLayout</code> property.
	*
	* @return the value of the <code>continuousLayout</code> property
	* @see #setContinuousLayout
	*/
	@:overload public function isContinuousLayout() : Bool;
	
	/**
	* Specifies how to distribute extra space when the size of the split pane
	* changes. A value of 0, the default,
	* indicates the right/bottom component gets all the extra space (the
	* left/top component acts fixed), where as a value of 1 specifies the
	* left/top component gets all the extra space (the right/bottom component
	* acts fixed). Specifically, the left/top component gets (weight * diff)
	* extra space and the right/bottom component gets (1 - weight) * diff
	* extra space.
	*
	* @param value as described above
	* @exception IllegalArgumentException if <code>value</code> is < 0 or > 1
	* @since 1.3
	* @beaninfo
	*        bound: true
	*  description: Specifies how to distribute extra space when the split pane
	*               resizes.
	*/
	@:require(java3) @:overload public function setResizeWeight(value : Float) : Void;
	
	/**
	* Returns the number that determines how extra space is distributed.
	* @return how extra space is to be distributed on a resize of the
	*         split pane
	* @since 1.3
	*/
	@:require(java3) @:overload public function getResizeWeight() : Float;
	
	/**
	* Lays out the <code>JSplitPane</code> layout based on the preferred size
	* of the children components. This will likely result in changing
	* the divider location.
	*/
	@:overload public function resetToPreferredSizes() : Void;
	
	/**
	* Sets the divider location as a percentage of the
	* <code>JSplitPane</code>'s size.
	* <p>
	* This method is implemented in terms of
	* <code>setDividerLocation(int)</code>.
	* This method immediately changes the size of the split pane based on
	* its current size. If the split pane is not correctly realized and on
	* screen, this method will have no effect (new divider location will
	* become (current size * proportionalLocation) which is 0).
	*
	* @param proportionalLocation  a double-precision floating point value
	*        that specifies a percentage, from zero (top/left) to 1.0
	*        (bottom/right)
	* @exception IllegalArgumentException if the specified location is < 0
	*            or > 1.0
	* @beaninfo
	*  description: The location of the divider.
	*/
	@:overload public function setDividerLocation(proportionalLocation : Float) : Void;
	
	/**
	* Sets the location of the divider. This is passed off to the
	* look and feel implementation, and then listeners are notified. A value
	* less than 0 implies the divider should be reset to a value that
	* attempts to honor the preferred size of the left/top component.
	* After notifying the listeners, the last divider location is updated,
	* via <code>setLastDividerLocation</code>.
	*
	* @param location an int specifying a UI-specific value (typically a
	*        pixel count)
	* @beaninfo
	*        bound: true
	*  description: The location of the divider.
	*/
	@:overload public function setDividerLocation(location : Int) : Void;
	
	/**
	* Returns the last value passed to <code>setDividerLocation</code>.
	* The value returned from this method may differ from the actual
	* divider location (if <code>setDividerLocation</code> was passed a
	* value bigger than the curent size).
	*
	* @return an integer specifying the location of the divider
	*/
	@:overload public function getDividerLocation() : Int;
	
	/**
	* Returns the minimum location of the divider from the look and feel
	* implementation.
	*
	* @return an integer specifying a UI-specific value for the minimum
	*          location (typically a pixel count); or -1 if the UI is
	*          <code>null</code>
	* @beaninfo
	*  description: The minimum location of the divider from the L&F.
	*/
	@:overload public function getMinimumDividerLocation() : Int;
	
	/**
	* Returns the maximum location of the divider from the look and feel
	* implementation.
	*
	* @return an integer specifying a UI-specific value for the maximum
	*          location (typically a pixel count); or -1 if the  UI is
	*          <code>null</code>
	*/
	@:overload public function getMaximumDividerLocation() : Int;
	
	/**
	* Removes the child component, <code>component</code> from the
	* pane. Resets the <code>leftComponent</code> or
	* <code>rightComponent</code> instance variable, as necessary.
	*
	* @param component the <code>Component</code> to remove
	*/
	@:overload override public function remove(component : java.awt.Component) : Void;
	
	/**
	* Removes the <code>Component</code> at the specified index.
	* Updates the <code>leftComponent</code> and <code>rightComponent</code>
	* instance variables as necessary, and then messages super.
	*
	* @param index an integer specifying the component to remove, where
	*        1 specifies the left/top component and 2 specifies the
	*        bottom/right component
	*/
	@:overload override public function remove(index : Int) : Void;
	
	/**
	* Removes all the child components from the split pane. Resets the
	* <code>leftComonent</code> and <code>rightComponent</code>
	* instance variables.
	*/
	@:overload override public function removeAll() : Void;
	
	/**
	* Returns true, so that calls to <code>revalidate</code>
	* on any descendant of this <code>JSplitPane</code>
	* will cause a request to be queued that
	* will validate the <code>JSplitPane</code> and all its descendants.
	*
	* @return true
	* @see JComponent#revalidate
	* @see java.awt.Container#isValidateRoot
	*
	* @beaninfo
	*    hidden: true
	*/
	@:overload override public function isValidateRoot() : Bool;
	
	/**
	* Adds the specified component to this split pane.
	* If <code>constraints</code> identifies the left/top or
	* right/bottom child component, and a component with that identifier
	* was previously added, it will be removed and then <code>comp</code>
	* will be added in its place. If <code>constraints</code> is not
	* one of the known identifiers the layout manager may throw an
	* <code>IllegalArgumentException</code>.
	* <p>
	* The possible constraints objects (Strings) are:
	* <ul>
	* <li>JSplitPane.TOP
	* <li>JSplitPane.LEFT
	* <li>JSplitPane.BOTTOM
	* <li>JSplitPane.RIGHT
	* </ul>
	* If the <code>constraints</code> object is <code>null</code>,
	* the component is added in the
	* first available position (left/top if open, else right/bottom).
	*
	* @param comp        the component to add
	* @param constraints an <code>Object</code> specifying the
	*                    layout constraints
	*                    (position) for this component
	* @param index       an integer specifying the index in the container's
	*                    list.
	* @exception IllegalArgumentException  if the <code>constraints</code>
	*          object does not match an existing component
	* @see java.awt.Container#addImpl(Component, Object, int)
	*/
	@:overload override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Subclassed to message the UI with <code>finishedPaintingChildren</code>
	* after super has been messaged, as well as painting the border.
	*
	* @param g the <code>Graphics</code> context within which to paint
	*/
	@:overload override private function paintChildren(g : java.awt.Graphics) : Void;
	
	/**
	* Returns a string representation of this <code>JSplitPane</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JSplitPane</code>.
	*/
	@:overload override private function paramString() : String;
	
	/**
	* Gets the AccessibleContext associated with this JSplitPane.
	* For split panes, the AccessibleContext takes the form of an
	* AccessibleJSplitPane.
	* A new AccessibleJSplitPane instance is created if necessary.
	*
	* @return an AccessibleJSplitPane that serves as the
	*         AccessibleContext of this JSplitPane
	* @beaninfo
	*       expert: true
	*  description: The AccessibleContext associated with this SplitPane.
	*/
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* This class implements accessibility support for the
* <code>JSplitPane</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to split pane user-interface elements.
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
@:native('javax$swing$JSplitPane$AccessibleJSplitPane') extern class JSplitPane_AccessibleJSplitPane extends javax.swing.JComponent.JComponent_AccessibleJComponent implements javax.accessibility.AccessibleValue
{
	/**
	* Gets the state set of this object.
	*
	* @return an instance of AccessibleState containing the current state
	* of the object
	* @see AccessibleState
	*/
	@:overload override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the AccessibleValue associated with this object.  In the
	* implementation of the Java Accessibility API for this class,
	* return this object, which is responsible for implementing the
	* AccessibleValue interface on behalf of itself.
	*
	* @return this object
	*/
	@:overload override public function getAccessibleValue() : javax.accessibility.AccessibleValue;
	
	/**
	* Gets the accessible value of this object.
	*
	* @return a localized String describing the value of this object
	*/
	@:overload public function getCurrentAccessibleValue() : java.lang.Number;
	
	/**
	* Sets the value of this object as a Number.
	*
	* @return True if the value was set.
	*/
	@:overload public function setCurrentAccessibleValue(n : java.lang.Number) : Bool;
	
	/**
	* Gets the minimum accessible value of this object.
	*
	* @return The minimum value of this object.
	*/
	@:overload public function getMinimumAccessibleValue() : java.lang.Number;
	
	/**
	* Gets the maximum accessible value of this object.
	*
	* @return The maximum value of this object.
	*/
	@:overload public function getMaximumAccessibleValue() : java.lang.Number;
	
	/**
	* Gets the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of
	* the object
	* @see AccessibleRole
	*/
	@:overload override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
