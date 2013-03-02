package javax.swing.plaf.metal;
/*
* Copyright (c) 1998, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class MetalComboBoxEditor extends javax.swing.plaf.basic.BasicComboBoxEditor
{
	/**
	* The default editor for Metal editable combo boxes
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
	* @author Steve Wilson
	*/
	@:overload public function new() : Void;
	
	/**
	* The default editor border <code>Insets</code>. This field
	* might not be used.
	*/
	private static var editorBorderInsets : java.awt.Insets;
	
	
}
@:native('javax$swing$plaf$metal$MetalComboBoxEditor$EditorBorder') @:internal extern class MetalComboBoxEditor_EditorBorder extends javax.swing.border.AbstractBorder
{
	@:overload public function paintBorder(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int, w : Int, h : Int) : Void;
	
	@:overload public function getBorderInsets(c : java.awt.Component, insets : java.awt.Insets) : java.awt.Insets;
	
	
}
/**
* A subclass of BasicComboBoxEditor that implements UIResource.
* BasicComboBoxEditor doesn't implement UIResource
* directly so that applications can safely override the
* cellRenderer property with BasicListCellRenderer subclasses.
* <p>
* <strong>Warning:</strong>
* Serialized objects of this class will not be compatible with
* future Swing releases. The current serialization support is
* appropriate for short term storage or RMI between applications running
* the same version of Swing.  As of 1.4, support for long term storage
* of all JavaBeans<sup><font size="-2">TM</font></sup>
* has been added to the <code>java.beans</code> package.
* Please see {@link java.beans.XMLEncoder}.
*/
@:native('javax$swing$plaf$metal$MetalComboBoxEditor$UIResource') extern class MetalComboBoxEditor_UIResource extends javax.swing.plaf.metal.MetalComboBoxEditor implements javax.swing.plaf.UIResource
{
	
}
