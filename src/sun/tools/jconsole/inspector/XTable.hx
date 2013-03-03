package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XTable extends javax.swing.JTable
{
	@:overload @:public public function new() : Void;
	
	/**
	* This returns the select index as the table was at initialization
	*/
	@:overload @:public public function getSelectedIndex() : Int;
	
	/*
	* Converts the row into index (before sorting)
	*/
	@:overload @:public public function convertRowToIndex(row : Int) : Int;
	
	@:overload @:public public function emptyTable() : Void;
	
	@:overload @:public @:abstract public function isTableEditable() : Bool;
	
	@:overload @:public @:abstract public function isColumnEditable(column : Int) : Bool;
	
	@:overload @:public @:abstract public function isReadable(row : Int) : Bool;
	
	@:overload @:public @:abstract public function isWritable(row : Int) : Bool;
	
	@:overload @:public @:abstract public function isCellError(row : Int, col : Int) : Bool;
	
	@:overload @:public @:abstract public function isAttributeViewable(row : Int, col : Int) : Bool;
	
	@:overload @:public @:abstract public function setTableValue(value : Dynamic, row : Int) : Void;
	
	@:overload @:public @:abstract public function getValue(row : Int) : Dynamic;
	
	@:overload @:public @:abstract public function getClassName(row : Int) : String;
	
	@:overload @:public @:abstract public function getValueName(row : Int) : String;
	
	@:overload @:public public function isReadWrite(row : Int) : Bool;
	
	@:overload @:public override public function isCellEditable(row : Int, col : Int) : Bool;
	
	@:overload @:public public function isCellDroppable(row : Int, col : Int) : Bool;
	
	@:overload @:public public function getToolTip(row : Int, column : Int) : String;
	
	/**
	* This method sets read write rows to be blue, and other rows to be their
	* default rendered colour.
	*/
	@:overload @:public override public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	@:overload @:public override public function prepareRenderer(renderer : javax.swing.table.TableCellRenderer, row : Int, column : Int) : java.awt.Component;
	
	
}
