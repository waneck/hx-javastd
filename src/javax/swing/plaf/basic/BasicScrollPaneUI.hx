package javax.swing.plaf.basic;
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
/**
* A default L&F implementation of ScrollPaneUI.
*
* @author Hans Muller
*/
extern class BasicScrollPaneUI extends javax.swing.plaf.ScrollPaneUI implements javax.swing.ScrollPaneConstants
{
	@:protected private var scrollpane : javax.swing.JScrollPane;
	
	@:protected private var vsbChangeListener : javax.swing.event.ChangeListener;
	
	@:protected private var hsbChangeListener : javax.swing.event.ChangeListener;
	
	@:protected private var viewportChangeListener : javax.swing.event.ChangeListener;
	
	@:protected private var spPropertyChangeListener : java.beans.PropertyChangeListener;
	
	@:overload @:public @:static public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* @return new Dimension(Short.MAX_VALUE, Short.MAX_VALUE)
	*/
	@:overload @:public override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload @:protected private function installDefaults(scrollpane : javax.swing.JScrollPane) : Void;
	
	@:overload @:protected private function installListeners(c : javax.swing.JScrollPane) : Void;
	
	@:overload @:protected private function installKeyboardActions(c : javax.swing.JScrollPane) : Void;
	
	@:overload @:public override public function installUI(x : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallDefaults(c : javax.swing.JScrollPane) : Void;
	
	@:overload @:protected private function uninstallListeners(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function uninstallKeyboardActions(c : javax.swing.JScrollPane) : Void;
	
	@:overload @:public override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload @:protected private function syncScrollPaneWithViewport() : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	@:overload @:protected private function createViewportChangeListener() : javax.swing.event.ChangeListener;
	
	@:overload @:protected private function createHSBChangeListener() : javax.swing.event.ChangeListener;
	
	@:overload @:protected private function createVSBChangeListener() : javax.swing.event.ChangeListener;
	
	/**
	* Creates an instance of MouseWheelListener, which is added to the
	* JScrollPane by installUI().  The returned MouseWheelListener is used
	* to handle mouse wheel-driven scrolling.
	*
	* @return      MouseWheelListener which implements wheel-driven scrolling
	* @see #installUI
	* @see MouseWheelHandler
	* @since 1.4
	*/
	@:require(java4) @:overload @:protected private function createMouseWheelListener() : java.awt.event.MouseWheelListener;
	
	@:overload @:protected private function updateScrollBarDisplayPolicy(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected private function updateViewport(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected private function updateRowHeader(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected private function updateColumnHeader(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* Creates an instance of PropertyChangeListener that's added to
	* the JScrollPane by installUI().  Subclasses can override this method
	* to return a custom PropertyChangeListener, e.g.
	* <pre>
	* class MyScrollPaneUI extends BasicScrollPaneUI {
	*    protected PropertyChangeListener <b>createPropertyChangeListener</b>() {
	*        return new MyPropertyChangeListener();
	*    }
	*    public class MyPropertyChangeListener extends PropertyChangeListener {
	*        public void propertyChange(PropertyChangeEvent e) {
	*            if (e.getPropertyName().equals("viewport")) {
	*                // do some extra work when the viewport changes
	*            }
	*            super.propertyChange(e);
	*        }
	*    }
	* }
	* </pre>
	*
	* @see java.beans.PropertyChangeListener
	* @see #installUI
	*/
	@:overload @:protected private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	
}
/**
* Listener for viewport events.
*/
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$ViewportChangeHandler') extern class BasicScrollPaneUI_ViewportChangeHandler implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Horizontal scrollbar listener.
*/
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$HSBChangeListener') extern class BasicScrollPaneUI_HSBChangeListener implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* Vertical scrollbar listener.
*/
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$VSBChangeListener') extern class BasicScrollPaneUI_VSBChangeListener implements javax.swing.event.ChangeListener
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
/**
* MouseWheelHandler is an inner class which implements the
* MouseWheelListener interface.  MouseWheelHandler responds to
* MouseWheelEvents by scrolling the JScrollPane appropriately.
* If the scroll pane's
* <code>isWheelScrollingEnabled</code>
* method returns false, no scrolling occurs.
*
* @see javax.swing.JScrollPane#isWheelScrollingEnabled
* @see #createMouseWheelListener
* @see java.awt.event.MouseWheelListener
* @see java.awt.event.MouseWheelEvent
* @since 1.4
*/
@:require(java4) @:native('javax$swing$plaf$basic$BasicScrollPaneUI$MouseWheelHandler') extern class BasicScrollPaneUI_MouseWheelHandler implements java.awt.event.MouseWheelListener
{
	/**
	* Called when the mouse wheel is rotated while over a
	* JScrollPane.
	*
	* @param e     MouseWheelEvent to be handled
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function mouseWheelMoved(e : java.awt.event.MouseWheelEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$PropertyChangeHandler') extern class BasicScrollPaneUI_PropertyChangeHandler implements java.beans.PropertyChangeListener
{
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$Actions') @:internal extern class BasicScrollPaneUI_Actions extends sun.swing.UIAction
{
	@:overload @:public override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicScrollPaneUI$Handler') @:internal extern class BasicScrollPaneUI_Handler implements javax.swing.event.ChangeListener implements java.beans.PropertyChangeListener implements java.awt.event.MouseWheelListener
{
	@:overload @:public public function mouseWheelMoved(e : java.awt.event.MouseWheelEvent) : Void;
	
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
