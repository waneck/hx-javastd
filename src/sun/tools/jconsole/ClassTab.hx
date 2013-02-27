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
@:internal extern class ClassTab extends sun.tools.jconsole.Tab implements java.awt.event.ActionListener
{
	/*
	Hierarchy of panels and layouts for this tab:

	ClassTab (BorderLayout)

	North:  topPanel (BorderLayout)

	Center: controlPanel (FlowLayout)
	timeComboBox

	East:   topRightPanel (FlowLayout)
	verboseCheckBox

	Center: plotterPanel (BorderLayout)

	Center: plotter

	South:  bottomPanel (BorderLayout)

	Center: details
	*/
	@:overload public static function getTabName() : String;
	
	@:overload public function new(vmPanel : sun.tools.jconsole.VMPanel) : Void;
	
	@:overload public function actionPerformed(ev : java.awt.event.ActionEvent) : Void;
	
	@:overload override public function newSwingWorker() : javax.swing.SwingWorker<Dynamic, Dynamic>;
	
	
}
@:native('sun$tools$jconsole$ClassTab$ClassOverviewPanel') @:internal extern class ClassTab_ClassOverviewPanel extends sun.tools.jconsole.OverviewPanel
{
	
}
