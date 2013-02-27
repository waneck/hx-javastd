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
extern class XTextFieldEditor extends sun.tools.jconsole.inspector.XTextField implements javax.swing.table.TableCellEditor
{
	private var evtListenerList : javax.swing.event.EventListenerList;
	
	private var changeEvent : javax.swing.event.ChangeEvent;
	
	@:overload public function new() : Void;
	
	@:overload override public function actionPerformed(e : java.awt.event.ActionEvent) : Void;
	
	@:overload private function dropSuccess() : Void;
	
	@:overload public function addCellEditorListener(listener : javax.swing.event.CellEditorListener) : Void;
	
	@:overload public function removeCellEditorListener(listener : javax.swing.event.CellEditorListener) : Void;
	
	@:overload private function fireEditingStopped() : Void;
	
	@:overload private function fireEditingCanceled() : Void;
	
	@:overload public function cancelCellEditing() : Void;
	
	@:overload public function stopCellEditing() : Bool;
	
	@:overload public function isCellEditable(event : java.util.EventObject) : Bool;
	
	@:overload public function shouldSelectCell(event : java.util.EventObject) : Bool;
	
	@:overload public function getCellEditorValue() : Dynamic;
	
	@:overload public function getTableCellEditorComponent(table : javax.swing.JTable, value : Dynamic, isSelected : Bool, row : Int, column : Int) : java.awt.Component;
	
	
}
