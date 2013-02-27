package com.sun.tools.jdi;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class EventQueueImpl extends com.sun.tools.jdi.MirrorImpl implements com.sun.jdi.event.EventQueue
{
	/*
	* Override superclass back to default equality
	*/
	@:overload override public function equals(obj : Dynamic) : Bool;
	
	@:overload override public function hashCode() : Int;
	
	@:overload public function remove() : com.sun.jdi.event.EventSet;
	
	/**
	* Filter out events not for user's eyes.
	* Then filter out empty sets.
	*/
	@:overload public function remove(timeout : haxe.Int64) : com.sun.jdi.event.EventSet;
	
	
}
@:native('com$sun$tools$jdi$EventQueueImpl$TimerThread') @:internal extern class EventQueueImpl_TimerThread extends java.lang.Thread
{
	@:overload override public function run() : Void;
	
	
}
