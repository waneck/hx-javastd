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
extern class JConsole extends javax.swing.JFrame implements java.awt.event.ActionListener implements javax.swing.event.InternalFrameListener
{
	@:public @:final @:static public static var ROOT_URL(default, null) : String;
	
	@:overload @:public public function new(hotspot : Bool) : Void;
	
	@:overload @:public public function getDesktopPane() : javax.swing.JDesktopPane;
	
	@:overload @:public public function getInternalFrames() : java.util.List<sun.tools.jconsole.VMInternalFrame>;
	
	@:overload @:public public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function tileWindows() : Void;
	
	@:overload @:public public function cascadeWindows() : Void;
	
	@:overload @:public public function internalFrameClosing(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameOpened(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameClosed(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameIconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeiconified(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameActivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public public function internalFrameDeactivated(e : javax.swing.event.InternalFrameEvent) : Void;
	
	@:overload @:public @:static public static function main(args : java.NativeArray<String>) : Void;
	
	@:overload @:public @:static public static function isDebug() : Bool;
	
	@:overload @:public @:static public static function isLocalAttachAvailable() : Bool;
	
	
}
@:native('sun$tools$jconsole$JConsole$WindowMenu') @:internal extern class JConsole_WindowMenu extends javax.swing.JMenu
{
	
}
@:native('sun$tools$jconsole$JConsole$FixedJRootPane') @:internal extern class JConsole_FixedJRootPane extends javax.swing.JRootPane
{
	@:overload @:public override public function updateUI() : Void;
	
	/**
	* The revalidate method seems to be the only one that gets
	* called whenever there is a change of L&F or change of theme
	* in Windows L&F and GTK L&F.
	*/
	@:overload @:public override public function revalidate() : Void;
	
	
}
