package sun.tools.jconsole;
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
@:internal extern class MemoryTab extends sun.tools.jconsole.Tab implements java.awt.event.ActionListener implements java.awt.event.ItemListener
{
	/*
	Hierarchy of panels and layouts for this tab:

	MemoryTab (BorderLayout)

	North:  topPanel (BorderLayout)

	Center: controlPanel (FlowLayout)
	plotterChoice, timeComboBox

	East:   topRightPanel (FlowLayout)
	gcButton

	Center: plotterPanel

	Center: plotter

	South:  bottomPanel (BorderLayout)

	Center: details
	East:   poolChart
	*/
	@:overload @:public @:static public static function getTabName() : String;
	
	@:overload @:public public function new(vmPanel : sun.tools.jconsole.VMPanel) : Void;
	
	@:overload @:public public function itemStateChanged(ev : java.awt.event.ItemEvent) : Void;
	
	@:overload @:public public function gc() : Void;
	
	@:overload @:public override public function newSwingWorker() : javax.swing.SwingWorker<Dynamic, Dynamic>;
	
	@:overload @:public public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$MemoryTab$PoolPlotter') @:internal extern class MemoryTab_PoolPlotter extends sun.tools.jconsole.Plotter
{
	@:overload @:public public function new(objectName : javax.management.ObjectName, name : String, isHeap : Bool) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
@:native('sun$tools$jconsole$MemoryTab$PoolChart') @:internal extern class MemoryTab_PoolChart extends sun.tools.jconsole.BorderedComponent implements javax.accessibility.Accessible implements java.awt.event.MouseListener
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function setValue(poolIndex : Int, poolPlotter : sun.tools.jconsole.MemoryTab.MemoryTab_PoolPlotter, value : haxe.Int64, threshold : haxe.Int64, max : haxe.Int64) : Void;
	
	@:overload @:public override public function paintComponent(g : java.awt.Graphics) : Void;
	
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	@:overload @:public public function mouseClicked(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function getToolTipText(e : java.awt.event.MouseEvent) : String;
	
	@:overload @:public public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseEntered(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public public function mouseExited(e : java.awt.event.MouseEvent) : Void;
	
	@:overload @:public override public function getAccessibleContext() : javax.accessibility.AccessibleContext;
	
	
}
@:native('sun$tools$jconsole$MemoryTab$PoolChart$AccessiblePoolChart') extern class MemoryTab_PoolChart_AccessiblePoolChart extends javax.swing.JPanel.JPanel_AccessibleJPanel
{
	@:overload @:public override public function getAccessibleName() : String;
	
	
}
@:native('sun$tools$jconsole$MemoryTab$MemoryOverviewPanel') @:internal extern class MemoryTab_MemoryOverviewPanel extends sun.tools.jconsole.OverviewPanel
{
	
}
