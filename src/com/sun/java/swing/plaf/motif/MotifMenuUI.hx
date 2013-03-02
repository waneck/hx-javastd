package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifMenuUI extends javax.swing.plaf.basic.BasicMenuUI
{
	/**
	* A Motif L&F implementation of MenuUI.
	* <p>
	*
	* @author Georges Saab
	* @author Rich Schiavi
	*/
	@:overload public static function createUI(x : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload private function createChangeListener(c : javax.swing.JComponent) : javax.swing.event.ChangeListener;
	
	@:overload override private function createMouseInputListener(c : javax.swing.JComponent) : javax.swing.event.MouseInputListener;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifMenuUI$MotifChangeHandler') extern class MotifMenuUI_MotifChangeHandler extends javax.swing.plaf.basic.BasicMenuUI.BasicMenuUI_ChangeHandler
{
	@:overload public function new(m : javax.swing.JMenu, ui : com.sun.java.swing.plaf.motif.MotifMenuUI) : Void;
	
	@:overload public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifMenuUI$MouseInputHandler') extern class MotifMenuUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
