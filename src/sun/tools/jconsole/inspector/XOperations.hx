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
extern class XOperations extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	public static var OPERATION_INVOCATION_EVENT(default, null) : String;
	
	@:overload public function new(mbeansTab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload public function removeOperations() : Void;
	
	@:overload public function loadOperations(mbean : sun.tools.jconsole.inspector.XMBean, mbeanInfo : javax.management.MBeanInfo) : Void;
	
	@:overload public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload public function addOperationsListener(nl : javax.management.NotificationListener) : Void;
	
	@:overload public function removeOperationsListener(nl : javax.management.NotificationListener) : Void;
	
	@:overload @:abstract private function updateOperations(operations : java.NativeArray<javax.management.MBeanOperationInfo>) : java.NativeArray<javax.management.MBeanOperationInfo>;
	
	
}
