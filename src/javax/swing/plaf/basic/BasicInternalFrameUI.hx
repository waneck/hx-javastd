package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicInternalFrameUI extends javax.swing.plaf.InternalFrameUI
{
	/**
	* A basic L&F implementation of JInternalFrame.
	*
	* @author David Kloba
	* @author Rich Schiavi
	*/
	@:protected private var frame : javax.swing.JInternalFrame;
	
	@:protected private var borderListener : javax.swing.event.MouseInputAdapter;
	
	@:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var internalFrameLayout : java.awt.LayoutManager;
	
	@:protected private var componentListener : java.awt.event.ComponentListener;
	
	@:protected private var glassPaneDispatcher : javax.swing.event.MouseInputListener;
	
	@:protected private var northPane : javax.swing.JComponent;
	
	@:protected private var southPane : javax.swing.JComponent;
	
	@:protected private var westPane : javax.swing.JComponent;
	
	@:protected private var eastPane : javax.swing.JComponent;
	
	@:protected private var titlePane : javax.swing.plaf.basic.BasicInternalFrameTitlePane;
	
	/**
	* As of Java 2 platform v1.3 this previously undocumented field is no
	* longer used.
	* Key bindings are now defined by the LookAndFeel, please refer to
	* the key bindings specification for further details.
	*
	* @deprecated As of Java 2 platform v1.3.
	*/
	@:protected private var openMenuKey : javax.swing.KeyStroke;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new(b : javax.swing.JInternalFrame) : Void;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:protected private function installComponents() : Void;
	
	/**
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	@:overload @:protected private function uninstallComponents() : Void;
	
	/**
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected private function createLayoutManager() : java.awt.LayoutManager;
	
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload @:public override public function getPreferredSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMinimumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(x : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Installs necessary mouse handlers on <code>newPane</code>
	* and adds it to the frame.
	* Reverse process for the <code>currentPane</code>.
	*/
	@:overload @:protected private function replacePane(currentPane : javax.swing.JComponent, newPane : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function deinstallMouseHandlers(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installMouseHandlers(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function createNorthPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload @:protected private function createSouthPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload @:protected private function createWestPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload @:protected private function createEastPane(w : javax.swing.JInternalFrame) : javax.swing.JComponent;
	
	@:overload @:protected private function createBorderListener(w : javax.swing.JInternalFrame) : javax.swing.event.MouseInputAdapter;
	
	@:overload @:protected private function createInternalFrameListener() : Void;
	
	@:overload @:protected @:final private function isKeyBindingRegistered() : Bool;
	
	@:overload @:protected @:final private function setKeyBindingRegistered(b : Bool) : Void;
	
	@:overload @:public @:final public function isKeyBindingActive() : Bool;
	
	@:overload @:protected @:final private function setKeyBindingActive(b : Bool) : Void;
	
	@:overload @:protected private function setupMenuOpenKey() : Void;
	
	@:overload @:protected private function setupMenuCloseKey() : Void;
	
	@:overload @:public public function getNorthPane() : javax.swing.JComponent;
	
	@:overload @:public public function setNorthPane(c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function getSouthPane() : javax.swing.JComponent;
	
	@:overload @:public public function setSouthPane(c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function getWestPane() : javax.swing.JComponent;
	
	@:overload @:public public function setWestPane(c : javax.swing.JComponent) : Void;
	
	@:overload @:public public function getEastPane() : javax.swing.JComponent;
	
	@:overload @:public public function setEastPane(c : javax.swing.JComponent) : Void;
	
	/** Returns the proper DesktopManager. Calls getDesktopPane() to
	* find the JDesktop component and returns the desktopManager from
	* it. If this fails, it will return a default DesktopManager that
	* should work in arbitrary parents.
	*/
	@:overload @:protected private function getDesktopManager() : javax.swing.DesktopManager;
	
	@:overload @:protected private function createDesktopManager() : javax.swing.DesktopManager;
	
	/**
	* This method is called when the user wants to close the frame.
	* The <code>playCloseSound</code> Action is fired.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function closeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* This method is called when the user wants to maximize the frame.
	* The <code>playMaximizeSound</code> Action is fired.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function maximizeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* This method is called when the user wants to minimize the frame.
	* The <code>playRestoreDownSound</code> Action is fired.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function minimizeFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* This method is called when the user wants to iconify the frame.
	* The <code>playMinimizeSound</code> Action is fired.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function iconifyFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* This method is called when the user wants to deiconify the frame.
	* The <code>playRestoreUpSound</code> Action is fired.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function deiconifyFrame(f : javax.swing.JInternalFrame) : Void;
	
	/** This method is called when the frame becomes selected.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function activateFrame(f : javax.swing.JInternalFrame) : Void;
	
	/** This method is called when the frame is no longer selected.
	* This action is delegated to the desktopManager.
	*/
	@:overload @:protected private function deactivateFrame(f : javax.swing.JInternalFrame) : Void;
	
	@:overload @:protected private function createComponentListener() : java.awt.event.ComponentListener;
	
	@:overload @:protected private function createGlassPaneDispatcher() : javax.swing.event.MouseInputListener;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$InternalFramePropertyChangeListener') extern class BasicInternalFrameUI_InternalFramePropertyChangeListener implements java.beans.PropertyChangeListener
{
	/**
	* Detects changes in state from the JInternalFrame and handles
	* actions.
	*/
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$InternalFrameLayout') extern class BasicInternalFrameUI_InternalFrameLayout implements java.awt.LayoutManager
{
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	
}
/**
* Listens for border adjustments.
*/
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$BorderListener') extern class BasicInternalFrameUI_BorderListener extends javax.swing.event.MouseInputAdapter implements javax.swing.SwingConstants
{
	@:protected @:final private var RESIZE_NONE(default, null) : Int;
	
	@:overload @:public override public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$ComponentHandler') extern class BasicInternalFrameUI_ComponentHandler implements java.awt.event.ComponentListener
{
	/** Invoked when a JInternalFrame's parent's size changes. */
	@:overload @:public public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$GlassPaneDispatcher') extern class BasicInternalFrameUI_GlassPaneDispatcher implements javax.swing.event.MouseInputListener
{
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$BasicInternalFrameListener') extern class BasicInternalFrameUI_BasicInternalFrameListener implements javax.swing.event.InternalFrameListener
{
	@:overload @:public public function internalFrameClosing(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameClosed(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameOpened(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameIconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeiconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameActivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeactivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicInternalFrameUI$Handler') @:internal extern class BasicInternalFrameUI_Handler implements java.awt.event.ComponentListener implements javax.swing.event.InternalFrameListener implements java.awt.LayoutManager implements javax.swing.event.MouseInputListener implements java.beans.PropertyChangeListener implements java.awt.event.WindowFocusListener implements javax.swing.SwingConstants
{
	@:overload @:public public function windowGainedFocus(e : java.awt.event.WindowEvent) : Void;
	
	@:overload @:public public function windowLostFocus(e : java.awt.event.WindowEvent) : Void;
	
	/** Invoked when a JInternalFrame's parent's size changes. */
	@:overload @:public public function componentResized(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentMoved(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentShown(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function componentHidden(e : java.awt.event.ComponentEvent) : Void;
	
	@:overload @:public public function internalFrameClosed(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameActivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeactivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameClosing(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameOpened(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameIconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeiconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function addLayoutComponent(name : String, c : java.awt.Component) : Void;
	
	@:overload @:public public function removeLayoutComponent(c : java.awt.Component) : Void;
	
	@:overload @:public public function preferredLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function minimumLayoutSize(c : java.awt.Container) : java.awt.Dimension;
	
	@:overload @:public public function layoutContainer(c : java.awt.Container) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	
}
