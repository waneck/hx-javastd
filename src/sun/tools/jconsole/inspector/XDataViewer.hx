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
extern class XDataViewer
{
	public static var OPEN(default, null) : Int;
	
	public static var ARRAY(default, null) : Int;
	
	public static var NUMERIC(default, null) : Int;
	
	public static var NOT_SUPPORTED(default, null) : Int;
	
	@:overload public function new(tab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload public static function registerForMouseEvent(comp : java.awt.Component, mouseListener : java.awt.event.MouseListener) : Void;
	
	@:overload public static function dispose(tab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload public static function isViewableValue(value : Dynamic) : Bool;
	
	@:overload public static function getViewerType(data : Dynamic) : Int;
	
	@:overload public static function getActionLabel(type : Int) : String;
	
	@:overload public function createOperationViewer(value : Dynamic, mbean : sun.tools.jconsole.inspector.XMBean) : java.awt.Component;
	
	@:overload public static function createNotificationViewer(value : Dynamic) : java.awt.Component;
	
	@:overload public function createAttributeViewer(value : Dynamic, mbean : sun.tools.jconsole.inspector.XMBean, attributeName : String, table : javax.swing.JTable) : java.awt.Component;
	
	
}
