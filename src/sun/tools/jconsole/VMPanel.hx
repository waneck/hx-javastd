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
extern class VMPanel extends javax.swing.JTabbedPane implements java.beans.PropertyChangeListener
{
	@:overload public static function getTabInfos() : java.NativeArray<sun.tools.jconsole.VMPanel.VMPanel_TabInfo>;
	
	@:overload override public function setUI(ui : javax.swing.plaf.TabbedPaneUI) : Void;
	
	@:overload private function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload override public function getToolTipText(event : java.awt.event.MouseEvent) : String;
	
	@:overload @:synchronized override public function removeTabAt(index : Int) : Void;
	
	@:overload public function getUpdateInterval() : Int;
	
	@:overload public function getProxyClient() : sun.tools.jconsole.ProxyClient;
	
	@:overload public function cleanUp() : Void;
	
	@:overload public function connect() : Void;
	
	@:overload public function disconnect() : Void;
	
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function getHostName() : String;
	
	@:overload public function getPort() : Int;
	
	@:overload public function getUserName() : String;
	
	@:overload public function getUrl() : String;
	
	@:overload public function getPassword() : String;
	
	@:overload public function getConnectionName() : String;
	
	@:overload public function getDisplayName() : String;
	
	
}
@:native('sun$tools$jconsole$VMPanel$TabInfo') @:internal extern class VMPanel_TabInfo
{
	
}
