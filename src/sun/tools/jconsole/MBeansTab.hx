package sun.tools.jconsole;
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
extern class MBeansTab extends sun.tools.jconsole.Tab implements javax.management.NotificationListener implements java.beans.PropertyChangeListener implements javax.swing.event.TreeSelectionListener implements javax.swing.event.TreeWillExpandListener
{
	@:overload public static function getTabName() : String;
	
	@:overload public function new(vmPanel : sun.tools.jconsole.VMPanel) : Void;
	
	@:overload public function getDataViewer() : sun.tools.jconsole.inspector.XDataViewer;
	
	@:overload public function getTree() : sun.tools.jconsole.inspector.XTree;
	
	@:overload public function getSheet() : sun.tools.jconsole.inspector.XSheet;
	
	@:overload override public function dispose() : Void;
	
	@:overload public function getUpdateInterval() : Int;
	
	@:overload public function getMBeanServerConnection() : javax.management.MBeanServerConnection;
	
	@:overload public function getSnapshotMBeanServerConnection() : sun.tools.jconsole.ProxyClient.ProxyClient_SnapshotMBeanServerConnection;
	
	@:overload override public function update() : Void;
	
	/* notification listener:  handleNotification */
	@:overload public function handleNotification(notification : javax.management.Notification, handback : Dynamic) : Void;
	
	/* property change listener:  propertyChange */
	@:overload public function propertyChange(evt : java.beans.PropertyChangeEvent) : Void;
	
	/* tree selection listener: valueChanged */
	@:overload public function valueChanged(e : javax.swing.event.TreeSelectionEvent) : Void;
	
	/* tree will expand listener: treeWillExpand */
	@:overload public function treeWillExpand(e : javax.swing.event.TreeExpansionEvent) : Void;
	
	/* tree will expand listener: treeWillCollapse */
	@:overload public function treeWillCollapse(e : javax.swing.event.TreeExpansionEvent) : Void;
	
	
}
