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
extern class ContextManager
{
	@:overload @:public public function new(env : com.sun.tools.example.debug.gui.Environment) : Void;
	
	@:overload @:public public function getMainClassName() : String;
	
	@:overload @:public public function setMainClassName(mainClassName : String) : Void;
	
	@:overload @:public public function getVmArguments() : String;
	
	@:overload @:public public function setVmArguments(vmArguments : String) : Void;
	
	@:overload @:public public function getProgramArguments() : String;
	
	@:overload @:public public function setProgramArguments(commandArguments : String) : Void;
	
	@:overload @:public public function getRemotePort() : String;
	
	@:overload @:public public function setRemotePort(remotePort : String) : Void;
	
	@:overload @:public public function getVerboseFlag() : Bool;
	
	@:overload @:public public function setVerboseFlag(verbose : Bool) : Void;
	
	@:overload @:public public function getCurrentThread() : com.sun.jdi.ThreadReference;
	
	@:overload @:public public function setCurrentThread(t : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function setCurrentThreadInvalidate(t : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function invalidateCurrentThread() : Void;
	
	/******
	public int getCurrentFrameIndex() {
	return getCurrentFrameIndex(currentThreadInfo);
	}
	******/
	@:overload @:public public function getCurrentFrameIndex(t : com.sun.jdi.ThreadReference) : Int;
	
	@:overload @:public public function getCurrentFrameIndex(tinfo : com.sun.tools.example.debug.bdi.ThreadInfo) : Int;
	
	@:overload @:public public function moveCurrentFrameIndex(t : com.sun.jdi.ThreadReference, count : Int) : Int;
	
	@:overload @:public public function setCurrentFrameIndex(t : com.sun.jdi.ThreadReference, newIndex : Int) : Int;
	
	@:overload @:public public function setCurrentFrameIndex(newIndex : Int) : Int;
	
	@:overload @:public public function getCurrentFrame() : com.sun.jdi.StackFrame;
	
	@:overload @:public public function getCurrentFrame(t : com.sun.jdi.ThreadReference) : com.sun.jdi.StackFrame;
	
	@:overload @:public public function getCurrentFrame(tinfo : com.sun.tools.example.debug.bdi.ThreadInfo) : com.sun.jdi.StackFrame;
	
	@:overload @:public public function addContextListener(cl : com.sun.tools.example.debug.gui.ContextListener) : Void;
	
	@:overload @:public public function removeContextListener(cl : com.sun.tools.example.debug.gui.ContextListener) : Void;
	
	
}
@:native('com$sun$tools$example$debug$gui$ContextManager$ContextManagerListener') @:internal extern class ContextManager_ContextManagerListener extends com.sun.tools.example.debug.event.JDIAdapter implements com.sun.tools.example.debug.bdi.SessionListener implements com.sun.tools.example.debug.event.JDIListener
{
	@:overload @:public public function sessionStart(e : java.util.EventObject) : Void;
	
	@:overload @:public public function sessionInterrupt(e : java.util.EventObject) : Void;
	
	@:overload @:public public function sessionContinue(e : java.util.EventObject) : Void;
	
	@:overload @:public override public function locationTrigger(e : com.sun.tools.example.debug.event.LocationTriggerEventSet) : Void;
	
	@:overload @:public override public function exception(e : com.sun.tools.example.debug.event.ExceptionEventSet) : Void;
	
	@:overload @:public override public function vmDisconnect(e : com.sun.tools.example.debug.event.VMDisconnectEventSet) : Void;
	
	
}
