package sun.awt;
/*
* Copyright (c) 1995, Oracle and/or its affiliates. All rights reserved.
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
extern class VariableGridLayout extends java.awt.GridLayout
{
	/**
	* Creates a grid layout with the specified rows and specified columns.
	* @param rows the rows
	* @param cols the columns
	*/
	@:overload @:public public function new(rows : Int, cols : Int) : Void;
	
	/**
	* Creates a grid layout with the specified rows, columns,
	* horizontal gap, and vertical gap.
	* @param rows the rows
	* @param cols the columns
	* @param hgap the horizontal gap variable
	* @param vgap the vertical gap variable
	* @exception IllegalArgumentException If the rows and columns are invalid.
	*/
	@:overload @:public public function new(rows : Int, cols : Int, hgap : Int, vgap : Int) : Void;
	
	@:overload @:public public function setRowFraction(rowNum : Int, fraction : Float) : Void;
	
	@:overload @:public public function setColFraction(colNum : Int, fraction : Float) : Void;
	
	@:overload @:public public function getRowFraction(rowNum : Int) : Float;
	
	@:overload @:public public function getColFraction(colNum : Int) : Float;
	
	/**
	* Lays out the container in the specified panel.
	* @param parent the specified component being laid out
	* @see Container
	*/
	@:overload @:public override public function layoutContainer(parent : java.awt.Container) : Void;
	
	/**
	* Returns the String representation of this VariableGridLayout's values.
	*/
	@:overload @:public override public function toString() : String;
	
	
}
