package javax.swing.table;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultTableCellRenderer extends javax.swing.JLabel implements javax.swing.table.TableCellRenderer implements java.io.Serializable
{
	private static var noFocusBorder : javax.swing.border.Border;
	
	/**
	* Creates a default table cell renderer.
	*/
	@:overload public function new() : Void;
	
	/**
	* Overrides <code>JComponent.setForeground</code> to assign
	* the unselected-foreground color to the specified color.
	*
	* @param c set the foreground color to this value
	*/
	@:overload override public function setForeground(c : java.awt.Color) : Void;
	
	/**
	* Overrides <code>JComponent.setBackground</code> to assign
	* the unselected-background color to the specified color.
	*
	* @param c set the background color to this value
	*/
	@:overload override public function setBackground(c : java.awt.Color) : Void;
	
	/**
	* Notification from the <code>UIManager</code> that the look and feel
	* [L&F] has changed.
	* Replaces the current UI object with the latest version from the
	* <code>UIManager</code>.
	*
	* @see JComponent#updateUI
	*/
	@:overload override public function updateUI() : Void;
	
	/**
	*
	* Returns the default table cell renderer.
	* <p>
	* During a printing operation, this method will be called with
	* <code>isSelected</code> and <code>hasFocus</code> values of
	* <code>false</code> to prevent selection and focus from appearing
	* in the printed output. To do other customization based on whether
	* or not the table is being printed, check the return value from
	* {@link javax.swing.JComponent#isPaintingForPrint()}.
	*
	* @param table  the <code>JTable</code>
	* @param value  the value to assign to the cell at
	*                  <code>[row, column]</code>
	* @param isSelected true if cell is selected
	* @param hasFocus true if cell has focus
	* @param row  the row of the cell to render
	* @param column the column of the cell to render
	* @return the default table cell renderer
	* @see javax.swing.JComponent#isPaintingForPrint()
	*/
	@:overload public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function isOpaque() : Bool;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function invalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function validate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function revalidate() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function repaint(tm : haxe.Int64, x : Int, y : Int, width : Int, height : Int) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function repaint(r : java.awt.Rectangle) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*
	* @since 1.5
	*/
	@:require(java5) @:overload override public function repaint() : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override private function firePropertyChange(propertyName : String, oldValue : Dynamic, newValue : Dynamic) : Void;
	
	/**
	* Overridden for performance reasons.
	* See the <a href="#override">Implementation Note</a>
	* for more information.
	*/
	@:overload override public function firePropertyChange(propertyName : String, oldValue : Bool, newValue : Bool) : Void;
	
	/**
	* Sets the <code>String</code> object for the cell being rendered to
	* <code>value</code>.
	*
	* @param value  the string value for this cell; if value is
	*          <code>null</code> it sets the text value to an empty string
	* @see JLabel#setText
	*
	*/
	@:overload private function setValue(value : Dynamic) : Void;
	
	
}
/**
* A subclass of <code>DefaultTableCellRenderer</code> that
* implements <code>UIResource</code>.
* <code>DefaultTableCellRenderer</code> doesn't implement
* <code>UIResource</code>
* directly so that applications can safely override the
* <code>cellRenderer</code> property with
* <code>DefaultTableCellRenderer</code> subclasses.
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
@:native('javax$swing$table$DefaultTableCellRenderer$UIResource') extern class DefaultTableCellRenderer_UIResource extends DefaultTableCellRenderer implements javax.swing.plaf.UIResource
{
	
}
