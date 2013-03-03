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
extern class MetalComboBoxButton extends javax.swing.JButton
{
	/**
	* JButton subclass to help out MetalComboBoxUI
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
	* @see MetalComboBoxButton
	* @author Tom Santos
	*/
	@:protected private var comboBox : javax.swing.JComboBox<Dynamic>;
	
	@:protected private var listBox : javax.swing.JList<Dynamic>;
	
	@:protected private var rendererPane : javax.swing.CellRendererPane;
	
	@:protected private var comboIcon : javax.swing.Icon;
	
	@:protected private var iconOnly : Bool;
	
	@:overload @:public @:final public function getComboBox() : javax.swing.JComboBox<Dynamic>;
	
	@:overload @:public @:final public function setComboBox(cb : javax.swing.JComboBox<Dynamic>) : Void;
	
	@:overload @:public @:final public function getComboIcon() : javax.swing.Icon;
	
	@:overload @:public @:final public function setComboIcon(i : javax.swing.Icon) : Void;
	
	@:overload @:public @:final public function isIconOnly() : Bool;
	
	@:overload @:public @:final public function setIconOnly(isIconOnly : Bool) : Void;
	
	@:overload @:public public function new(cb : javax.swing.JComboBox<Dynamic>, i : javax.swing.Icon, pane : javax.swing.CellRendererPane, list : javax.swing.JList<Dynamic>) : Void;
	
	@:overload @:public public function new(cb : javax.swing.JComboBox<Dynamic>, i : javax.swing.Icon, onlyIcon : Bool, pane : javax.swing.CellRendererPane, list : javax.swing.JList<Dynamic>) : Void;
	
	@:overload @:public override public function isFocusTraversable() : Bool;
	
	@:overload @:public override public function setEnabled(enabled : Bool) : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function getMinimumSize() : java.awt.Dimension;
	
	
}
