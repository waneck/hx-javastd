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
/**
* ComboBox motif look and feel
* <p> * <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases.  The current serialization support is appropriate
* for short term storage or RMI between applications running the same
* version of Swing.  A future release of Swing will provide support for
* long term persistence.
*
* @author Arnaud Weber
*/
extern class MotifComboBoxUI extends javax.swing.plaf.basic.BasicComboBoxUI implements java.io.Serializable
{
	@:overload public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload public function installUI(c : javax.swing.JComponent) : Void;
	
	@:overload public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	@:overload private function createPopup() : javax.swing.plaf.basic.ComboPopup;
	
	@:overload private function installComponents() : Void;
	
	@:overload private function uninstallComponents() : Void;
	
	@:overload public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	@:overload public function paintCurrentValue(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	@:overload private function rectangleForArrowIcon() : java.awt.Rectangle;
	
	@:overload private function rectangleForCurrentValue() : java.awt.Rectangle;
	
	@:overload public function iconAreaWidth() : Int;
	
	@:overload public function configureEditor() : Void;
	
	@:overload private function createLayoutManager() : java.awt.LayoutManager;
	
	/**
	*{@inheritDoc}
	*
	* @since 1.6
	*/
	@:require(java6) @:overload private function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	
}
/**
* Overriden to empty the MouseMotionListener.
*/
@:native('com$sun$java$swing$plaf$motif$MotifComboBoxUI$MotifComboPopup') extern class MotifComboBoxUI_MotifComboPopup extends javax.swing.plaf.basic.BasicComboPopup
{
	@:overload public function new(comboBox : javax.swing.JComboBox<Dynamic>) : Void;
	
	/**
	* Motif combo popup should not track the mouse in the list.
	*/
	@:overload override public function createListMouseMotionListener() : java.awt.event.MouseMotionListener;
	
	@:overload override public function createKeyListener() : java.awt.event.KeyListener;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifComboBoxUI$MotifComboPopup$InvocationKeyHandler') extern class MotifComboBoxUI_MotifComboPopup_InvocationKeyHandler extends javax.swing.plaf.basic.BasicComboPopup.BasicComboPopup_InvocationKeyHandler
{
	@:overload private function new() : Void;
	
	
}
/**
* This inner class is marked &quot;public&quot; due to a compiler bug.
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of <FooUI>.
*/
@:native('com$sun$java$swing$plaf$motif$MotifComboBoxUI$ComboBoxLayoutManager') extern class MotifComboBoxUI_ComboBoxLayoutManager extends javax.swing.plaf.basic.BasicComboBoxUI.BasicComboBoxUI_ComboBoxLayoutManager
{
	@:overload public function new() : Void;
	
	@:overload public function layoutContainer(parent : java.awt.Container) : Void;
	
	
}
@:native('com$sun$java$swing$plaf$motif$MotifComboBoxUI$MotifComboBoxArrowIcon') @:internal extern class MotifComboBoxUI_MotifComboBoxArrowIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload public function new(lightShadow : java.awt.Color, darkShadow : java.awt.Color, fill : java.awt.Color) : Void;
	
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, xo : Int, yo : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
/**
* This class should be made &quot;protected&quot; in future releases.
*/
@:native('com$sun$java$swing$plaf$motif$MotifComboBoxUI$MotifPropertyChangeListener') @:internal extern class MotifComboBoxUI_MotifPropertyChangeListener extends javax.swing.plaf.basic.BasicComboBoxUI.BasicComboBoxUI_PropertyChangeHandler
{
	@:overload public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
