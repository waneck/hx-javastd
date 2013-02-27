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
extern class TargetVM implements java.lang.Runnable
{
	@:overload public function run() : Void;
	
	@:overload private function handleVMCommand(p : com.sun.tools.jdi.Packet) : Void;
	
	/* Events should not be constructed on this thread (the thread
	* which reads all data from the transport). This means that the
	* packet cannot be converted to real JDI objects as that may
	* involve further communications with the back end which would
	* deadlock.
	*
	* Instead the whole packet is passed for lazy eval by a queue
	* reading thread.
	*/
	@:overload private function handleEventCmdSet(p : com.sun.tools.jdi.Packet) : Void;
	
	
}
@:native('com$sun$tools$jdi$TargetVM$EventController') @:internal extern class TargetVM_EventController extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
