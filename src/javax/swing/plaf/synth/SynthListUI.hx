package javax.swing.plaf.synth;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SynthListUI extends javax.swing.plaf.basic.BasicListUI implements java.beans.PropertyChangeListener implements javax.swing.plaf.synth.SynthUI
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param list component to create UI object for
	* @return the UI object
	*/
	@:overload @:public @:static public static function createUI(list : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Notifies this UI delegate to repaint the specified component.
	* This method paints the component background, then calls
	* the {@link #paint} method.
	*
	* <p>In general, this method does not need to be overridden by subclasses.
	* All Look and Feel rendering code should reside in the {@code paint} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint
	*/
	@:overload @:public override public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function installDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:protected override private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload @:public public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	
}
@:native('javax$swing$plaf$synth$SynthListUI$SynthListCellRenderer') @:internal extern class SynthListUI_SynthListCellRenderer extends javax.swing.DefaultListCellRenderer.DefaultListCellRenderer_UIResource
{
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function setBorder(b : javax.swing.border.Border) : Void;
	
	@:overload @:public override public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	@:overload @:public override public function paint(g : java.awt.Graphics) : Void;
	
	
}
