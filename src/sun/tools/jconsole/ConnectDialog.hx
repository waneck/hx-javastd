package sun.tools.jconsole;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ConnectDialog extends sun.tools.jconsole.InternalDialog implements javax.swing.event.DocumentListener implements java.awt.event.FocusListener implements java.awt.event.ItemListener implements javax.swing.event.ListSelectionListener implements java.awt.event.KeyListener
{
	@:overload public function new(jConsole : sun.tools.jconsole.JConsole) : Void;
	
	@:overload public function revalidate() : Void;
	
	@:overload public static function getLabelWidth(text : String) : Int;
	
	@:overload public function setConnectionParameters(url : String, host : String, port : Int, userName : String, password : String, msg : String) : Void;
	
	@:overload public function itemStateChanged(ev : java.awt.event.ItemEvent) : Void;
	
	@:overload public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function setVisible(b : Bool) : Void;
	
	@:overload public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload public function valueChanged(e : javax.swing.event.ListSelectionEvent) : Void;
	
	@:overload public function refresh() : Void;
	
	
}
@:native('sun$tools$jconsole$ConnectDialog$LocalTabJTable') @:internal extern class ConnectDialog_LocalTabJTable extends javax.swing.JTable
{
	@:overload public function new(model : sun.tools.jconsole.ConnectDialog.ConnectDialog_ManagedVmTableModel) : Void;
	
	@:overload public function getToolTipText(e : java.awt.event.MouseEvent) : String;
	
	@:overload public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	
}
@:native('sun$tools$jconsole$ConnectDialog$ManagedVmTableModel') @:internal extern class ConnectDialog_ManagedVmTableModel extends javax.swing.table.AbstractTableModel
{
	@:overload public function getColumnCount() : Int;
	
	@:overload public function getColumnName(col : Int) : String;
	
	@:overload @:synchronized public function getRowCount() : Int;
	
	@:overload @:synchronized public function getValueAt(row : Int, col : Int) : Dynamic;
	
	@:overload public function getColumnClass(column : Int) : Class<Dynamic>;
	
	@:overload public function new() : Void;
	
	@:overload @:synchronized public function vmAt(pos : Int) : sun.tools.jconsole.LocalVirtualMachine;
	
	@:overload @:synchronized public function refresh() : Void;
	
	
}
@:native('sun$tools$jconsole$ConnectDialog$Padder') @:internal extern class ConnectDialog_Padder extends javax.swing.JPanel
{
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	
}
