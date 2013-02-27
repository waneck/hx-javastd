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
* BasicTableHeaderUI implementation
*
* @author Alan Chung
* @author Philip Milne
*/
extern class BasicTableHeaderUI extends javax.swing.plaf.TableHeaderUI
{
	/** The JTableHeader that is delegating the painting to this UI. */
	private var header : javax.swing.table.JTableHeader;
	
	private var rendererPane : javax.swing.CellRendererPane;
	
	private var mouseInputListener : javax.swing.event.MouseInputListener;
	
	/**
	* Creates the mouse listener for the JTableHeader.
	*/
	@:overload private function createMouseInputListener() : javax.swing.event.MouseInputListener;
	
	@:overload public static function createUI(h : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	/**
	* Initializes JTableHeader properties such as font, foreground, and background.
	* The font, foreground, and background properties are only set if their
	* current value is either null or a UIResource, other properties are set
	* if the current value is null.
	*
	* @see #installUI
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Attaches listeners to the JTableHeader.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* Register all keyboard actions on the JTableHeader.
	*/
	@:overload private function installKeyboardActions() : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	/**
	* Unregisters default key actions.
	*/
	@:overload private function uninstallKeyboardActions() : Void;
	
	/**
	* Returns the index of the column header over which the mouse
	* currently is. When the mouse is not over the table header,
	* -1 is returned.
	*
	* @see #rolloverColumnUpdated(int, int)
	* @return the index of the current rollover column
	* @since 1.6
	*/
	@:require(java6) @:overload private function getRolloverColumn() : Int;
	
	/**
	* This method gets called every time when a rollover column in the table
	* header is updated. Every look and feel that supports a rollover effect
	* in a table header should override this method and repaint the header.
	*
	* @param oldColumn the index of the previous rollover column or -1 if the
	* mouse was not over a column
	* @param newColumn the index of the new rollover column or -1 if the mouse
	* is not over a column
	* @see #getRolloverColumn()
	* @see JTableHeader#getHeaderRect(int)
	* @since 1.6
	*/
	@:require(java6) @:overload private function rolloverColumnUpdated(oldColumn : Int, newColumn : Int) : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	@:overload override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Return the minimum size of the header. The minimum width is the sum
	* of the minimum widths of each column (plus inter-cell spacing).
	*/
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Return the preferred size of the header. The preferred height is the
	* maximum of the preferred heights of all of the components provided
	* by the header renderers. The preferred width is the sum of the
	* preferred widths of each column (plus inter-cell spacing).
	*/
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Return the maximum size of the header. The maximum width is the sum
	* of the maximum widths of each column (plus inter-cell spacing).
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicTableHeaderUI}.
*/
@:native('javax$swing$plaf$basic$BasicTableHeaderUI$MouseInputHandler') extern class BasicTableHeaderUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicTableHeaderUI$Actions') @:internal extern class BasicTableHeaderUI_Actions extends sun.swing.UIAction
{
	public static var TOGGLE_SORT_ORDER(default, null) : String;
	
	public static var SELECT_COLUMN_TO_LEFT(default, null) : String;
	
	public static var SELECT_COLUMN_TO_RIGHT(default, null) : String;
	
	public static var MOVE_COLUMN_LEFT(default, null) : String;
	
	public static var MOVE_COLUMN_RIGHT(default, null) : String;
	
	public static var RESIZE_LEFT(default, null) : String;
	
	public static var RESIZE_RIGHT(default, null) : String;
	
	public static var FOCUS_TABLE(default, null) : String;
	
	@:overload public function new(name : String) : Void;
	
	@:overload override public function isEnabled(sender : Dynamic) : Bool;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	
}
