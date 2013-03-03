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
extern class XMBeanNotifications extends javax.swing.JTable implements javax.management.NotificationListener
{
	@:public @:final @:static public static var NOTIFICATION_RECEIVED_EVENT(default, null) : String;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function cancelCellEditing() : Void;
	
	@:overload @:public public function stopCellEditing() : Void;
	
	@:overload @:public override public function isCellEditable(row : Int, col : Int) : Bool;
	
	@:overload @:public override public function setValueAt(value : Dynamic, row : Int, column : Int) : Void;
	
	@:overload @:public @:synchronized override public function prepareRenderer(renderer : javax.swing.table.TableCellRenderer, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public @:synchronized override public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	@:overload @:public public function getReceivedNotifications(mbean : sun.tools.jconsole.inspector.XMBean) : haxe.Int64;
	
	@:overload @:public @:synchronized public function clearCurrentNotifications() : Bool;
	
	@:overload @:public @:synchronized public function unregisterListener(node : javax.swing.tree.DefaultMutableTreeNode) : Bool;
	
	@:overload @:public @:synchronized public function registerListener(node : javax.swing.tree.DefaultMutableTreeNode) : Void;
	
	@:overload @:public @:synchronized public function handleNotification(notif : javax.management.Notification, handback : Dynamic) : Void;
	
	@:overload @:public @:synchronized public function disableNotifications() : Void;
	
	@:overload @:public public function addNotificationsListener(nl : javax.management.NotificationListener) : Void;
	
	@:overload @:public public function removeNotificationsListener(nl : javax.management.NotificationListener) : Void;
	
	@:overload @:public @:synchronized public function isListenerRegistered(mbean : sun.tools.jconsole.inspector.XMBean) : Bool;
	
	@:overload @:public @:synchronized public function loadNotifications(mbean : sun.tools.jconsole.inspector.XMBean) : Void;
	
	@:overload @:public public function isTableEditable() : Bool;
	
	@:overload @:public @:synchronized public function emptyTable() : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanNotifications$UserDataCellRenderer') @:internal extern class XMBeanNotifications_UserDataCellRenderer extends javax.swing.table.DefaultTableCellRenderer
{
	@:overload @:public override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public public function getComponent() : java.awt.Component;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanNotifications$UserDataCell') @:internal extern class XMBeanNotifications_UserDataCell
{
	@:overload @:public public function toString() : String;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanNotifications$NotifMouseListener') @:internal extern class XMBeanNotifications_NotifMouseListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanNotifications$UserDataCellEditor') @:internal extern class XMBeanNotifications_UserDataCellEditor extends sun.tools.jconsole.inspector.XTextFieldEditor
{
	@:overload @:public override public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:public override public function stopCellEditing() : Bool;
	
	
}
@:native('sun$tools$jconsole$inspector$XMBeanNotifications$XMBeanNotificationsListener') @:internal extern class XMBeanNotifications_XMBeanNotificationsListener implements javax.management.NotificationListener
{
	@:overload @:public public function new(notifications : sun.tools.jconsole.inspector.XMBeanNotifications, xmbean : sun.tools.jconsole.inspector.XMBean, node : javax.swing.tree.DefaultMutableTreeNode, columnNames : java.NativeArray<String>) : Void;
	
	@:overload @:public @:synchronized public function getData() : java.util.List<java.NativeArray<Dynamic>>;
	
	@:overload @:public @:synchronized public function clear() : Void;
	
	@:overload @:public @:synchronized public function isRegistered() : Bool;
	
	@:overload @:public @:synchronized public function unregister() : Void;
	
	@:overload @:public @:synchronized public function getReceivedNotifications() : haxe.Int64;
	
	@:overload @:public @:synchronized public function register(node : javax.swing.tree.DefaultMutableTreeNode) : Void;
	
	@:overload @:public @:synchronized public function handleNotification(n : javax.management.Notification, hb : Dynamic) : Void;
	
	
}
