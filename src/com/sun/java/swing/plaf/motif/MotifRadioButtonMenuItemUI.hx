package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifRadioButtonMenuItemUI extends javax.swing.plaf.basic.BasicRadioButtonMenuItemUI
{
	/**
	* MotifRadioButtonMenuItem implementation
	* <p>
	* <strong>Warning:</strong>
	* Serialized objects of this class will not be compatible with
	* future Swing releases.  The current serialization support is appropriate
	* for short term storage or RMI between applications running the same
	* version of Swing.  A future release of Swing will provide support for
	* long term persistence.
	*
	* @author Georges Saab
	* @author Rich Schiavi
	*/
	@:protected private var changeListener : javax.swing.event.ChangeListener;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:protected override private function installListeners() : Void;
	
	@:overload @:protected override private function uninstallListeners() : Void;
	
	@:overload @:protected private function createChangeListener(c : javax.swing.JComponent) : javax.swing.event.ChangeListener;
	
	@:overload @:protected override private function createMouseInputListener(c : javax.swing.JComponent) : javax.swing.event.MouseInputListener;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifRadioButtonMenuItemUI$ChangeHandler') extern class MotifRadioButtonMenuItemUI_ChangeHandler implements javax.swing.event.ChangeListener implements java.io.Serializable
{
	@:overload @:public public function stateChanged(e : javax.swing.event.ChangeEvent) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifRadioButtonMenuItemUI$MouseInputHandler') extern class MotifRadioButtonMenuItemUI_MouseInputHandler implements javax.swing.event.MouseInputListener
{
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseDragged(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
