package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifDesktopPaneUI extends javax.swing.plaf.basic.BasicDesktopPaneUI
{
	/**
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author David Kloba
	*/
	@:overload @:public @:static public static function createUI(d : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:protected override private function installDesktopManager() : Void;
	
	@:overload @:public public function getInsets(c : javax.swing.JComponent) : java.awt.Insets;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopPaneUI$DragPane') @:internal extern class MotifDesktopPaneUI_DragPane extends javax.swing.JComponent
{
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifDesktopPaneUI$MotifDesktopManager') @:internal extern class MotifDesktopPaneUI_MotifDesktopManager extends javax.swing.DefaultDesktopManager implements java.io.Serializable implements javax.swing.plaf.UIResource
{
	@:overload @:public override public function setBoundsForFrame(f : javax.swing.JComponent, newX : Int, newY : Int, newWidth : Int, newHeight : Int) : Void;
	
	@:overload @:public override public function beginDraggingFrame(f : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function dragFrame(f : javax.swing.JComponent, newX : Int, newY : Int) : Void;
	
	@:overload @:public override public function endDraggingFrame(f : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function beginResizingFrame(f : javax.swing.JComponent, direction : Int) : Void;
	
	@:overload @:public override public function resizeFrame(f : javax.swing.JComponent, newX : Int, newY : Int, newWidth : Int, newHeight : Int) : Void;
	
	@:overload @:public override public function endResizingFrame(f : javax.swing.JComponent) : Void;
	
	@:overload @:public override public function iconifyFrame(f : javax.swing.JInternalFrame) : Void;
	
	/**
	* Change positions of icons in the desktop pane so that
	* they do not overlap
	*/
	@:overload @:protected private function adjustIcons(desktop : javax.swing.JDesktopPane) : Void;
	
	/**
	* Change positions of icon so that it doesn't overlap
	* other icons.
	*/
	@:overload @:protected private function adjustBoundsForIcon(icon : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon, x : Int, y : Int) : Void;
	
	@:overload @:protected private function getIconAt(desktop : javax.swing.JDesktopPane, icon : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon, x : Int, y : Int) : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon;
	
	
}
