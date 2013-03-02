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
extern class XPlottingViewer extends sun.tools.jconsole.PlotterPanel implements java.awt.event.ActionListener
{
	@:overload public static function isViewableValue(value : Dynamic) : Bool;
	
	@:overload public static function loadPlotting(mbean : sun.tools.jconsole.inspector.XMBean, attributeName : String, value : Dynamic, table : javax.swing.JTable, tab : sun.tools.jconsole.MBeansTab) : java.awt.Component;
	
	/*public void paintComponent(Graphics g) {
	super.paintComponent(g);
	setBackground(g.getColor());
	plotter.paintComponent(g);
	}*/
	@:overload public function actionPerformed(evt : java.awt.event.ActionEvent) : Void;
	
	@:overload public function createPlotter(xmbean : sun.tools.jconsole.inspector.XMBean, attributeName : String, key : String, table : javax.swing.JTable) : sun.tools.jconsole.Plotter;
	
	
}
