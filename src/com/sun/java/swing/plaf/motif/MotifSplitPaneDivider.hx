package com.sun.java.swing.plaf.motif;
/*
* Copyright (c) 1997, 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class MotifSplitPaneDivider extends javax.swing.plaf.basic.BasicSplitPaneDivider
{
	public static var minimumThumbSize(default, null) : Int;
	
	public static var defaultDividerSize(default, null) : Int;
	
	private static var pad(default, null) : Int;
	
	private var hThumbWidth : Int;
	
	private var hThumbHeight : Int;
	
	private var vThumbWidth : Int;
	
	private var vThumbHeight : Int;
	
	private var highlightColor : java.awt.Color;
	
	private var shadowColor : java.awt.Color;
	
	private var focusedColor : java.awt.Color;
	
	/**
	* Creates a new Motif SplitPaneDivider
	*/
	@:overload public function new(ui : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	/**
	* overrides to hardcode the size of the divider
	* PENDING(jeff) - rewrite JSplitPane so that this ins't needed
	*/
	@:overload override public function setDividerSize(newSize : Int) : Void;
	
	/**
	* Paints the divider.
	*/
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	/**
	* The minimums size is the same as the preferredSize
	*/
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	/**
	* Sets the SplitPaneUI that is using the receiver. This is completely
	* overriden from super to create a different MouseHandler.
	*/
	@:overload override public function setBasicSplitPaneUI(newUI : javax.swing.plaf.basic.BasicSplitPaneUI) : Void;
	
	
}
/**
* MouseHandler is subclassed to only pass off to super if the mouse
* is in the thumb. Motif only allows dragging when the thumb is clicked
* in.
*/
@:native('com$sun$java$swing$plaf$motif$MotifSplitPaneDivider$MotifMouseHandler') @:internal extern class MotifSplitPaneDivider_MotifMouseHandler extends MouseHandler
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseMoved(e : java.awt.event.MouseEvent) : Void;
	
	
}
