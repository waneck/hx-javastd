package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class XOpenTypeViewer extends javax.swing.JPanel implements java.awt.event.ActionListener
{
	/**
	* The supplied value is viewable iff:
	* - it's a CompositeData/TabularData, or
	* - it's a non-empty array of CompositeData/TabularData, or
	* - it's a non-empty Collection of CompositeData/TabularData.
	*/
	@:overload @:public @:static public static function isViewableValue(value : Dynamic) : Bool;
	
	@:overload @:public @:static public static function loadOpenType(value : Dynamic) : java.awt.Component;
	
	@:overload @:public public function actionPerformed(event : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XOpenTypeDataListener') @:internal extern class XOpenTypeViewer_XOpenTypeDataListener extends java.awt.event.MouseAdapter
{
	@:overload @:public override public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$Navigatable') @:internal extern interface XOpenTypeViewer_Navigatable
{
	@:overload @:public public function incrElement() : Void;
	
	@:overload @:public public function decrElement() : Void;
	
	@:overload @:public public function canDecrement() : Bool;
	
	@:overload @:public public function canIncrement() : Bool;
	
	@:overload @:public public function getElementCount() : Int;
	
	@:overload @:public public function getSelectedElementIndex() : Int;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XViewedTabularData') @:internal extern interface XOpenTypeViewer_XViewedTabularData extends sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_Navigatable
{
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XViewedArrayData') @:internal extern interface XOpenTypeViewer_XViewedArrayData extends sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_Navigatable
{
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XOpenTypeData') @:internal extern class XOpenTypeViewer_XOpenTypeData extends javax.swing.JTable
{
	@:protected private var col1Width : Int;
	
	@:protected private var col2Width : Int;
	
	@:overload @:protected private function new(parent : sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData) : Void;
	
	@:overload @:public public function getViewedParent() : sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData;
	
	@:overload @:public public function getToolTip(row : Int, col : Int) : String;
	
	@:overload @:public override public function getCellRenderer(row : Int, column : Int) : javax.swing.table.TableCellRenderer;
	
	@:overload @:public public function renderKey(key : String, comp : java.awt.Component) : Void;
	
	@:overload @:public override public function prepareRenderer(renderer : javax.swing.table.TableCellRenderer, row : Int, column : Int) : java.awt.Component;
	
	@:overload @:protected private function isClickableElement(obj : Dynamic) : Bool;
	
	@:overload @:protected private function updateColumnWidth() : Void;
	
	@:overload @:public @:abstract public function viewed(viewer : sun.tools.jconsole.inspector.XOpenTypeViewer) : Void;
	
	@:overload @:protected private function initTable(columnNames : java.NativeArray<String>) : Void;
	
	@:overload @:protected private function emptyTable() : Void;
	
	@:overload @:public override public function setValueAt(value : Dynamic, row : Int, col : Int) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$TabularDataComparator') @:internal extern class XOpenTypeViewer_TabularDataComparator implements java.util.Comparator<javax.management.openmbean.CompositeData>
{
	@:overload @:public public function new(type : javax.management.openmbean.TabularType) : Void;
	
	@:overload @:public public function compare(o1 : javax.management.openmbean.CompositeData, o2 : javax.management.openmbean.CompositeData) : Int;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XTabularData') @:internal extern class XOpenTypeViewer_XTabularData extends sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XCompositeData implements sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XViewedTabularData
{
	@:overload @:public public function new(parent : sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData, tabular : javax.management.openmbean.TabularData) : Void;
	
	@:overload @:public override public function renderKey(key : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function getElementCount() : Int;
	
	@:overload @:public public function getSelectedElementIndex() : Int;
	
	@:overload @:public public function incrElement() : Void;
	
	@:overload @:public public function decrElement() : Void;
	
	@:overload @:public public function canDecrement() : Bool;
	
	@:overload @:public public function canIncrement() : Bool;
	
	@:overload @:public override public function toString() : String;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XCompositeData') @:internal extern class XOpenTypeViewer_XCompositeData extends sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData
{
	@:protected @:final private var columnNames(default, null) : java.NativeArray<String>;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(parent : sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData) : Void;
	
	@:overload @:public public function new(parent : sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XOpenTypeData, composite : javax.management.openmbean.CompositeData) : Void;
	
	@:overload @:public override public function viewed(viewer : sun.tools.jconsole.inspector.XOpenTypeViewer) : Void;
	
	@:overload @:public override public function toString() : String;
	
	@:overload @:protected private function formatKey(key : String) : Dynamic;
	
	@:overload @:protected private function loadCompositeData(data : javax.management.openmbean.CompositeData) : Void;
	
	
}
@:native('sun$tools$jconsole$inspector$XOpenTypeViewer$XArrayData') @:internal extern class XOpenTypeViewer_XArrayData extends sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XCompositeData implements sun.tools.jconsole.inspector.XOpenTypeViewer.XOpenTypeViewer_XViewedArrayData
{
	@:overload @:public override public function viewed(viewer : sun.tools.jconsole.inspector.XOpenTypeViewer) : Void;
	
	@:overload @:public public function getElementCount() : Int;
	
	@:overload @:public public function getSelectedElementIndex() : Int;
	
	@:overload @:public override public function renderKey(key : String, comp : java.awt.Component) : Void;
	
	@:overload @:public public function incrElement() : Void;
	
	@:overload @:public public function decrElement() : Void;
	
	@:overload @:public public function canDecrement() : Bool;
	
	@:overload @:public public function canIncrement() : Bool;
	
	@:overload @:public override public function toString() : String;
	
	
}
