package javax.swing.plaf.basic;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class BasicComboBoxRenderer extends javax.swing.JLabel implements javax.swing.ListCellRenderer<Dynamic> implements java.io.Serializable
{
	/**
	* An empty <code>Border</code>. This field might not be used. To change the
	* <code>Border</code> used by this renderer directly set it using
	* the <code>setBorder</code> method.
	*/
	private static var noFocusBorder : javax.swing.border.Border;
	
	@:overload public function new() : Void;
	
	@:overload override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	
}
/**
* A subclass of BasicComboBoxRenderer that implements UIResource.
* BasicComboBoxRenderer doesn't implement UIResource
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
@:native('javax$swing$plaf$basic$BasicComboBoxRenderer$UIResource') extern class BasicComboBoxRenderer_UIResource extends BasicComboBoxRenderer implements javax.swing.plaf.UIResource
{
	
}
