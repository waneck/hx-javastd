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
extern class SynthTableUI extends javax.swing.plaf.basic.BasicTableUI implements javax.swing.plaf.synth.SynthUI implements java.beans.PropertyChangeListener
{
	/**
	* Creates a new UI object for the given component.
	*
	* @param c component to create UI object for
	* @return the UI object
	*/
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	/**
	* Initializes JTable properties, such as font, foreground, and background.
	* The font, foreground, and background properties are only set if their
	* current value is either null or a UIResource, other properties are set
	* if the current value is null.
	*
	* @see #installUI
	*/
	@:overload private function installDefaults() : Void;
	
	/**
	* Attaches listeners to the JTable.
	*/
	@:overload private function installListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function uninstallDefaults() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload private function uninstallListeners() : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function getContext(c : javax.swing.JComponent) : javax.swing.plaf.synth.SynthContext;
	
	/**
	* Notifies this UI delegate to repaint the specified component.
	* This method paints the component background, then calls
	* the {@link #paint(SynthContext,Graphics)} method.
	*
	* <p>In general, this method does not need to be overridden by subclasses.
	* All Look and Feel rendering code should reside in the {@code paint} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload public function update(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function paintBorder(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	/**
	* Paints the specified component according to the Look and Feel.
	* <p>This method is not used by Synth Look and Feel.
	* Painting is handled by the {@link #paint(SynthContext,Graphics)} method.
	*
	* @param g the {@code Graphics} object used for painting
	* @param c the component being painted
	* @see #paint(SynthContext,Graphics)
	*/
	@:overload public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* Paints the specified component.
	*
	* @param context context for the component being painted
	* @param g the {@code Graphics} object used for painting
	* @see #update(Graphics,JComponent)
	*/
	@:overload private function paint(context : javax.swing.plaf.synth.SynthContext, g : java.awt.Graphics) : Void;
	
	/**
	* @inheritDoc
	*/
	@:overload public function propertyChange(event : java.beans.PropertyChangeEvent) : Void;
	
	
}
@:native('javax$swing$plaf$synth$SynthTableUI$SynthBooleanTableCellRenderer') @:internal extern class SynthTableUI_SynthBooleanTableCellRenderer extends javax.swing.JCheckBox implements javax.swing.table.TableCellRenderer
{
	@:overload public function new() : Void;
	
	@:overload public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload public function isOpaque() : Bool;
	
	
}
@:native('javax$swing$plaf$synth$SynthTableUI$SynthTableCellRenderer') @:internal extern class SynthTableUI_SynthTableCellRenderer extends javax.swing.table.DefaultTableCellRenderer
{
	@:overload public function setOpaque(isOpaque : Bool) : Void;
	
	@:overload public function isOpaque() : Bool;
	
	@:overload public function getName() : String;
	
	@:overload public function setBorder(b : javax.swing.border.Border) : Void;
	
	@:overload public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload public function paint(g : java.awt.Graphics) : Void;
	
	
}
