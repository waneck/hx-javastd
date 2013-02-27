package com.sun.tools.example.trace;
/*
* Copyright (c) 2001, Oracle and/or its affiliates. All rights reserved.
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
extern class EventThread extends java.lang.Thread
{
	/**
	* Run the event handling thread.
	* As long as we are connected, get event sets off
	* the queue and dispatch the events within them.
	*/
	@:overload override public function run() : Void;
	
	@:overload public function vmDeathEvent(event : com.sun.jdi.event.VMDeathEvent) : Void;
	
	@:overload public function vmDisconnectEvent(event : com.sun.jdi.event.VMDisconnectEvent) : Void;
	
	
}
/**
* This class keeps context on events in one thread.
* In this implementation, context is the indentation prefix.
*/
@:native('com$sun$tools$example$trace$EventThread$ThreadTrace') @:internal extern class EventThread_ThreadTrace
{
	
}
