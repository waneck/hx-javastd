package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XMBeanAttributes extends sun.tools.jconsole.inspector.XTable
{
	@:overload @:public public function new(mbeansTab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload @:public @:synchronized override public function prepareRenderer(renderer : javax.swing.table.TableCellRenderer, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public @:synchronized override public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	@:overload @:public public function cancelCellEditing() : Void;
	
	@:overload @:public public function stopCellEditing() : Void;
	
	@:overload @:public @:final override public function editCellAt(row : Int, column : Int, e : java.util.EventObject) : Bool;
	
	@:overload @:public override public function isCellEditable(row : Int, col : Int) : Bool;
	
	@:overload @:public override public function setValueAt(value : Dynamic, row : Int, column : Int) : Void;
	
	@:overload @:public override public function isTableEditable() : Bool;
	
	@:overload @:public override public function setTableValue(value : Dynamic, row : Int) : Void;
	
	@:overload @:public override public function isColumnEditable(column : Int) : Bool;
	
	@:overload @:public override public function getClassName(row : Int) : String;
	
	@:overload @:public override public function getValueName(row : Int) : String;
	
	@:overload @:public override public function getValue(row : Int) : Dynamic;
	
	@:overload @:public override public function getToolTip(row : Int, column : Int) : String;
	
	@:overload @:public @:synchronized override public function isWritable(row : Int) : Bool;
	
	/**
	* Override JTable method in order to make any call to this method
	* atomic with TableModel elements.
	*/
	@:overload @:public @:synchronized override public function getRowCount() : Int;
	
	@:overload @:public @:synchronized override public function isReadable(row : Int) : Bool;
	
	@:overload @:public @:synchronized override public function isCellError(row : Int, col : Int) : Bool;
	
	@:overload @:public @:synchronized override public function isAttributeViewable(row : Int, col : Int) : Bool;
	
	@:overload @:public public function loadAttributes(mbean : sun.tools.jconsole.inspector.XMBean, mbeanInfo : javax.management.MBeanInfo) : Void;
	
	@:overload @:public public function refreshAttributes() : Void;
	
	@:overload @:public override public function columnMarginChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	@:overload @:public @:synchronized override public function emptyTable() : Void;
	
	@:overload @:protected private function addTableData(tableModel : javax.swing.table.DefaultTableModel, mbean : sun.tools.jconsole.inspector.XMBean, attributesInfo : java.NativeArray<javax.management.MBeanAttributeInfo>, attributes : java.util.HashMap<String, Dynamic>, unavailableAttributes : java.util.HashMap<String, Dynamic>, viewableAttributes : java.util.HashMap<String, Dynamic>) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanAttributes$AttributesMouseListener') @:internal extern class XMBeanAttributes_AttributesMouseListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanAttributes$ValueCellEditor') @:internal extern class XMBeanAttributes_ValueCellEditor extends sun.tools.jconsole.inspector.XTextFieldEditor
{
	@:overload @:public override public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public override public function stopCellEditing() : Bool;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanAttributes$MaximizedCellRenderer') @:internal extern class XMBeanAttributes_MaximizedCellRenderer extends javax.swing.table.DefaultTableCellRenderer
{
	@:overload @:public override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public public function getComponent() : java.awt.Component;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanAttributes$ZoomedCell') @:internal extern class XMBeanAttributes_ZoomedCell
{
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanAttributes$AttributesListener') @:internal extern class XMBeanAttributes_AttributesListener implements javax.swing.event.TableModelListener
{
	@:overload @:public public function new(component : java.awt.Component) : Void;
	
	@:overload @:public public function tableChanged(e : javax.swing.event.TableModelEvent) : Void;
	
	
}
