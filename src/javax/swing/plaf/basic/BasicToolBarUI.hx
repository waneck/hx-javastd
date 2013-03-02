package javax.swing.plaf.basic;
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
extern class BasicToolBarUI extends javax.swing.plaf.ToolBarUI implements javax.swing.SwingConstants
{
	/**
	* A Basic L&F implementation of ToolBarUI.  This implementation
	* is a "combined" view/controller.
	* <p>
	*
	* @author Georges Saab
	* @author Jeff Shapiro
	*/
	private var toolBar : javax.swing.JToolBar;
	
	private var dragWindow : javax.swing.plaf.basic.BasicToolBarUI.BasicToolBarUI_DragWindow;
	
	private var focusedCompIndex : Int;
	
	private var dockingColor : java.awt.Color;
	
	private var floatingColor : java.awt.Color;
	
	private var dockingBorderColor : java.awt.Color;
	
	private var floatingBorderColor : java.awt.Color;
	
	private var dockingListener : javax.swing.event.MouseInputListener;
	
	private var propertyListener : java.beans.PropertyChangeListener;
	
	private var toolBarContListener : java.awt.event.ContainerListener;
	
	private var toolBarFocusListener : java.awt.event.FocusListener;
	
	private var constraintBeforeFloating : String;
	
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
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function installComponents() : Void;
	
	@:overload private function uninstallComponents() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function installKeyboardActions() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	@:overload private function navigateFocusedComp(direction : Int) : Void;
	
	/**
	* Creates a rollover border for toolbar components. The
	* rollover border will be installed if rollover borders are
	* enabled.
	* <p>
	* Override this method to provide an alternate rollover border.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload private function createRolloverBorder() : javax.swing.border.Border;
	
	/**
	* Creates the non rollover border for toolbar components. This
	* border will be installed as the border for components added
	* to the toolbar if rollover borders are not enabled.
	* <p>
	* Override this method to provide an alternate rollover border.
	*
	* @since 1.4
	*/
	@:require(java4) @:overload private function createNonRolloverBorder() : javax.swing.border.Border;
	
	/**
	* No longer used, use BasicToolBarUI.createFloatingWindow(JToolBar)
	* @see #createFloatingWindow
	*/
	@:overload private function createFloatingFrame(toolbar : javax.swing.JToolBar) : javax.swing.JFrame;
	
	/**
	* Creates a window which contains the toolbar after it has been
	* dragged out from its container
	* @return a <code>RootPaneContainer</code> object, containing the toolbar.
	* @since 1.4
	*/
	@:require(java4) @:overload private function createFloatingWindow(toolbar : javax.swing.JToolBar) : javax.swing.RootPaneContainer;
	
	@:overload private function createDragWindow(toolbar : javax.swing.JToolBar) : javax.swing.plaf.basic.BasicToolBarUI.BasicToolBarUI_DragWindow;
	
	/**
	* Returns a flag to determine whether rollover button borders
	* are enabled.
	*
	* @return true if rollover borders are enabled; false otherwise
	* @see #setRolloverBorders
	* @since 1.4
	*/
	@:require(java4) @:overload public function isRolloverBorders() : Bool;
	
	/**
	* Sets the flag for enabling rollover borders on the toolbar and it will
	* also install the apropriate border depending on the state of the flag.
	*
	* @param rollover if true, rollover borders are installed.
	*        Otherwise non-rollover borders are installed
	* @see #isRolloverBorders
	* @since 1.4
	*/
	@:require(java4) @:overload public function setRolloverBorders(rollover : Bool) : Void;
	
	/**
	* Installs rollover borders on all the child components of the JComponent.
	* <p>
	* This is a convenience method to call <code>setBorderToRollover</code>
	* for each child component.
	*
	* @param c container which holds the child components (usally a JToolBar)
	* @see #setBorderToRollover
	* @since 1.4
	*/
	@:require(java4) @:overload private function installRolloverBorders(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs non-rollover borders on all the child components of the JComponent.
	* A non-rollover border is the border that is installed on the child component
	* while it is in the toolbar.
	* <p>
	* This is a convenience method to call <code>setBorderToNonRollover</code>
	* for each child component.
	*
	* @param c container which holds the child components (usally a JToolBar)
	* @see #setBorderToNonRollover
	* @since 1.4
	*/
	@:require(java4) @:overload private function installNonRolloverBorders(c : javax.swing.JComponent) : Void;
	
	/**
	* Installs normal borders on all the child components of the JComponent.
	* A normal border is the original border that was installed on the child
	* component before it was added to the toolbar.
	* <p>
	* This is a convenience method to call <code>setBorderNormal</code>
	* for each child component.
	*
	* @param c container which holds the child components (usally a JToolBar)
	* @see #setBorderToNonRollover
	* @since 1.4
	*/
	@:require(java4) @:overload private function installNormalBorders(c : javax.swing.JComponent) : Void;
	
	/**
	* Sets the border of the component to have a rollover border which
	* was created by the {@link #createRolloverBorder} method.
	*
	* @param c component which will have a rollover border installed
	* @see #createRolloverBorder
	* @since 1.4
	*/
	@:require(java4) @:overload private function setBorderToRollover(c : java.awt.Component) : Void;
	
	/**
	* Returns a rollover border for the button.
	*
	* @param b the button to calculate the rollover border for
	* @return the rollover border
	* @see #setBorderToRollover
	* @since 1.6
	*/
	@:require(java6) @:overload private function getRolloverBorder(b : javax.swing.AbstractButton) : javax.swing.border.Border;
	
	/**
	* Sets the border of the component to have a non-rollover border which
	* was created by the {@link #createNonRolloverBorder} method.
	*
	* @param c component which will have a non-rollover border installed
	* @see #createNonRolloverBorder
	* @since 1.4
	*/
	@:require(java4) @:overload private function setBorderToNonRollover(c : java.awt.Component) : Void;
	
	/**
	* Returns a non-rollover border for the button.
	*
	* @param b the button to calculate the non-rollover border for
	* @return the non-rollover border
	* @see #setBorderToNonRollover
	* @since 1.6
	*/
	@:require(java6) @:overload private function getNonRolloverBorder(b : javax.swing.AbstractButton) : javax.swing.border.Border;
	
	/**
	* Sets the border of the component to have a normal border.
	* A normal border is the original border that was installed on the child
	* component before it was added to the toolbar.
	*
	* @param c component which will have a normal border re-installed
	* @see #createNonRolloverBorder
	* @since 1.4
	*/
	@:require(java4) @:overload private function setBorderToNormal(c : java.awt.Component) : Void;
	
	@:overload public function setFloatingLocation(x : Int, y : Int) : Void;
	
	@:overload public function isFloating() : Bool;
	
	@:overload public function setFloating(b : Bool, p : java.awt.Point) : Void;
	
	@:overload public function setOrientation(orientation : Int) : Void;
	
	/**
	* Gets the color displayed when over a docking area
	*/
	@:overload public function getDockingColor() : java.awt.Color;
	
	/**
	* Sets the color displayed when over a docking area
	*/
	@:overload public function setDockingColor(c : java.awt.Color) : Void;
	
	/**
	* Gets the color displayed when over a floating area
	*/
	@:overload public function getFloatingColor() : java.awt.Color;
	
	/**
	* Sets the color displayed when over a floating area
	*/
	@:overload public function setFloatingColor(c : java.awt.Color) : Void;
	
	@:overload public function canDock(c : java.awt.Component, p : java.awt.Point) : Bool;
	
	@:overload private function dragTo(position : java.awt.Point, origin : java.awt.Point) : Void;
	
	@:overload private function floatAt(position : java.awt.Point, origin : java.awt.Point) : Void;
	
	@:overload private function createToolBarContListener() : java.awt.event.ContainerListener;
	
	@:overload private function createToolBarFocusListener() : java.awt.event.FocusListener;
	
	@:overload private function createPropertyListener() : java.beans.PropertyChangeListener;
	
	@:overload private function createDockingListener() : javax.swing.event.MouseInputListener;
	
	@:overload private function createFrameListener() : java.awt.event.WindowListener;
	
	/**
	* Paints the contents of the window used for dragging.
	*
	* @param g Graphics to paint to.
	* @throws NullPointerException is <code>g</code> is null
	* @since 1.5
	*/
	@:require(java5) @:overload private function paintDragWindow(g : java.awt.Graphics) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$Actions') @:internal extern class BasicToolBarUI_Actions extends sun.swing.UIAction
{
	@:overload public function new(name : String) : Void;
	
	@:overload override public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$Handler') @:internal extern class BasicToolBarUI_Handler implements java.awt.event.ContainerListener implements java.awt.event.FocusListener implements javax.swing.event.MouseInputListener implements java.beans.PropertyChangeListener
{
	@:overload public function componentAdded(evt : java.awt.event.ContainerEvent) : Void;
	
	@:overload public function componentRemoved(evt : java.awt.event.ContainerEvent) : Void;
	
	@:overload public function focusGained(evt : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(evt : java.awt.event.FocusEvent) : Void;
	
	@:overload public function mousePressed(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseClicked(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(evt : java.awt.event.MouseEvent) : Void;
	
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$FrameListener') extern class BasicToolBarUI_FrameListener extends java.awt.event.WindowAdapter
{
	@:overload override public function windowClosing(w : java.awt.event.WindowEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$ToolBarContListener') extern class BasicToolBarUI_ToolBarContListener implements java.awt.event.ContainerListener
{
	@:overload public function componentAdded(e : java.awt.event.ContainerEvent) : Void;
	
	@:overload public function componentRemoved(e : java.awt.event.ContainerEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$ToolBarFocusListener') extern class BasicToolBarUI_ToolBarFocusListener implements java.awt.event.FocusListener
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$PropertyListener') extern class BasicToolBarUI_PropertyListener implements java.beans.PropertyChangeListener
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicToolBarUI.
*/
@:native('javax$swing$plaf$basic$BasicToolBarUI$DockingListener') extern class BasicToolBarUI_DockingListener implements javax.swing.event.MouseInputListener
{
	private var toolBar : javax.swing.JToolBar;
	
	private var isDragging : Bool;
	
	private var origin : java.awt.Point;
	
	@:overload public function new(t : javax.swing.JToolBar) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicToolBarUI$DragWindow') extern class BasicToolBarUI_DragWindow extends java.awt.Window
{
	/**
	* Returns the orientation of the toolbar window when the toolbar is
	* floating. The orientation is either one of <code>JToolBar.HORIZONTAL</code>
	* or <code>JToolBar.VERTICAL</code>.
	*
	* @return the orientation of the toolbar window
	* @since 1.6
	*/
	@:require(java6) @:overload public function getOrientation() : Int;
	
	@:overload public function setOrientation(o : Int) : Void;
	
	@:overload public function getOffset() : java.awt.Point;
	
	@:overload public function setOffset(p : java.awt.Point) : Void;
	
	@:overload public function setBorderColor(c : java.awt.Color) : Void;
	
	@:overload public function getBorderColor() : java.awt.Color;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload override public function getInsets() : java.awt.Insets;
	
	
}
