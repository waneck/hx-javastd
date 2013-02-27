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
	private var comboBox : javax.swing.JComboBox<Dynamic>;
	
	private var listBox : javax.swing.JList<Dynamic>;
	
	private var rendererPane : javax.swing.CellRendererPane;
	
	private var comboIcon : javax.swing.Icon;
	
	private var iconOnly : Bool;
	
	@:overload @:final public function getComboBox() : javax.swing.JComboBox<Dynamic>;
	
	@:overload @:final public function setComboBox(cb : javax.swing.JComboBox<Dynamic>) : Void;
	
	@:overload @:final public function getComboIcon() : javax.swing.Icon;
	
	@:overload @:final public function setComboIcon(i : javax.swing.Icon) : Void;
	
	@:overload @:final public function isIconOnly() : Bool;
	
	@:overload @:final public function setIconOnly(isIconOnly : Bool) : Void;
	
	@:overload public function new(cb : javax.swing.JComboBox<Dynamic>, i : javax.swing.Icon, pane : javax.swing.CellRendererPane, list : javax.swing.JList<Dynamic>) : Void;
	
	@:overload public function new(cb : javax.swing.JComboBox<Dynamic>, i : javax.swing.Icon, onlyIcon : Bool, pane : javax.swing.CellRendererPane, list : javax.swing.JList<Dynamic>) : Void;
	
	@:overload override public function isFocusTraversable() : Bool;
	
	@:overload override public function setEnabled(enabled : Bool) : Void;
	
	@:overload override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload override public function getMinimumSize() : java.awt.Dimension;
	
	
}
