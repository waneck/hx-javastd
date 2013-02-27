package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicSplitPaneUI extends javax.swing.plaf.SplitPaneUI
{
	/**
	* The divider used for non-continuous layout is added to the split pane
	* with this object.
	*/
	private static var NON_CONTINUOUS_DIVIDER(default, null) : String;
	
	/**
	* How far (relative) the divider does move when it is moved around by
	* the cursor keys on the keyboard.
	*/
	private static var KEYBOARD_DIVIDER_MOVE_OFFSET : Int;
	
	/**
	* JSplitPane instance this instance is providing
	* the look and feel for.
	*/
	private var splitPane : javax.swing.JSplitPane;
	
	/**
	* LayoutManager that is created and placed into the split pane.
	*/
	private var layoutManager : BasicSplitPaneUI_BasicHorizontalLayoutManager;
	
	/**
	* Instance of the divider for this JSplitPane.
	*/
	private var divider : javax.swing.plaf.basic.BasicSplitPaneDivider;
	
	/**
	* Instance of the PropertyChangeListener for this JSplitPane.
	*/
	private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	/**
	* Instance of the FocusListener for this JSplitPane.
	*/
	private var focusListener : java.awt.event.FocusListener;
	
	/**
	* The size of the divider while the dragging session is valid.
	*/
	private var dividerSize : Int;
	
	/**
	* Instance for the shadow of the divider when non continuous layout
	* is being used.
	*/
	private var nonContinuousLayoutDivider : java.awt.Component;
	
	/**
	* Set to true in startDragging if any of the children
	* (not including the nonContinuousLayoutDivider) are heavy weights.
	*/
	private var draggingHW : Bool;
	
	/**
	* Location of the divider when the dragging session began.
	*/
	private var beginDragDividerLocation : Int;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var upKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var downKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var leftKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var rightKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var homeKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var endKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var dividerResizeToggleKey : javax.swing.KeyStroke;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var keyboardUpLeftListener : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var keyboardDownRightListener : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var keyboardHomeListener : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var keyboardEndListener : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	private var keyboardResizeToggleListener : java.awt.event.ActionListener;
	
	/**
	* Creates a new BasicSplitPaneUI instance
	*/
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Installs the UI.
	*/
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs the UI defaults.
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Installs the event listeners for the UI.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* Installs the keyboard actions for the UI.
	*/
	@:overload private function installKeyboardActions() : Void;
	
	/**
	* Uninstalls the UI.
	*/
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Uninstalls the UI defaults.
	*/
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* Uninstalls the event listeners for the UI.
	*/
	@:overload private function uninstallListeners() : Void;
	
	/**
	* Uninstalls the keyboard actions for the UI.
	*/
	@:overload private function uninstallKeyboardActions() : Void;
	
	/**
	* Creates a PropertyChangeListener for the JSplitPane UI.
	*/
	@:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* Creates a FocusListener for the JSplitPane UI.
	*/
	@:overload private function createFocusListener() : java.awt.event.FocusListener;
	
	/**
	* As of Java 2 platform v1.3 this method is no
	* longer used. Subclassers previously using this method should
	* instead create an Action wrapping the ActionListener, and register
	* that Action by overriding <code>installKeyboardActions</code> and
	* placing the Action in the SplitPane's ActionMap. Please refer to
	* the key bindings specification for further details.
	* <p>
	* Creates a ActionListener for the JSplitPane UI that listens for
	* specific key presses.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:overload private function createKeyboardUpLeftListener() : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this method is no
	* longer used. Subclassers previously using this method should
	* instead create an Action wrapping the ActionListener, and register
	* that Action by overriding <code>installKeyboardActions</code> and
	* placing the Action in the SplitPane's ActionMap. Please refer to
	* the key bindings specification for further details.
	* <p>
	* Creates a ActionListener for the JSplitPane UI that listens for
	* specific key presses.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:overload private function createKeyboardDownRightListener() : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this method is no
	* longer used. Subclassers previously using this method should
	* instead create an Action wrapping the ActionListener, and register
	* that Action by overriding <code>installKeyboardActions</code> and
	* placing the Action in the SplitPane's ActionMap. Please refer to
	* the key bindings specification for further details.
	* <p>
	* Creates a ActionListener for the JSplitPane UI that listens for
	* specific key presses.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:overload private function createKeyboardHomeListener() : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this method is no
	* longer used. Subclassers previously using this method should
	* instead create an Action wrapping the ActionListener, and register
	* that Action by overriding <code>installKeyboardActions</code> and
	* placing the Action in the SplitPane's ActionMap. Please refer to
	* the key bindings specification for further details.
	* <p>
	* Creates a ActionListener for the JSplitPane UI that listens for
	* specific key presses.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:overload private function createKeyboardEndListener() : java.awt.event.ActionListener;
	
	/**
	* As of Java 2 platform v1.3 this method is no
	* longer used. Subclassers previously using this method should
	* instead create an Action wrapping the ActionListener, and register
	* that Action by overriding <code>installKeyboardActions</code> and
	* placing the Action in the SplitPane's ActionMap. Please refer to
	* the key bindings specification for further details.
	* <p>
	* Creates a ActionListener for the JSplitPane UI that listens for
	* specific key presses.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:overload private function createKeyboardResizeToggleListener() : java.awt.event.ActionListener;
	
	/**
	* Returns the orientation for the JSplitPane.
	*/
	@:overload public function getOrientation() : Int;
	
	/**
	* Set the orientation for the JSplitPane.
	*/
	@:overload public function setOrientation(orientation : Int) : Void;
	
	/**
	* Determines wether the JSplitPane is set to use a continuous layout.
	*/
	@:overload public function isContinuousLayout() : Bool;
	
	/**
	* Turn continuous layout on/off.
	*/
	@:overload public function setContinuousLayout(b : Bool) : Void;
	
	/**
	* Returns the last drag location of the JSplitPane.
	*/
	@:overload public function getLastDragLocation() : Int;
	
	/**
	* Set the last drag location of the JSplitPane.
	*/
	@:overload public function setLastDragLocation(l : Int) : Void;
	
	/**
	* Returns the divider between the top Components.
	*/
	@:overload public function getDivider() : javax.swing.plaf.basic.BasicSplitPaneDivider;
	
	/**
	* Returns the default non continuous layout divider, which is an
	* instance of {@code Canvas} that fills in the background with dark gray.
	*/
	@:overload private function createDefaultNonContinuousLayoutDivider() : java.awt.Component;
	
	/**
	* Sets the divider to use when the splitPane is configured to
	* not continuously layout. This divider will only be used during a
	* dragging session. It is recommended that the passed in component
	* be a heavy weight.
	*/
	@:overload private function setNonContinuousLayoutDivider(newDivider : java.awt.Component) : Void;
	
	/**
	* Sets the divider to use.
	*/
	@:overload private function setNonContinuousLayoutDivider(newDivider : java.awt.Component, rememberSizes : Bool) : Void;
	
	/**
	* Returns the divider to use when the splitPane is configured to
	* not continuously layout. This divider will only be used during a
	* dragging session.
	*/
	@:overload public function getNonContinuousLayoutDivider() : java.awt.Component;
	
	/**
	* Returns the splitpane this instance is currently contained
	* in.
	*/
	@:overload public function getSplitPane() : javax.swing.JSplitPane;
	
	/**
	* Creates the default divider.
	*/
	@:overload public function createDefaultDivider() : javax.swing.plaf.basic.BasicSplitPaneDivider;
	
	/**
	* Messaged to reset the preferred sizes.
	*/
	@:overload override public function resetToPreferredSizes(jc : javax.swing.JSplitPane) : Void;
	
	/**
	* Sets the location of the divider to location.
	*/
	@:overload override public function setDividerLocation(jc : javax.swing.JSplitPane, location : Int) : Void;
	
	/**
	* Returns the location of the divider, which may differ from what
	* the splitpane thinks the location of the divider is.
	*/
	@:overload override public function getDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Gets the minimum location of the divider.
	*/
	@:overload override public function getMinimumDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Gets the maximum location of the divider.
	*/
	@:overload override public function getMaximumDividerLocation(jc : javax.swing.JSplitPane) : Int;
	
	/**
	* Called when the specified split pane has finished painting
	* its children.
	*/
	@:overload override public function finishedPaintingChildren(sp : javax.swing.JSplitPane, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload override public function paint(g : java.awt.Graphics, jc : javax.swing.JComponent) : Void;
	
	/**
	* Returns the preferred size for the passed in component,
	* This is passed off to the current layoutmanager.
	*/
	@:overload override public function getPreferredSize(jc : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the minimum size for the passed in component,
	* This is passed off to the current layoutmanager.
	*/
	@:overload override public function getMinimumSize(jc : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the maximum size for the passed in component,
	* This is passed off to the current layoutmanager.
	*/
	@:overload override public function getMaximumSize(jc : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Returns the insets. The insets are returned from the border insets
	* of the current border.
	*/
	@:overload public function getInsets(jc : javax.swing.JComponent) : java.awt.Insets;
	
	/**
	* Resets the layout manager based on orientation and messages it
	* with invalidateLayout to pull in appropriate Components.
	*/
	@:overload private function resetLayoutManager() : Void;
	
	/**
	* Should be messaged before the dragging session starts, resets
	* lastDragLocation and dividerSize.
	*/
	@:overload private function startDragging() : Void;
	
	/**
	* Messaged during a dragging session to move the divider to the
	* passed in location. If continuousLayout is true the location is
	* reset and the splitPane validated.
	*/
	@:overload private function dragDividerTo(location : Int) : Void;
	
	/**
	* Messaged to finish the dragging session. If not continuous display
	* the dividers location will be reset.
	*/
	@:overload private function finishDraggingTo(location : Int) : Void;
	
	/**
	* As of Java 2 platform v1.3 this method is no longer used. Instead
	* you should set the border on the divider.
	* <p>
	* Returns the width of one side of the divider border.
	*
	* @deprecated As of Java 2 platform v1.3, instead set the border on the
	* divider.
	*/
	@:overload private function getDividerBorderSize() : Int;
	
	
}
/**
* Implementation of the PropertyChangeListener
* that the JSplitPane UI uses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$PropertyHandler') extern class BasicSplitPaneUI_PropertyHandler implements java.beans.PropertyChangeListener
{
	/**
	* Messaged from the <code>JSplitPane</code> the receiver is
	* contained in.  May potentially reset the layout manager and cause a
	* <code>validate</code> to be sent.
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* Implementation of the FocusListener that the JSplitPane UI uses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$FocusHandler') extern class BasicSplitPaneUI_FocusHandler extends java.awt.event.FocusAdapter
{
	@:overload override public function focusGained(ev : java.awt.event.FocusEvent) : Void;
	
	@:overload override public function focusLost(ev : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* Implementation of an ActionListener that the JSplitPane UI uses for
* handling specific key presses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$KeyboardUpLeftHandler') extern class BasicSplitPaneUI_KeyboardUpLeftHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Implementation of an ActionListener that the JSplitPane UI uses for
* handling specific key presses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$KeyboardDownRightHandler') extern class BasicSplitPaneUI_KeyboardDownRightHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Implementation of an ActionListener that the JSplitPane UI uses for
* handling specific key presses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$KeyboardHomeHandler') extern class BasicSplitPaneUI_KeyboardHomeHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Implementation of an ActionListener that the JSplitPane UI uses for
* handling specific key presses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$KeyboardEndHandler') extern class BasicSplitPaneUI_KeyboardEndHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* Implementation of an ActionListener that the JSplitPane UI uses for
* handling specific key presses.
* <p>
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicSplitPaneUI.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$KeyboardResizeToggleHandler') extern class BasicSplitPaneUI_KeyboardResizeToggleHandler implements java.awt.event.ActionListener
{
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
/**
* LayoutManager for JSplitPanes that have an orientation of
* HORIZONTAL_SPLIT.
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$BasicHorizontalLayoutManager') extern class BasicSplitPaneUI_BasicHorizontalLayoutManager implements java.awt.LayoutManager2
{
	/* left, right, divider. (in this exact order) */
	private var sizes : java.NativeArray<Int>;
	
	private var components : java.NativeArray<java.awt.Component>;
	
	/**
	* Does the actual layout.
	*/
	@:overload public function layoutContainer(container : java.awt.Container) : Void;
	
	/**
	* Adds the component at place.  Place must be one of
	* JSplitPane.LEFT, RIGHT, TOP, BOTTOM, or null (for the
	* divider).
	*/
	@:overload public function addLayoutComponent(place : String, component : java.awt.Component) : Void;
	
	/**
	* Returns the minimum size needed to contain the children.
	* The width is the sum of all the childrens min widths and
	* the height is the largest of the childrens minimum heights.
	*/
	@:overload public function minimumLayoutSize(container : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Returns the preferred size needed to contain the children.
	* The width is the sum of all the childrens preferred widths and
	* the height is the largest of the childrens preferred heights.
	*/
	@:overload public function preferredLayoutSize(container : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Removes the specified component from our knowledge.
	*/
	@:overload public function removeLayoutComponent(component : java.awt.Component) : Void;
	
	/**
	* Adds the specified component to the layout, using the specified
	* constraint object.
	* @param comp the component to be added
	* @param constraints  where/how the component is added to the layout.
	*/
	@:overload public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	/**
	* Returns the alignment along the x axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	/**
	* Returns the alignment along the y axis.  This specifies how
	* the component would like to be aligned relative to other
	* components.  The value should be a number between 0 and 1
	* where 0 represents alignment along the origin, 1 is aligned
	* the furthest away from the origin, 0.5 is centered, etc.
	*/
	@:overload public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	/**
	* Does nothing. If the developer really wants to change the
	* size of one of the views JSplitPane.resetToPreferredSizes should
	* be messaged.
	*/
	@:overload public function invalidateLayout(c : java.awt.Container) : Void;
	
	/**
	* Returns the maximum layout size, which is Integer.MAX_VALUE
	* in both directions.
	*/
	@:overload public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	/**
	* Marks the receiver so that the next time this instance is
	* laid out it'll ask for the preferred sizes.
	*/
	@:overload public function resetToPreferredSizes() : Void;
	
	/**
	* Resets the size of the Component at the passed in location.
	*/
	@:overload private function resetSizeAt(index : Int) : Void;
	
	/**
	* Sets the sizes to <code>newSizes</code>.
	*/
	@:overload private function setSizes(newSizes : java.NativeArray<Int>) : Void;
	
	/**
	* Returns the sizes of the components.
	*/
	@:overload private function getSizes() : java.NativeArray<Int>;
	
	/**
	* Returns the width of the passed in Components preferred size.
	*/
	@:overload private function getPreferredSizeOfComponent(c : java.awt.Component) : Int;
	
	/**
	* Returns the width of the passed in component.
	*/
	@:overload private function getSizeOfComponent(c : java.awt.Component) : Int;
	
	/**
	* Returns the available width based on the container size and
	* Insets.
	*/
	@:overload private function getAvailableSize(containerSize : java.awt.Dimension, insets : java.awt.Insets) : Int;
	
	/**
	* Returns the left inset, unless the Insets are null in which case
	* 0 is returned.
	*/
	@:overload private function getInitialLocation(insets : java.awt.Insets) : Int;
	
	/**
	* Sets the width of the component c to be size, placing its
	* x location at location, y to the insets.top and height
	* to the containersize.height less the top and bottom insets.
	*/
	@:overload private function setComponentToSize(c : java.awt.Component, size : Int, location : Int, insets : java.awt.Insets, containerSize : java.awt.Dimension) : Void;
	
	/**
	* Determines the components. This should be called whenever
	* a new instance of this is installed into an existing
	* SplitPane.
	*/
	@:overload private function updateComponents() : Void;
	
	
}
/**
* LayoutManager used for JSplitPanes with an orientation of
* VERTICAL_SPLIT.
* <p>
*/
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$BasicVerticalLayoutManager') extern class BasicSplitPaneUI_BasicVerticalLayoutManager extends BasicSplitPaneUI_BasicHorizontalLayoutManager
{
	@:overload public function new() : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$Handler') @:internal extern class BasicSplitPaneUI_Handler implements java.awt.event.FocusListener implements java.beans.PropertyChangeListener
{
	/**
	* Messaged from the <code>JSplitPane</code> the receiver is
	* contained in.  May potentially reset the layout manager and cause a
	* <code>validate</code> to be sent.
	*/
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function focusGained(ev : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(ev : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicSplitPaneUI$Actions') @:internal extern class BasicSplitPaneUI_Actions extends sun.swing.UIAction
{
	@:overload override public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
