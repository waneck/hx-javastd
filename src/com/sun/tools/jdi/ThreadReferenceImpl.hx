package com.sun.tools.jdi;
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
extern class ThreadReferenceImpl extends com.sun.tools.jdi.ObjectReferenceImpl implements com.sun.jdi.ThreadReference implements com.sun.tools.jdi.VMListener
{
	@:overload @:protected override private function newCache() : com.sun.tools.jdi.ObjectReferenceImpl.ObjectReferenceImpl_Cache;
	
	@:overload @:protected override private function description() : String;
	
	/*
	* VMListener implementation
	*/
	@:overload @:public override public function vmNotSuspended(action : com.sun.tools.jdi.VMAction) : Bool;
	
	/**
	* Note that we only cache the name string while the entire VM is suspended
	* because the name can change via Thread.setName arbitrarily while this
	* thread is running.
	*/
	@:overload @:public public function name() : String;
	
	@:overload @:public public function suspend() : Void;
	
	@:overload @:public public function resume() : Void;
	
	@:overload @:public public function suspendCount() : Int;
	
	@:overload @:public public function stop(throwable : com.sun.jdi.ObjectReference) : Void;
	
	@:overload @:public public function interrupt() : Void;
	
	@:overload @:public public function status() : Int;
	
	@:overload @:public public function isSuspended() : Bool;
	
	@:overload @:public public function isAtBreakpoint() : Bool;
	
	@:overload @:public public function threadGroup() : com.sun.jdi.ThreadGroupReference;
	
	@:overload @:public public function frameCount() : Int;
	
	@:overload @:public public function frames() : java.util.List<com.sun.jdi.StackFrame>;
	
	@:overload @:public public function frame(index : Int) : com.sun.jdi.StackFrame;
	
	@:overload @:public public function frames(start : Int, length : Int) : java.util.List<com.sun.jdi.StackFrame>;
	
	@:overload @:public public function ownedMonitors() : java.util.List<com.sun.jdi.ObjectReference>;
	
	@:overload @:public public function currentContendedMonitor() : com.sun.jdi.ObjectReference;
	
	@:overload @:public public function ownedMonitorsAndFrames() : java.util.List<com.sun.jdi.MonitorInfo>;
	
	@:overload @:public public function popFrames(frame : com.sun.jdi.StackFrame) : Void;
	
	@:overload @:public public function forceEarlyReturn(returnValue : com.sun.jdi.Value) : Void;
	
	@:overload @:public override public function toString() : String;
	
	
}
@:native('com$sun$tools$jdi$ThreadReferenceImpl$LocalCache') @:internal extern class ThreadReferenceImpl_LocalCache
{
	
}
@:native('com$sun$tools$jdi$ThreadReferenceImpl$Cache') @:internal extern class ThreadReferenceImpl_Cache extends com.sun.tools.jdi.ObjectReferenceImpl.ObjectReferenceImpl_Cache
{
	
}
