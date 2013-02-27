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
extern class BasicTableUI extends javax.swing.plaf.TableUI
{
	private var table : javax.swing.JTable;
	
	private var rendererPane : javax.swing.CellRendererPane;
	
	private var keyListener : java.awt.event.KeyListener;
	
	private var focusListener : java.awt.event.FocusListener;
	
	private var mouseInputListener : javax.swing.event.MouseInputListener;
	
	/**
	* Creates the key listener for handling keyboard navigation in the JTable.
	*/
	@:overload private function createKeyListener() : java.awt.event.KeyListener;
	
	/**
	* Creates the focus listener for handling keyboard navigation in the JTable.
	*/
	@:overload private function createFocusListener() : java.awt.event.FocusListener;
	
	/**
	* Creates the mouse listener for the JTable.
	*/
	@:overload private function createMouseInputListener() : javax.swing.event.MouseInputListener;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Initialize JTable properties, e.g. font, foreground, and background.
	* The font, foreground, and background properties are only set if their
	* current value is either null or a UIResource, other properties are set
	* if the current value is null.
	*
	* @see #installUI
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Attaches listeners to the JTable.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* Register all keyboard actions on the JTable.
	*/
	@:overload private function installKeyboardActions() : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function uninstallKeyboardActions() : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	/**
	* Returns an enum indicating how the baseline of the component
	* changes as the size changes.
	*
	* @throws NullPointerException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaselineResizeBehavior(c : javax.swing.JComponent) : java.awt.Component.Component_BaselineResizeBehavior;
	
	/**
	* Return the minimum size of the table. The minimum height is the
	* row height times the number of rows.
	* The minimum width is the sum of the minimum widths of each column.
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Return the preferred size of the table. The preferred height is the
	* row height times the number of rows.
	* The preferred width is the sum of the preferred widths of each column.
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Return the maximum size of the table. The maximum height is the
	* row heighttimes the number of rows.
	* The maximum width is the sum of the maximum widths of each column.
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/** Paint a representation of the <code>table</code> instance
	* that was set in installUI().
	*/
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTableUI$Actions') @:internal extern class BasicTableUI_Actions extends sun.swing.UIAction
{
	private var dx : Int;
	
	private var dy : Int;
	
	private var extend : Bool;
	
	private var inSelection : Bool;
	
	private var forwards : Bool;
	
	private var vertically : Bool;
	
	private var toLimit : Bool;
	
	private var leadRow : Int;
	
	private var leadColumn : Int;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function isEnabled(sender : Dynamic) : Bool;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicTableUI}.
* <p>As of Java 2 platform v1.3 this class is no longer used.
* Instead <code>JTable</code>
* overrides <code>processKeyBinding</code> to dispatch the event to
* the current <code>TableCellEditor</code>.
*/
@:native('javax$swing$plaf$basic$BasicTableUI$KeyHandler') extern class BasicTableUI_KeyHandler implements java.awt.event.KeyListener
{
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicTableUI}.
*/
@:native('javax$swing$plaf$basic$BasicTableUI$FocusHandler') extern class BasicTableUI_FocusHandler implements java.awt.event.FocusListener
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of BasicTableUI.
*/
@:native('javax$swing$plaf$basic$BasicTableUI$MouseInputHandler') extern class BasicTableUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTableUI$Handler') @:internal extern class BasicTableUI_Handler implements java.awt.event.FocusListener implements javax.swing.event.MouseInputListener implements java.beans.PropertyChangeListener implements javax.swing.event.ListSelectionListener implements java.awt.event.ActionListener implements javax.swing.plaf.basic.DragRecognitionSupport.DragRecognitionSupport_BeforeDrag
{
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	@:overload public function actionPerformed(ae : java.awt.event.ActionEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function dragStarting(me : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTableUI$TableTransferHandler') @:internal extern class BasicTableUI_TableTransferHandler extends javax.swing.TransferHandler implements javax.swing.plaf.UIResource
{
	/**
	* Create a Transferable to use as the source for a data transfer.
	*
	* @param c  The component holding the data to be transfered.  This
	*  argument is provided to enable sharing of TransferHandlers by
	*  multiple components.
	* @return  The representation of the data to be transfered.
	*
	*/
	@:overload override private function createTransferable(c : javax.swing.JComponent) : java.awt.datatransfer.Transferable;
	
	@:overload override public function getSourceActions(c : javax.swing.JComponent) : Int;
	
	
}
