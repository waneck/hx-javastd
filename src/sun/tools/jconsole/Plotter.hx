package sun.tools.jconsole;
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
extern class Plotter extends javax.swing.JComponent implements javax.accessibility.Accessible implements java.awt.event.ActionListener implements java.beans.PropertyChangeListener
{
	@:overload public function new() : Void;
	
	@:overload public function new(unit : Plotter_Unit) : Void;
	
	@:overload public function new(unit : Plotter_Unit, decimals : Int) : Void;
	
	@:overload public function new(unit : Plotter_Unit, decimals : Int, displayLegend : Bool) : Void;
	
	@:overload public function setUnit(unit : Plotter_Unit) : Void;
	
	@:overload public function setDecimals(decimals : Int) : Void;
	
	@:overload public function createSequence(key : String, name : String, color : java.awt.Color, isPlotted : Bool) : Void;
	
	@:overload public function setUseDashedTransitions(key : String, b : Bool) : Void;
	
	@:overload public function setIsPlotted(key : String, isPlotted : Bool) : Void;
	
	@:overload @:synchronized public function addValues(time : haxe.Int64, values : java.NativeArray<haxe.Int64>) : Void;
	
	/**
	* @return the displayed time range in minutes, or -1 for all data
	*/
	@:overload public function getViewRange() : Int;
	
	/**
	* @param minutes the displayed time range in minutes, or -1 to diaplay all data
	*/
	@:overload public function setViewRange(minutes : Int) : Void;
	
	@:overload override public function getComponentPopupMenu() : javax.swing.JPopupMenu;
	
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	@:overload override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('sun$tools$jconsole$Plotter$Unit') extern enum Plotter_Unit
{
	NONE;
	BYTES;
	PERCENT;
	
}

@:native('sun$tools$jconsole$Plotter$TimeStamps') @:internal extern class Plotter_TimeStamps
{
	/**
	* Returns the time stamp for index i
	*/
	@:overload public function time(i : Int) : haxe.Int64;
	
	@:overload public function add(time : haxe.Int64) : Void;
	
	
}
@:native('sun$tools$jconsole$Plotter$Sequence') @:internal extern class Plotter_Sequence
{
	@:overload public function new(key : String) : Void;
	
	/**
	* Returns the value at index i
	*/
	@:overload public function value(i : Int) : haxe.Int64;
	
	@:overload public function add(value : haxe.Int64) : Void;
	
	
}
@:native('sun$tools$jconsole$Plotter$SaveDataFileChooser') @:internal extern class Plotter_SaveDataFileChooser extends javax.swing.JFileChooser
{
	@:overload override public function approveSelection() : Void;
	
	
}
@:native('sun$tools$jconsole$Plotter$AccessiblePlotter') extern class Plotter_AccessiblePlotter extends AccessibleJComponent
{
	@:overload private function new() : Void;
	
	@:overload public function getAccessibleName() : String;
	
	@:overload public function getAccessibleRole() : javax.accessibility.AccessibleRole;
	
	
}
