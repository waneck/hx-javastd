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
@:internal extern class ThreadTab extends sun.tools.jconsole.Tab implements java.awt.event.ActionListener implements javax.swing.event.DocumentListener implements javax.swing.event.ListSelectionListener
{
	/*
	Hierarchy of panels and layouts for this tab:

	ThreadTab (BorderLayout)

	North:  topPanel (BorderLayout)

	Center: controlPanel (FlowLayout)
	timeComboBox

	Center: plotterPanel (BorderLayout)

	Center: plotter

	*/
	@:overload @:public @:static public static function getTabName() : String;
	
	@:overload @:public public function new(vmPanel : sun.tools.jconsole.VMPanel) : Void;
	
	@:overload @:public override public function newSwingWorker() : javax.swing.SwingWorker<Dynamic, Dynamic>;
	
	@:overload @:public public function valueChanged(ev : javax.swing.event.ListSelectionEvent) : Void;
	
	@:overload @:public public function getDeadlockedThreadIds() : java.NativeArray<java.NativeArray<Null<haxe.Int64>>>;
	
	@:overload @:public public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload @:public public function insertUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload @:public public function removeUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	@:overload @:public public function changedUpdate(e : javax.swing.event.DocumentEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$ThreadTab$ThreadJList') @:internal extern class ThreadTab_ThreadJList extends javax.swing.JList<Dynamic>
{
	@:overload @:public override public function getPreferredSize() : java.awt.Dimension;
	
	
}
@:native('sun$tools$jconsole$ThreadTab$PromptingTextField') @:internal extern class ThreadTab_PromptingTextField extends javax.swing.JTextField implements java.awt.event.FocusListener
{
	@:overload @:public public function new(prompt : String, columns : Int) : Void;
	
	@:overload @:public override public function revalidate() : Void;
	
	@:overload @:public override public function getText() : String;
	
	@:overload @:public public function focusGained(e : java.awt.event.FocusEvent) : Void;
	
	@:overload @:public public function focusLost(e : java.awt.event.FocusEvent) : Void;
	
	
}
@:native('sun$tools$jconsole$ThreadTab$ThreadOverviewPanel') @:internal extern class ThreadTab_ThreadOverviewPanel extends sun.tools.jconsole.OverviewPanel
{
	
}
