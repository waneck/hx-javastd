package sun.awt.X11;
/*
* Copyright (c) 2002, 2007, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XCheckboxPeer extends sun.awt.X11.XComponentPeer implements java.awt.peer.CheckboxPeer
{
	@:overload @:public public function preInit(params : sun.awt.X11.XCreateWindowParams) : Void;
	
	@:overload @:public override public function isFocusable() : Bool;
	
	@:overload @:public override public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public override public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function keyTyped(e : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function keyPressed(e : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function keyReleased(e : java.awt.event.KeyEvent) : Void;
	
	@:overload @:public public function setLabel(label : String) : Void;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	@:overload @:public override public function setBackground(c : java.awt.Color) : Void;
	
	/*
	* Layout the checkbox/radio button and text label
	*/
	@:overload @:public override public function layout() : Void;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload @:public public function paintCheckbox(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public override public function setFont(f : java.awt.Font) : Void;
	
	@:overload @:public public function paintRadioButton(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:protected private function paintText(g : java.awt.Graphics, textRect : java.awt.Rectangle, text : String) : Void;
	
	@:overload @:protected private function paintFocus(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload @:public public function setState(state : Bool) : Void;
	
	@:overload @:public public function setCheckboxGroup(g : java.awt.CheckboxGroup) : Void;
	
	
}
