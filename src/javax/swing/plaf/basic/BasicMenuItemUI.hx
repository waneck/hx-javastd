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
/**
* BasicMenuItem implementation
*
* @author Georges Saab
* @author David Karlton
* @author Arnaud Weber
* @author Fredrik Lagerblad
*/
extern class BasicMenuItemUI extends javax.swing.plaf.MenuItemUI
{
	@:protected private var menuItem : javax.swing.JMenuItem;
	
	@:protected private var selectionBackground : java.awt.Color;
	
	@:protected private var selectionForeground : java.awt.Color;
	
	@:protected private var disabledForeground : java.awt.Color;
	
	@:protected private var acceleratorForeground : java.awt.Color;
	
	@:protected private var acceleratorSelectionForeground : java.awt.Color;
	
	/**
	* Accelerator delimiter string, such as {@code '+'} in {@code 'Ctrl+C'}.
	* @since 1.7
	*/
	@:require(java7) @:protected private var acceleratorDelimiter : String;
	
	@:protected private var defaultTextIconGap : Int;
	
	@:protected private var acceleratorFont : java.awt.Font;
	
	@:protected private var mouseInputListener : javax.swing.event.MouseInputListener;
	
	@:protected private var menuDragMouseListener : javax.swing.event.MenuDragMouseListener;
	
	@:protected private var menuKeyListener : javax.swing.event.MenuKeyListener;
	
	/**
	* <code>PropertyChangeListener</code> returned from
	* <code>createPropertyChangeListener</code>. You should not
	* need to access this field, rather if you want to customize the
	* <code>PropertyChangeListener</code> override
	* <code>createPropertyChangeListener</code>.
	*
	* @since 1.6
	* @see #createPropertyChangeListener
	*/
	@:require(java6) @:protected private var propertyChangeListener : java.beans.PropertyChangeListener;
	
	@:protected private var arrowIcon : javax.swing.Icon;
	
	@:protected private var checkIcon : javax.swing.Icon;
	
	@:protected private var oldBorderPainted : Bool;
	
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function installDefaults() : Void;
	
	/**
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function installComponents(menuItem : javax.swing.JMenuItem) : Void;
	
	@:overload @:protected private function getPropertyPrefix() : String;
	
	@:overload @:protected private function installListeners() : Void;
	
	@:overload @:protected private function installKeyboardActions() : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallDefaults() : Void;
	
	/**
	* @since 1.3
	*/
	@:require(java3) @:overload @:protected private function uninstallComponents(menuItem : javax.swing.JMenuItem) : Void;
	
	@:overload @:protected private function uninstallListeners() : Void;
	
	@:overload @:protected private function uninstallKeyboardActions() : Void;
	
	@:overload @:protected private function createMouseInputListener(c : javax.swing.JComponent) : javax.swing.event.MouseInputListener;
	
	@:overload @:protected private function createMenuDragMouseListener(c : javax.swing.JComponent) : javax.swing.event.MenuDragMouseListener;
	
	@:overload @:protected private function createMenuKeyListener(c : javax.swing.JComponent) : javax.swing.event.MenuKeyListener;
	
	/**
	* Creates a <code>PropertyChangeListener</code> which will be added to
	* the menu item.
	* If this method returns null then it will not be added to the menu item.
	*
	* @return an instance of a <code>PropertyChangeListener</code> or null
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected private function createPropertyChangeListener(c : javax.swing.JComponent) : java.beans.PropertyChangeListener;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function getPreferredMenuItemSize(c : javax.swing.JComponent, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, defaultTextIconGap : Int) : java.awt.Dimension;
	
	/**
	* We draw the background in paintMenuItem()
	* so override update (which fills the background of opaque
	* components by default) to just call paint().
	*
	*/
	@:overload @:public override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function paintMenuItem(g : java.awt.Graphics, c : javax.swing.JComponent, checkIcon : javax.swing.Icon, arrowIcon : javax.swing.Icon, background : java.awt.Color, foreground : java.awt.Color, defaultTextIconGap : Int) : Void;
	
	/**
	* Draws the background of the menu item.
	*
	* @param g the paint graphics
	* @param menuItem menu item to be painted
	* @param bgColor selection background color
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintBackground(g : java.awt.Graphics, menuItem : javax.swing.JMenuItem, bgColor : java.awt.Color) : Void;
	
	/**
	* Renders the text of the current menu item.
	* <p>
	* @param g graphics context
	* @param menuItem menu item to render
	* @param textRect bounding rectangle for rendering the text
	* @param text string to render
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function paintText(g : java.awt.Graphics, menuItem : javax.swing.JMenuItem, textRect : java.awt.Rectangle, text : String) : Void;
	
	@:overload @:public public function getPath() : java.NativeArray<javax.swing.MenuElement>;
	
	/**
	* Call this method when a menu item is to be activated.
	* This method handles some of the details of menu item activation
	* such as clearing the selected path and messaging the
	* JMenuItem's doClick() method.
	*
	* @param msm  A MenuSelectionManager. The visual feedback and
	*             internal bookkeeping tasks are delegated to
	*             this MenuSelectionManager. If <code>null</code> is
	*             passed as this argument, the
	*             <code>MenuSelectionManager.defaultManager</code> is
	*             used.
	* @see MenuSelectionManager
	* @see JMenuItem#doClick(int)
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function doClick(msm : javax.swing.MenuSelectionManager) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuItemUI$MouseInputHandler') extern class BasicMenuItemUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuItemUI$Actions') @:internal extern class BasicMenuItemUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicMenuItemUI$Handler') @:internal extern class BasicMenuItemUI_Handler implements javax.swing.event.MenuDragMouseListener implements javax.swing.event.MouseInputListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function menuDragMouseEntered(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public public function menuDragMouseDragged(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public public function menuDragMouseExited(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public public function menuDragMouseReleased(e : javax.swing.event.MenuDragMouseEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
