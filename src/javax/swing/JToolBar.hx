package javax.swing;
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
extern class JToolBar extends javax.swing.JComponent implements javax.swing.SwingConstants implements javax.accessibility.Accessible
{
	/**
	* Creates a new tool bar; orientation defaults to <code>HORIZONTAL</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new tool bar with the specified <code>orientation</code>.
	* The <code>orientation</code> must be either <code>HORIZONTAL</code>
	* or <code>VERTICAL</code>.
	*
	* @param orientation  the orientation desired
	*/
	@:overload @:public public function new(orientation : Int) : Void;
	
	/**
	* Creates a new tool bar with the specified <code>name</code>.  The
	* name is used as the title of the undocked tool bar.  The default
	* orientation is <code>HORIZONTAL</code>.
	*
	* @param name the name of the tool bar
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a new tool bar with a specified <code>name</code> and
	* <code>orientation</code>.
	* All other constructors call this constructor.
	* If <code>orientation</code> is an invalid value, an exception will
	* be thrown.
	*
	* @param name  the name of the tool bar
	* @param orientation  the initial orientation -- it must be
	*          either <code>HORIZONTAL</code> or <code>VERTICAL</code>
	* @exception IllegalArgumentException if orientation is neither
	*          <code>HORIZONTAL</code> nor <code>VERTICAL</code>
	* @since 1.3
	*/
	@:require(java3) @:overload @:public public function new(name : String, orientation : Int) : Void;
	
	/**
	* Returns the tool bar's current UI.
	* @see #setUI
	*/
	@:overload @:public public function getUI() : javax.swing.plaf.ToolBarUI;
	
	/**
	* Sets the L&F object that renders this component.
	*
	* @param ui  the <code>ToolBarUI</code> L&F object
	* @see UIDefaults#getUI
	* @beaninfo
	*        bound: true
	*       hidden: true
	*    attribute: visualUpdate true
	*  description: The UI object that implements the Component's LookAndFeel.
	*/
	@:overload @:public public function setUI(ui : javax.swing.plaf.ToolBarUI) : Void;
	
	/**
	* Notification from the <code>UIFactory</code> that the L&F has changed.
	* Called to replace the UI with the latest version from the
	* <code>UIFactory</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "ToolBarUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Returns the index of the specified component.
	* (Note: Separators occupy index positions.)
	*
	* @param c  the <code>Component</code> to find
	* @return an integer indicating the component's position,
	*          where 0 is first
	*/
	@:overload @:public public function getComponentIndex(c : java.awt.Component) : Int;
	
	/**
	* Returns the component at the specified index.
	*
	* @param i  the component's position, where 0 is first
	* @return   the <code>Component</code> at that position,
	*          or <code>null</code> for an invalid index
	*
	*/
	@:overload @:public public function getComponentAtIndex(i : Int) : java.awt.Component;
	
	/**
	* Sets the margin between the tool bar's border and
	* its buttons. Setting to <code>null</code> causes the tool bar to
	* use the default margins. The tool bar's default <code>Border</code>
	* object uses this value to create the proper margin.
	* However, if a non-default border is set on the tool bar,
	* it is that <code>Border</code> object's responsibility to create the
	* appropriate margin space (otherwise this property will
	* effectively be ignored).
	*
	* @param m an <code>Insets</code> object that defines the space
	*         between the border and the buttons
	* @see Insets
	* @beaninfo
	* description: The margin between the tool bar's border and contents
	*       bound: true
	*      expert: true
	*/
	@:overload @:public public function setMargin(m : java.awt.Insets) : Void;
	
	/**
	* Returns the margin between the tool bar's border and
	* its buttons.
	*
	* @return an <code>Insets</code> object containing the margin values
	* @see Insets
	*/
	@:overload @:public public function getMargin() : java.awt.Insets;
	
	/**
	* Gets the <code>borderPainted</code> property.
	*
	* @return the value of the <code>borderPainted</code> property
	* @see #setBorderPainted
	*/
	@:overload @:public public function isBorderPainted() : Bool;
	
	/**
	* Sets the <code>borderPainted</code> property, which is
	* <code>true</code> if the border should be painted.
	* The default value for this property is <code>true</code>.
	* Some look and feels might not implement painted borders;
	* they will ignore this property.
	*
	* @param b if true, the border is painted
	* @see #isBorderPainted
	* @beaninfo
	* description: Does the tool bar paint its borders?
	*       bound: true
	*      expert: true
	*/
	@:overload @:public public function setBorderPainted(b : Bool) : Void;
	
	/**
	* Paints the tool bar's border if the <code>borderPainted</code> property
	* is <code>true</code>.
	*
	* @param g  the <code>Graphics</code> context in which the painting
	*         is done
	* @see JComponent#paint
	* @see JComponent#setBorder
	*/
	@:overload @:protected override private function paintBorder(g : java.awt.Graphics) : Void;
	
	/**
	* Gets the <code>floatable</code> property.
	*
	* @return the value of the <code>floatable</code> property
	*
	* @see #setFloatable
	*/
	@:overload @:public public function isFloatable() : Bool;
	
	/**
	* Sets the <code>floatable</code> property,
	* which must be <code>true</code> for the user to move the tool bar.
	* Typically, a floatable tool bar can be
	* dragged into a different position within the same container
	* or out into its own window.
	* The default value of this property is <code>true</code>.
	* Some look and feels might not implement floatable tool bars;
	* they will ignore this property.
	*
	* @param b if <code>true</code>, the tool bar can be moved;
	*          <code>false</code> otherwise
	* @see #isFloatable
	* @beaninfo
	* description: Can the tool bar be made to float by the user?
	*       bound: true
	*   preferred: true
	*/
	@:overload @:public public function setFloatable(b : Bool) : Void;
	
	/**
	* Returns the current orientation of the tool bar.  The value is either
	* <code>HORIZONTAL</code> or <code>VERTICAL</code>.
	*
	* @return an integer representing the current orientation -- either
	*          <code>HORIZONTAL</code> or <code>VERTICAL</code>
	* @see #setOrientation
	*/
	@:overload @:public public function getOrientation() : Int;
	
	/**
	* Sets the orientation of the tool bar.  The orientation must have
	* either the value <code>HORIZONTAL</code> or <code>VERTICAL</code>.
	* If <code>orientation</code> is
	* an invalid value, an exception will be thrown.
	*
	* @param o  the new orientation -- either <code>HORIZONTAL</code> or
	*                  <code>VERTICAL</code>
	* @exception IllegalArgumentException if orientation is neither
	*          <code>HORIZONTAL</code> nor <code>VERTICAL</code>
	* @see #getOrientation
	* @beaninfo
	* description: The current orientation of the tool bar
	*       bound: true
	*   preferred: true
	*        enum: HORIZONTAL SwingConstants.HORIZONTAL
	*              VERTICAL   SwingConstants.VERTICAL
	*/
	@:overload @:public public function setOrientation(o : Int) : Void;
	
	/**
	* Sets the rollover state of this toolbar. If the rollover state is true
	* then the border of the toolbar buttons will be drawn only when the
	* mouse pointer hovers over them. The default value of this property
	* is false.
	* <p>
	* The implementation of a look and feel may choose to ignore this
	* property.
	*
	* @param rollover true for rollover toolbar buttons; otherwise false
	* @since 1.4
	* @beaninfo
	*        bound: true
	*    preferred: true
	*    attribute: visualUpdate true
	*  description: Will draw rollover button borders in the toolbar.
	*/
	@:require(java4) @:overload @:public public function setRollover(rollover : Bool) : Void;
	
	/**
	* Returns the rollover state.
	*
	* @return true if rollover toolbar buttons are to be drawn; otherwise false
	* @see #setRollover(boolean)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function isRollover() : Bool;
	
	/**
	* Appends a separator of default size to the end of the tool bar.
	* The default size is determined by the current look and feel.
	*/
	@:overload @:public public function addSeparator() : Void;
	
	/**
	* Appends a separator of a specified size to the end
	* of the tool bar.
	*
	* @param size the <code>Dimension</code> of the separator
	*/
	@:overload @:public public function addSeparator(size : java.awt.Dimension) : Void;
	
	/**
	* Adds a new <code>JButton</code> which dispatches the action.
	*
	* @param a the <code>Action</code> object to add as a new menu item
	* @return the new button which dispatches the action
	*/
	@:overload @:public public function add(a : javax.swing.Action) : javax.swing.JButton;
	
	/**
	* Factory method which creates the <code>JButton</code> for
	* <code>Action</code>s added to the <code>JToolBar</code>.
	* The default name is empty if a <code>null</code> action is passed.
	*
	* @param a the <code>Action</code> for the button to be added
	* @return the newly created button
	* @see Action
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function createActionComponent(a : javax.swing.Action) : javax.swing.JButton;
	
	/**
	* Returns a properly configured <code>PropertyChangeListener</code>
	* which updates the control as changes to the <code>Action</code> occur,
	* or <code>null</code> if the default
	* property change listener for the control is desired.
	*
	* @return <code>null</code>
	*/
	@:overload @:protected private function createActionChangeListener(b : javax.swing.JButton) : java.beans.PropertyChangeListener;
	
	/**
	* If a <code>JButton</code> is being added, it is initially
	* set to be disabled.
	*
	* @param comp  the component to be enhanced
	* @param constraints  the constraints to be enforced on the component
	* @param index the index of the component
	*
	*/
	@:overload @:protected override private function addImpl(comp : java.awt.Component, constraints : Dynamic, index : Int) : Void;
	
	/**
	* Returns a string representation of this <code>JToolBar</code>.
	* This method
	* is intended to be used only for debugging purposes, and the
	* content and format of the returned string may vary between
	* implementations. The returned string may be empty but may not
	* be <code>null</code>.
	*
	* @return  a string representation of this <code>JToolBar</code>.
	*/
	@:overload @:protected override private function paramString() : String;
	
	@:overload @:public override public function setLayout(mgr : java.awt.LayoutManager) : Void;
	
	/**
	* Gets the AccessibleContext associated with this JToolBar.
	* For tool bars, the AccessibleContext takes the form of an
	* AccessibleJToolBar.
	* A new AccessibleJToolBar instance is created if necessary.
	*
	* @return an AccessibleJToolBar that serves as the
	*         AccessibleContext of this JToolBar
	*/
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
/**
* A toolbar-specific separator. An object with dimension but
* no contents used to divide buttons on a tool bar into groups.
*/
@:native('javax$swing$JToolBar$Separator') extern class JToolBar_Separator extends javax.swing.JSeparator
{
	/**
	* Creates a new toolbar separator with the default size
	* as defined by the current look and feel.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new toolbar separator with the specified size.
	*
	* @param size the <code>Dimension</code> of the separator
	*/
	@:overload @:public public function new(size : java.awt.Dimension) : Void;
	
	/**
	* Returns the name of the L&F class that renders this component.
	*
	* @return the string "ToolBarSeparatorUI"
	* @see JComponent#getUIClassID
	* @see UIDefaults#getUI
	*/
	@:overload @:public override public function getUIClassID() : String;
	
	/**
	* Sets the size of the separator.
	*
	* @param size the new <code>Dimension</code> of the separator
	*/
	@:overload @:public public function setSeparatorSize(size : java.awt.Dimension) : Void;
	
	/**
	* Returns the size of the separator
	*
	* @return the <code>Dimension</code> object containing the separator's
	*         size (This is a reference, NOT a copy!)
	*/
	@:overload @:public public function getSeparatorSize() : java.awt.Dimension;
	
	/**
	* Returns the minimum size for the separator.
	*
	* @return the <code>Dimension</code> object containing the separator's
	*         minimum size
	*/
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Returns the maximum size for the separator.
	*
	* @return the <code>Dimension</code> object containing the separator's
	*         maximum size
	*/
	@:overload @:public override public function getMaximumSize() : java.awt.Dimension;
	
	/**
	* Returns the preferred size for the separator.
	*
	* @return the <code>Dimension</code> object containing the separator's
	*         preferred size
	*/
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	
}
@:native('javax$swing$JToolBar$DefaultToolBarLayout') @:internal extern class JToolBar_DefaultToolBarLayout implements java.awt.LayoutManager2 implements java.io.Serializable implements java.beans.PropertyChangeListener implements javax.swing.plaf.UIResource
{
	@:overload @:public public function addLayoutComponent(name : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function addLayoutComponent(comp : java.awt.Component, constraints : Dynamic) : Void;
	
	@:overload @:public public function removeLayoutComponent(comp : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function maximumLayoutSize(target : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(target : java.awt.Container) : Void;
	
	@:overload @:public public function getLayoutAlignmentX(target : java.awt.Container) : Single;
	
	@:overload @:public public function getLayoutAlignmentY(target : java.awt.Container) : Single;
	
	@:overload @:public public function invalidateLayout(target : java.awt.Container) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class implements accessibility support for the
* <code>JToolBar</code> class.  It provides an implementation of the
* Java Accessibility API appropriate to toolbar user-interface elements.
*/
@:native('javax$swing$JToolBar$AccessibleJToolBar') extern class JToolBar_AccessibleJToolBar extends javax.swing.JComponent.JComponent_AccessibleJComponent
{
	/**
	* Get the state of this object.
	*
	* @return an instance of AccessibleStateSet containing the current
	* state set of the object
	* @see AccessibleState
	*/
	@:overload @:public override public function getAccessibleStateSet() : javax.accessibility.AccessibleStateSet;
	
	/**
	* Get the role of this object.
	*
	* @return an instance of AccessibleRole describing the role of the object
	*/
	@:overload @:public override public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
