package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A Metal Look and Feel implementation of ToolBarUI.  This implementation
* is a "combined" view/controller.
* <p>
*
* @author Jeff Shapiro
*/
extern class MetalToolBarUI extends javax.swing.plaf.basic.BasicToolBarUI
{
	/**
	* This protected field is implemenation specific. Do not access directly
	* or override. Use the create method instead.
	*
	* @see #createContainerListener
	*/
	private var contListener : java.awt.event.ContainerListener;
	
	/**
	* This protected field is implemenation specific. Do not access directly
	* or override. Use the create method instead.
	*
	* @see #createRolloverListener
	*/
	private var rolloverListener : java.beans.PropertyChangeListener;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload override private function installListeners() : Void;
	
	@:overload override private function uninstallListeners() : Void;
	
	@:overload override private function createRolloverBorder() : javax.swing.border.Border;
	
	@:overload override private function createNonRolloverBorder() : javax.swing.border.Border;
	
	@:overload override private function setBorderToNonRollover(c : java.awt.Component) : Void;
	
	/**
	* Creates a container listener that will be added to the JToolBar.
	* If this method returns null then it will not be added to the
	* toolbar.
	*
	* @return an instance of a <code>ContainerListener</code> or null
	*/
	@:overload private function createContainerListener() : java.awt.event.ContainerListener;
	
	/**
	* Creates a property change listener that will be added to the JToolBar.
	* If this method returns null then it will not be added to the
	* toolbar.
	*
	* @return an instance of a <code>PropertyChangeListener</code> or null
	*/
	@:overload private function createRolloverListener() : java.beans.PropertyChangeListener;
	
	@:overload override private function createDockingListener() : javax.swing.event.MouseInputListener;
	
	@:overload private function setDragOffset(p : java.awt.Point) : Void;
	
	/**
	* If necessary paints the background of the component, then invokes
	* <code>paint</code>.
	*
	* @param g Graphics to paint to
	* @param c JComponent painting on
	* @throws NullPointerException if <code>g</code> or <code>c</code> is
	*         null
	* @see javax.swing.plaf.ComponentUI#update
	* @see javax.swing.plaf.ComponentUI#paint
	* @since 1.5
	*/
	@:require(java5) @:overload override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalToolBarUI$MetalContainerListener') extern class MetalToolBarUI_MetalContainerListener extends javax.swing.plaf.basic.BasicToolBarUI.BasicToolBarUI_ToolBarContListener
{
	
}
@:native('javax$swing$plaf$metal$MetalToolBarUI$MetalRolloverListener') extern class MetalToolBarUI_MetalRolloverListener extends javax.swing.plaf.basic.BasicToolBarUI.BasicToolBarUI_PropertyListener
{
	
}
@:native('javax$swing$plaf$metal$MetalToolBarUI$MetalDockingListener') extern class MetalToolBarUI_MetalDockingListener extends DockingListener
{
	@:overload public function new(t : javax.swing.JToolBar) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	
}
