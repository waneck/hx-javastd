package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2009, Oracle and/or its affiliates. All rights reserved.
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
/**
* Basic L&F for a minimized window on a desktop.
*
* @author David Kloba
* @author Steve Wilson
* @author Rich Schiavi
*/
extern class BasicDesktopIconUI extends javax.swing.plaf.DesktopIconUI
{
	private var desktopIcon : javax.swing.JInternalFrame.JInternalFrame_JDesktopIcon;
	
	private var frame : javax.swing.JInternalFrame;
	
	/**
	* The title pane component used in the desktop icon.
	*
	* @since 1.5
	*/
	@:require(java5) private var iconPane : javax.swing.JComponent;
	
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function new() : Void;
	
	@:overload override public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload private function installComponents() : Void;
	
	@:overload private function uninstallComponents() : Void;
	
	@:overload private function installListeners() : Void;
	
	@:overload private function uninstallListeners() : Void;
	
	@:overload private function installDefaults() : Void;
	
	@:overload private function uninstallDefaults() : Void;
	
	@:overload private function createMouseInputListener() : javax.swing.event.MouseInputListener;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/**
	* Desktop icons can not be resized.  Therefore, we should always
	* return the minimum size of the desktop icon.
	*
	* @see #getMinimumSize
	*/
	@:overload override public function getMaximumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload public function getInsets(c : javax.swing.JComponent) : java.awt.Insets;
	
	@:overload public function deiconize() : Void;
	
	
}
/**
* Listens for mouse movements and acts on them.
*
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code BasicDesktopIconUI}.
*/
@:native('javax$swing$plaf$basic$BasicDesktopIconUI$MouseInputHandler') extern class BasicDesktopIconUI_MouseInputHandler extends javax.swing.event.MouseInputAdapter
{
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload override public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function moveAndRepaint(f : javax.swing.JComponent, newX : Int, newY : Int, newWidth : Int, newHeight : Int) : Void;
	
	
}
