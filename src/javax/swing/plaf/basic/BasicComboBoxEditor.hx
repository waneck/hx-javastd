package javax.swing.plaf.basic;
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
extern class BasicComboBoxEditor implements javax.swing.ComboBoxEditor implements java.awt.event.FocusListener
{
	/**
	* The default editor for editable combo boxes. The editor is implemented as a JTextField.
	*
	* @author Arnaud Weber
	* @author Mark Davidson
	*/
	private var editor : javax.swing.JTextField;
	
	@:overload public function new() : Void;
	
	@:overload public function getEditorComponent() : java.awt.Component;
	
	/**
	* Creates the internal editor component. Override this to provide
	* a custom implementation.
	*
	* @return a new editor component
	* @since 1.6
	*/
	@:require(java6) @:overload private function createEditorComponent() : javax.swing.JTextField;
	
	/**
	* Sets the item that should be edited.
	*
	* @param anObject the displayed value of the editor
	*/
	@:overload public function setItem(anObject : Dynamic) : Void;
	
	@:overload public function getItem() : Dynamic;
	
	@:overload public function selectAll() : Void;
	
	@:overload public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	@:overload public function addActionListener(l : java.awt.event.ActionListener) : Void;
	
	@:overload public function removeActionListener(l : java.awt.event.ActionListener) : Void;
	
	
}
@:native('javax$swing$plaf$basic$BasicComboBoxEditor$BorderlessTextField') @:internal extern class BasicComboBoxEditor_BorderlessTextField extends javax.swing.JTextField
{
	@:overload public function new(value : String, n : Int) : Void;
	
	@:overload override public function setText(s : String) : Void;
	
	@:overload public function setBorder(b : javax.swing.border.Border) : Void;
	
	
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
@:native('javax$swing$plaf$basic$BasicComboBoxEditor$UIResource') extern class BasicComboBoxEditor_UIResource extends javax.swing.plaf.basic.BasicComboBoxEditor implements javax.swing.plaf.UIResource
{
	
}
