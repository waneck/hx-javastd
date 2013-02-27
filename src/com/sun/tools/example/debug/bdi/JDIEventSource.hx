package com.sun.tools.example.debug.bdi;
/*
* Copyright (c) 1999, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class JDIEventSource extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
@:native('com$sun$tools$example$debug$bdi$JDIEventSource$FirstListener') @:internal extern class JDIEventSource_FirstListener implements com.sun.tools.example.debug.event.JDIListener
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
	
	
}
