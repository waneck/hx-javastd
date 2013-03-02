package com.sun.tools.example.debug.gui;
/*
* Copyright (c) 1998, 1999, Oracle and/or its affiliates. All rights reserved.
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
/*
* This source code is provided to illustrate the usage of a given feature
* or technique and has been deliberately simplified. Additional steps
* required for a production-quality application, such as security checks,
* input validation and proper error handling, might not be present in
* this sample code.
*/
extern class SourceTool extends javax.swing.JPanel
{
	@:overload public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	@:overload public function setTextFont(f : java.awt.Font) : Void;
	
	@:overload public function showSourceForLocation(locn : com.sun.jdi.Location) : Bool;
	
	@:overload public function showSourceFile(fileName : String) : Bool;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTool$SourceToolListener') @:internal extern class SourceTool_SourceToolListener implements com.sun.tools.example.debug.gui.ContextListener implements com.sun.tools.example.debug.gui.SourceListener implements com.sun.tools.example.debug.bdi.SpecListener
{
	@:overload public function currentFrameChanged(e : com.sun.tools.example.debug.gui.CurrentFrameChangedEvent) : Void;
	
	@:overload public function sourcepathChanged(e : com.sun.tools.example.debug.gui.SourcepathChangedEvent) : Void;
	
	@:overload public function breakpointSet(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function breakpointDeferred(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function breakpointDeleted(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function breakpointResolved(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function breakpointError(e : com.sun.tools.example.debug.bdi.SpecErrorEvent) : Void;
	
	@:overload public function watchpointSet(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function watchpointDeferred(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function watchpointDeleted(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function watchpointResolved(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function watchpointError(e : com.sun.tools.example.debug.bdi.SpecErrorEvent) : Void;
	
	@:overload public function exceptionInterceptSet(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function exceptionInterceptDeferred(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function exceptionInterceptDeleted(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function exceptionInterceptResolved(e : com.sun.tools.example.debug.bdi.SpecEvent) : Void;
	
	@:overload public function exceptionInterceptError(e : com.sun.tools.example.debug.bdi.SpecErrorEvent) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTool$SourceLineRenderer') @:internal extern class SourceTool_SourceLineRenderer extends javax.swing.DefaultListCellRenderer
{
	@:overload public function getListCellRendererComponent(list : javax.swing.JList<Dynamic>, value : Dynamic, index : Int, isSelected : Bool, cellHasFocus : Bool) : java.awt.Component;
	
	@:overload public function getPreferredSize() : java.awt.Dimension;
	
	
}
@:native('com$sun$tools$example$debug$gui$SourceTool$STMouseListener') @:internal extern class SourceTool_STMouseListener extends java.awt.event.MouseAdapter implements java.awt.event.MouseListener
{
	@:overload public function mousePressed(e : java.awt.event.MouseEvent) : Void;
	
	@:overload public function mouseReleased(e : java.awt.event.MouseEvent) : Void;
	
	
}
