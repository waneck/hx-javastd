package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalScrollBarUI extends javax.swing.plaf.basic.BasicScrollBarUI
{
	private var bumps : javax.swing.plaf.metal.MetalBumps;
	
	private var increaseButton : javax.swing.plaf.metal.MetalScrollButton;
	
	private var decreaseButton : javax.swing.plaf.metal.MetalScrollButton;
	
	private var scrollBarWidth : Int;
	
	public static var FREE_STANDING_PROP(default, null) : String;
	
	private var isFreeStanding : Bool;
	
	@:native('createUI') @:overload public static function _createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload override private function installDefaults() : Void;
	
	@:overload override private function installListeners() : Void;
	
	@:overload override private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	@:overload override private function configureScrollBarColors() : Void;
	
	@:overload override public function getPreferredSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	/** Returns the view that represents the decrease view.
	*/
	@:overload override private function createDecreaseButton(orientation : Int) : javax.swing.JButton;
	
	/** Returns the view that represents the increase view. */
	@:overload override private function createIncreaseButton(orientation : Int) : javax.swing.JButton;
	
	@:overload override private function paintTrack(g : java.awt.Graphics, c : javax.swing.JComponent, trackBounds : java.awt.Rectangle) : Void;
	
	@:overload override private function paintThumb(g : java.awt.Graphics, c : javax.swing.JComponent, thumbBounds : java.awt.Rectangle) : Void;
	
	@:overload override private function getMinimumThumbSize() : java.awt.Dimension;
	
	/**
	* This is overridden only to increase the invalid area.  This
	* ensures that the "Shadow" below the thumb is invalidated
	*/
	@:overload override private function setThumbBounds(x : Int, y : Int, width : Int, height : Int) : Void;
	
	
}
@:native('javax$swing$plaf$metal$MetalScrollBarUI$ScrollBarListener') @:internal extern class MetalScrollBarUI_ScrollBarListener extends javax.swing.plaf.basic.BasicScrollBarUI.BasicScrollBarUI_PropertyChangeHandler
{
	@:overload override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload public function handlePropertyChange(newValue : Dynamic) : Void;
	
	@:overload private function toFlush() : Void;
	
	@:overload private function toFreeStanding() : Void;
	
	
}
