package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Metal UI for JComboBox
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*
* @see MetalComboBoxEditor
* @see MetalComboBoxButton
* @author Tom Santos
*/
extern class MetalComboBoxUI extends javax.swing.plaf.basic.BasicComboBoxUI
{
	@:overload @:public @:static public static function createUI(c : javax.swing.JComponent) : javax.swing.plaf.ComponentUI;
	
	@:overload @:public override public function paint(g : java.awt.Graphics, c : javax.swing.JComponent) : Void;
	
	/**
	* If necessary paints the currently selected item.
	*
	* @param g Graphics to paint to
	* @param bounds Region to paint current value to
	* @param hasFocus whether or not the JComboBox has focus
	* @throws NullPointerException if any of the arguments are null.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function paintCurrentValue(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* If necessary paints the background of the currently selected item.
	*
	* @param g Graphics to paint to
	* @param bounds Region to paint background to
	* @param hasFocus whether or not the JComboBox has focus
	* @throws NullPointerException if any of the arguments are null.
	* @since 1.5
	*/
	@:require(java5) @:overload @:public override public function paintCurrentValueBackground(g : java.awt.Graphics, bounds : java.awt.Rectangle, hasFocus : Bool) : Void;
	
	/**
	* Returns the baseline.
	*
	* @throws NullPointerException {@inheritDoc}
	* @throws IllegalArgumentException {@inheritDoc}
	* @see javax.swing.JComponent#getBaseline(int, int)
	* @since 1.6
	*/
	@:require(java6) @:overload @:public override public function getBaseline(c : javax.swing.JComponent, width : Int, height : Int) : Int;
	
	@:overload @:protected override private function createEditor() : javax.swing.ComboBoxEditor;
	
	@:overload @:protected override private function createPopup() : javax.swing.plaf.basic.ComboPopup;
	
	@:overload @:protected override private function createArrowButton() : javax.swing.JButton;
	
	@:overload @:public override public function createPropertyChangeListener() : java.beans.PropertyChangeListener;
	
	/**
	* As of Java 2 platform v1.4 this method is no longer used. Do not call or
	* override. All the functionality of this method is in the
	* MetalPropertyChangeListener.
	*
	* @deprecated As of Java 2 platform v1.4.
	*/
	@:overload @:protected private function editablePropertyChanged(e : java.beans.PropertyChangeEvent) : Void;
	
	@:overload @:protected override private function createLayoutManager() : java.awt.LayoutManager;
	
	@:overload @:public public function layoutComboBox(parent : java.awt.Container, manager : javax.swing.plaf.metal.MetalComboBoxUI.MetalComboBoxUI_MetalComboBoxLayoutManager) : Void;
	
	/**
	* As of Java 2 platform v1.4 this method is no
	* longer used.
	*
	* @deprecated As of Java 2 platform v1.4.
	*/
	@:overload @:protected private function removeListeners() : Void;
	
	@:overload @:public override public function configureEditor() : Void;
	
	@:overload @:public override public function unconfigureEditor() : Void;
	
	@:overload @:public override public function getMinimumSize(c : javax.swing.JComponent) : java.awt.Dimension;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code MetalComboBoxUI}.
*/
@:native('javax$swing$plaf$metal$MetalComboBoxUI$MetalPropertyChangeListener') extern class MetalComboBoxUI_MetalPropertyChangeListener extends javax.swing.plaf.basic.BasicComboBoxUI.BasicComboBoxUI_PropertyChangeHandler
{
	@:overload @:public override public function propertyChange(e : java.beans.PropertyChangeEvent) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code MetalComboBoxUI}.
*/
@:native('javax$swing$plaf$metal$MetalComboBoxUI$MetalComboBoxLayoutManager') extern class MetalComboBoxUI_MetalComboBoxLayoutManager extends javax.swing.plaf.basic.BasicComboBoxUI.BasicComboBoxUI_ComboBoxLayoutManager
{
	@:overload @:public override public function layoutContainer(parent : java.awt.Container) : Void;
	
	@:overload @:public public function superLayout(parent : java.awt.Container) : Void;
	
	
}
/**
* This class should be treated as a &quot;protected&quot; inner class.
* Instantiate it only within subclasses of {@code MetalComboBoxUI}.
*
* This class is now obsolete and doesn't do anything and
* is only included for backwards API compatibility. Do not call or
* override.
*
* @deprecated As of Java 2 platform v1.4.
*/
@:native('javax$swing$plaf$metal$MetalComboBoxUI$MetalComboPopup') extern class MetalComboBoxUI_MetalComboPopup extends javax.swing.plaf.basic.BasicComboPopup
{
	@:overload @:public public function new(cBox : javax.swing.JComboBox<Dynamic>) : Void;
	
	@:overload @:public override public function delegateFocus(e : java.awt.event.MouseEvent) : Void;
	
	
}
