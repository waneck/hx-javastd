package com.sun.java.swing.plaf.windows;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowsScrollBarUI extends javax.swing.plaf.basic.BasicScrollBarUI
{
	/**
	* Creates a UI for a JScrollBar.
	*
	* @param c the text field
	* @return the UI
	*/
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override private function installDefaults() : Void;
	
	@:overload override public function uninstallUI(c : javax.swing.JComponent) : Void;
	
	@:overload override private function configureScrollBarColors() : Void;
	
	@:overload override private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload override private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function createArrowButtonListener() : javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_ArrowButtonListener;
	
	@:overload override private function paintTrack(g : java.awt.Graphics, c : javax.swing.JComponent, trackBounds : java.awt.Rectangle) : Void;
	
	@:overload override private function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
	@:overload override private function paintDecreaseHighlight(g : java.awt.Graphics) : Void;
	
	@:overload override private function paintIncreaseHighlight(g : java.awt.Graphics) : Void;
	
	/**
	* {@inheritDoc}
	* @since 1.6
	*/
	@:require(java6) @:overload override private function setThumbRollover(active : Bool) : Void;
	
	
}
/**
* WindowsArrowButton is used for the buttons to position the
* document up/down. It differs from BasicArrowButton in that the
* preferred size is always a square.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsScrollBarUI$WindowsArrowButton') @:internal extern class WindowsScrollBarUI_WindowsArrowButton extends javax.swing.plaf.basic.BasicArrowButton
{
	@:overload public function new(direction : Int, background : java.awt.Color, shadow : java.awt.Color, darkShadow : java.awt.Color, highlight : java.awt.Color) : Void;
	
	@:overload public function new(direction : Int) : Void;
	
	@:overload override public function paint(g : java.awt.Graphics) : Void;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	
}
/**
* This should be pulled out into its own class if more classes need to
* use it.
* <p>
* Grid is used to draw the track for windows scrollbars. Grids
* are cached in a HashMap, with the key being the rgb components
* of the foreground/background colors. Further the Grid is held through
* a WeakRef so that it can be freed when no longer needed. As the
* Grid is rather expensive to draw, it is drawn in a BufferedImage.
*/
@:native('com$sun$java$swing$plaf$windows$WindowsScrollBarUI$Grid') @:internal extern class WindowsScrollBarUI_Grid
{
	@:overload public static function getGrid(fg : java.awt.Color, bg : java.awt.Color) : WindowsScrollBarUI_Grid;
	
	@:overload public function new(fg : java.awt.Color, bg : java.awt.Color) : Void;
	
	/**
	* Paints the grid into the specified Graphics at the specified
	* location.
	*/
	@:overload public function paint(g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	
}
