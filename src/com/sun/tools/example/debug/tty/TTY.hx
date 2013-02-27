package com.sun.tools.example.debug.tty;
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
extern class TTY implements com.sun.tools.example.debug.tty.EventNotifier
{
	@:overload public function vmStartEvent(se : com.sun.jdi.event.VMStartEvent) : Void;
	
	@:overload public function vmDeathEvent(e : com.sun.jdi.event.VMDeathEvent) : Void;
	
	@:overload public function vmDisconnectEvent(e : com.sun.jdi.event.VMDisconnectEvent) : Void;
	
	@:overload public function threadStartEvent(e : com.sun.jdi.event.ThreadStartEvent) : Void;
	
	@:overload public function threadDeathEvent(e : com.sun.jdi.event.ThreadDeathEvent) : Void;
	
	@:overload public function classPrepareEvent(e : com.sun.jdi.event.ClassPrepareEvent) : Void;
	
	@:overload public function classUnloadEvent(e : com.sun.jdi.event.ClassUnloadEvent) : Void;
	
	@:overload public function breakpointEvent(be : com.sun.jdi.event.BreakpointEvent) : Void;
	
	@:overload public function fieldWatchEvent(fwe : com.sun.jdi.event.WatchpointEvent) : Void;
	
	@:overload public function stepEvent(se : com.sun.jdi.event.StepEvent) : Void;
	
	@:overload public function exceptionEvent(ee : com.sun.jdi.event.ExceptionEvent) : Void;
	
	@:overload public function methodEntryEvent(me : com.sun.jdi.event.MethodEntryEvent) : Void;
	
	@:overload public function methodExitEvent(me : com.sun.jdi.event.MethodExitEvent) : Bool;
	
	@:overload public function vmInterrupted() : Void;
	
	@:overload public function receivedEvent(event : com.sun.jdi.event.Event) : Void;
	
	@:overload public function new() : Void;
	
	@:overload public static function main(argv : java.NativeArray<String>) : Void;
	
	
}
