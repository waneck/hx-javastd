package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsSliderUI extends javax.swing.plaf.basic.BasicSliderUI
{
	@:overload @:public public function new(b : javax.swing.JSlider) : Void;
	
	@:overload @:public @:static public static function createUI(b : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Overrides to return a private track listener subclass which handles
	* the HOT, PRESSED, and FOCUSED states.
	* @since 1.6
	*/
	@:require(java6) @:overload @:protected override private function createTrackListener(slider : javax.swing.JSlider) : javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener;
	
	@:overload @:public override public function paintTrack(g : java.awt.Graphics) : Void;
	
	@:overload @:protected override private function paintMinorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected override private function paintMajorTickForHorizSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, x : Int) : Void;
	
	@:overload @:protected override private function paintMinorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload @:protected override private function paintMajorTickForVertSlider(g : java.awt.Graphics, tickBounds : java.awt.Rectangle, y : Int) : Void;
	
	@:overload @:public override public function paintThumb(g : java.awt.Graphics) : Void;
	
	@:overload @:protected override private function getThumbSize() : java.awt.Dimension;
	
	
}
@:native('com$sun$java$swing$plaf$windows$WindowsSliderUI$WindowsTrackListener') @:internal extern class WindowsSliderUI_WindowsTrackListener extends javax.swing.plaf.basic.BasicSliderUI.BasicSliderUI_TrackListener
{
	@:overload @:public override public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function updatePressed(newPressed : Bool) : Void;
	
	@:overload @:public public function updateRollover(newRollover : Bool) : Void;
	
	
}
