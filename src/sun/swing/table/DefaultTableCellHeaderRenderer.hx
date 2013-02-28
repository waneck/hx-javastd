package sun.swing.table;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class DefaultTableCellHeaderRenderer extends javax.swing.table.DefaultTableCellRenderer implements javax.swing.table.DefaultTableCellRenderer.DefaultTableCellRenderer_UIResource
{
	@:overload public function new() : Void;
	
	@:overload override public function setHorizontalTextPosition(textPosition : Int) : Void;
	
	@:overload override public function getTableCellRendererComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, hasFocus : Bool, row : Int, column : Int) : java.awt.Component;
	
	@:overload public static function getColumnSortOrder(table : javax.swing.JTable, column : Int) : javax.swing.SortOrder;
	
	@:overload override public function paintComponent(g : java.awt.Graphics) : Void;
	
	
}
@:native('sun$swing$table$DefaultTableCellHeaderRenderer$EmptyIcon') @:internal extern class DefaultTableCellHeaderRenderer_EmptyIcon implements javax.swing.Icon implements java.io.Serializable
{
	@:overload public function paintIcon(c : java.awt.Component, g : java.awt.Graphics, x : Int, y : Int) : Void;
	
	@:overload public function getIconWidth() : Int;
	
	@:overload public function getIconHeight() : Int;
	
	
}
