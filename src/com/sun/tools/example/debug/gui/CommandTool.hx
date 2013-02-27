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
extern class CommandTool extends javax.swing.JPanel
{
	@:overload public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$CommandTool$TTYDebugListener') @:internal extern class CommandTool_TTYDebugListener implements com.sun.tools.example.debug.event.JDIListener implements com.sun.tools.example.debug.bdi.SessionListener implements com.sun.tools.example.debug.bdi.SpecListener implements com.sun.tools.example.debug.gui.ContextListener
{
	@:overload public function accessWatchpoint(e : com.sun.tools.example.debug.event.AccessWatchpointEventSet) : Void;
	
	@:overload public function classPrepare(e : com.sun.tools.example.debug.event.ClassPrepareEventSet) : Void;
	
	@:overload public function classUnload(e : com.sun.tools.example.debug.event.ClassUnloadEventSet) : Void;
	
	@:overload public function exception(e : com.sun.tools.example.debug.event.ExceptionEventSet) : Void;
	
	@:overload public function locationTrigger(e : com.sun.tools.example.debug.event.LocationTriggerEventSet) : Void;
	
	@:overload public function modificationWatchpoint(e : com.sun.tools.example.debug.event.ModificationWatchpointEventSet) : Void;
	
	@:overload public function threadDeath(e : com.sun.tools.example.debug.event.ThreadDeathEventSet) : Void;
	
	@:overload public function threadStart(e : com.sun.tools.example.debug.event.ThreadStartEventSet) : Void;
	
	@:overload public function vmDeath(e : com.sun.tools.example.debug.event.VMDeathEventSet) : Void;
	
	@:overload public function vmDisconnect(e : com.sun.tools.example.debug.event.VMDisconnectEventSet) : Void;
	
	@:overload public function vmStart(e : com.sun.tools.example.debug.event.VMStartEventSet) : Void;
	
	@:overload public function sessionStart(e : java.util.EventObject) : Void;
	
	@:overload public function sessionInterrupt(e : java.util.EventObject) : Void;
	
	@:overload public function sessionContinue(e : java.util.EventObject) : Void;
	
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
	
	@:overload public function currentFrameChanged(e : com.sun.tools.example.debug.gui.CurrentFrameChangedEvent) : Void;
	
	
}
