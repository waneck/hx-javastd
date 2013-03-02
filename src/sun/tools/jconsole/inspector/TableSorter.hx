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
//// Imports for picking up mouse events from the JTable.
extern class TableSorter extends javax.swing.table.DefaultTableModel implements java.awt.event.MouseListener
{
	@:overload public function new() : Void;
	
	@:overload public function new(columnNames : java.NativeArray<Dynamic>, numRows : Int) : Void;
	
	@:overload override public function newDataAvailable(e : javax.swing.event.TableModelEvent) : Void;
	
	@:overload public function addTableModelListener(l : javax.swing.event.TableModelListener) : Void;
	
	@:overload public function removeTableModelListener(l : javax.swing.event.TableModelListener) : Void;
	
	@:overload public function sortByColumn(column : Int) : Void;
	
	@:overload public function sortByColumn(column : Int, ascending : Bool) : Void;
	
	@:overload public function getIndexOfRow(row : Int) : Int;
	
	@:overload public function addMouseListenerToHeaderInTable(table : javax.swing.JTable) : Void;
	
	@:overload public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
