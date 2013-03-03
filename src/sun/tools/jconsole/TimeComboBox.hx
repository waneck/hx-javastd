package sun.tools.jconsole;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
/**
* A combo box to control the visible time range for one or more Plotter components.
* When used with two or more Plotters, it also acts to coordinate the range between
* them.
*/
extern class TimeComboBox extends javax.swing.JComboBox<Dynamic> implements java.awt.event.ItemListener implements java.beans.PropertyChangeListener
{
	@:overload @:public public function new(plotterArray : java.NativeArray<sun.tools.jconsole.Plotter>) : Void;
	
	@:overload @:public public function addPlotter(plotter : sun.tools.jconsole.Plotter) : Void;
	
	@:overload @:public public function itemStateChanged(ev : java.awt.event.ItemEvent) : Void;
	
	@:overload @:public public function propertyChange(ev : java.beans.PropertyChangeEvent) : Void;
	
	
}
