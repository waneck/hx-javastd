package com.sun.tools.example.debug.bdi;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class ExecutionManager
{
	@:overload @:public public function addSessionListener(listener : com.sun.tools.example.debug.bdi.SessionListener) : Void;
	
	@:overload @:public public function removeSessionListener(listener : com.sun.tools.example.debug.bdi.SessionListener) : Void;
	
	@:overload @:public public function addSpecListener(cl : com.sun.tools.example.debug.bdi.SpecListener) : Void;
	
	@:overload @:public public function removeSpecListener(cl : com.sun.tools.example.debug.bdi.SpecListener) : Void;
	
	/**
	* Adds a JDIListener
	*/
	@:overload @:public public function addJDIListener(jl : com.sun.tools.example.debug.event.JDIListener) : Void;
	
	/**
	* Adds a JDIListener - at the specified position
	*/
	@:overload @:public public function addJDIListener(index : Int, jl : com.sun.tools.example.debug.event.JDIListener) : Void;
	
	/**
	* Removes a JDIListener
	*/
	@:overload @:public public function removeJDIListener(jl : com.sun.tools.example.debug.event.JDIListener) : Void;
	
	@:overload @:public public function addApplicationEchoListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function removeApplicationEchoListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function addApplicationOutputListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function removeApplicationOutputListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function addApplicationErrorListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function removeApplicationErrorListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function addDiagnosticsListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function removeDiagnosticsListener(l : com.sun.tools.example.debug.bdi.OutputListener) : Void;
	
	@:overload @:public public function vm() : com.sun.jdi.VirtualMachine;
	
	@:overload @:public public function eventRequestManager() : com.sun.jdi.request.EventRequestManager;
	
	/**
	* Get JDI trace mode.
	*/
	@:overload @:public public function getTraceMode(mode : Int) : Int;
	
	/**
	* Set JDI trace mode.
	*/
	@:overload @:public public function setTraceMode(mode : Int) : Void;
	
	/**
	* Determine if VM is interrupted, i.e, present and not running.
	*/
	@:overload @:public public function isInterrupted() : Bool;
	
	/**
	* Return a list of ReferenceType objects for all
	* currently loaded classes and interfaces.
	* Array types are not returned.
	*/
	@:overload @:public public function allClasses() : java.util.List<com.sun.jdi.ReferenceType>;
	
	/**
	* Return a ReferenceType object for the currently
	* loaded class or interface whose fully-qualified
	* class name is specified, else return null if there
	* is none.
	*
	* In general, we must return a list of types, because
	* multiple class loaders could have loaded a class
	* with the same fully-qualified name.
	*/
	@:overload @:public public function findClassesByName(name : String) : java.util.List<com.sun.jdi.ReferenceType>;
	
	/**
	* Return a list of ReferenceType objects for all
	* currently loaded classes and interfaces whose name
	* matches the given pattern.  The pattern syntax is
	* open to some future revision, but currently consists
	* of a fully-qualified class name in which the first
	* component may optionally be a "*" character, designating
	* an arbitrary prefix.
	*/
	@:overload @:public public function findClassesMatchingPattern(pattern : String) : java.util.List<com.sun.jdi.ReferenceType>;
	
	/*
	* Return a list of ThreadReference objects corresponding
	* to the threads that are currently active in the VM.
	* A thread is removed from the list just before the
	* thread terminates.
	*/
	@:overload @:public public function allThreads() : java.util.List<com.sun.jdi.ThreadReference>;
	
	/*
	* Return a list of ThreadGroupReference objects corresponding
	* to the top-level threadgroups that are currently active in the VM.
	* Note that a thread group may be empty, or contain no threads as
	* descendents.
	*/
	@:overload @:public public function topLevelThreadGroups() : java.util.List<com.sun.jdi.ThreadGroupReference>;
	
	/*
	* Return the system threadgroup.
	*/
	@:overload @:public public function systemThreadGroup() : com.sun.jdi.ThreadGroupReference;
	
	/*
	* Evaluate an expression.
	*/
	@:overload @:public public function evaluate(f : com.sun.jdi.StackFrame, expr : String) : com.sun.jdi.Value;
	
	/*
	* Start a new VM.
	*/
	@:overload @:public public function run(suspended : Bool, vmArgs : String, className : String, args : String) : Void;
	
	/*
	* Attach to an existing VM.
	*/
	@:overload @:public public function attach(portName : String) : Void;
	
	/*
	* Connect via user specified arguments
	* @return true on success
	*/
	@:overload @:public public function explictStart(connector : com.sun.jdi.connect.Connector, arguments : java.util.Map<String, com.sun.jdi.connect.Connector.Connector_Argument>) : Bool;
	
	/*
	* Detach from VM.  If VM was started by debugger, terminate it.
	*/
	@:overload @:public public function detach() : Void;
	
	/*
	* Suspend all VM activity.
	*/
	@:overload @:public public function interrupt() : Void;
	
	/*
	* Resume interrupted VM.
	*/
	@:overload @:public public function go() : Void;
	
	@:overload @:public public function stepIntoInstruction(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function stepOverInstruction(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function stepIntoLine(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function stepOverLine(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function stepOut(thread : com.sun.jdi.ThreadReference) : Void;
	
	/*
	* Thread control.
	*/
	@:overload @:public public function suspendThread(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function resumeThread(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function stopThread(thread : com.sun.jdi.ThreadReference) : Void;
	
	@:overload @:public public function threadInfo(thread : com.sun.jdi.ThreadReference) : com.sun.tools.example.debug.bdi.ThreadInfo;
	
	@:overload @:public public function sendLineToApplication(line : String) : Void;
	
	@:overload @:public public function createSourceLineBreakpoint(sourceName : String, line : Int) : com.sun.tools.example.debug.bdi.BreakpointSpec;
	
	@:overload @:public public function createClassLineBreakpoint(classPattern : String, line : Int) : com.sun.tools.example.debug.bdi.BreakpointSpec;
	
	@:overload @:public public function createMethodBreakpoint(classPattern : String, methodId : String, methodArgs : java.util.List<String>) : com.sun.tools.example.debug.bdi.BreakpointSpec;
	
	@:overload @:public public function createExceptionIntercept(classPattern : String, notifyCaught : Bool, notifyUncaught : Bool) : com.sun.tools.example.debug.bdi.ExceptionSpec;
	
	@:overload @:public public function createAccessWatchpoint(classPattern : String, fieldId : String) : com.sun.tools.example.debug.bdi.AccessWatchpointSpec;
	
	@:overload @:public public function createModificationWatchpoint(classPattern : String, fieldId : String) : com.sun.tools.example.debug.bdi.ModificationWatchpointSpec;
	
	@:overload @:public public function delete(spec : com.sun.tools.example.debug.bdi.EventRequestSpec) : Void;
	
	@:overload @:public public function install(spec : com.sun.tools.example.debug.bdi.EventRequestSpec) : Void;
	
	@:overload @:public public function eventRequestSpecs() : java.util.List<com.sun.tools.example.debug.bdi.EventRequestSpec>;
	
	
}
