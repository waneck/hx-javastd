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
extern class XMBeanInfo extends javax.swing.JPanel
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function emptyInfoTable() : Void;
	
	@:overload @:public public function emptyDescTable() : Void;
	
	@:overload @:public public function addMBeanInfo(mbean : sun.tools.jconsole.inspector.XMBean, mbeanInfo : javax.management.MBeanInfo) : Void;
	
	@:overload @:public public function addMBeanAttributeInfo(mbai : javax.management.MBeanAttributeInfo) : Void;
	
	@:overload @:public public function addMBeanOperationInfo(mboi : javax.management.MBeanOperationInfo) : Void;
	
	@:overload @:public public function addMBeanNotificationInfo(mbni : javax.management.MBeanNotificationInfo) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanInfo$ReadOnlyDefaultTableModel') @:internal extern class XMBeanInfo_ReadOnlyDefaultTableModel extends javax.swing.table.DefaultTableModel
{
	@:overload @:public override public function setValueAt(value : Dynamic, row : Int, col : Int) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanInfo$TableRowDivider') @:internal extern class XMBeanInfo_TableRowDivider
{
	@:overload @:public public function new(tableRowDividerText : String) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanInfo$MBeanInfoTableCellRenderer') @:internal extern class XMBeanInfo_MBeanInfoTableCellRenderer extends javax.swing.table.DefaultTableCellRenderer
{
	@:overload @:public override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanInfo$MBeanInfoTableCellEditor') @:internal extern class XMBeanInfo_MBeanInfoTableCellEditor extends sun.tools.jconsole.inspector.Utils.Utils_ReadOnlyTableCellEditor
{
	@:overload @:public public function new(tf : javax.swing.JTextField) : Void;
	
	@:overload @:public override public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
