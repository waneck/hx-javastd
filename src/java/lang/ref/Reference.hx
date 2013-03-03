package java.lang.ref;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class Reference<T>
{
	/**
	* Returns this reference object's referent.  If this reference object has
	* been cleared, either by the program or by the garbage collector, then
	* this method returns <code>null</code>.
	*
	* @return   The object to which this reference refers, or
	*           <code>null</code> if this reference object has been cleared
	*/
	@:overload @:public public function get() : T;
	
	/**
	* Clears this reference object.  Invoking this method will not cause this
	* object to be enqueued.
	*
	* <p> This method is invoked only by Java code; when the garbage collector
	* clears references it does so directly, without invoking this method.
	*/
	@:overload @:public public function clear() : Void;
	
	/**
	* Tells whether or not this reference object has been enqueued, either by
	* the program or by the garbage collector.  If this reference object was
	* not registered with a queue when it was created, then this method will
	* always return <code>false</code>.
	*
	* @return   <code>true</code> if and only if this reference object has
	*           been enqueued
	*/
	@:overload @:public public function isEnqueued() : Bool;
	
	/**
	* Adds this reference object to the queue with which it is registered,
	* if any.
	*
	* <p> This method is invoked only by Java code; when the garbage collector
	* enqueues references it does so directly, without invoking this method.
	*
	* @return   <code>true</code> if this reference object was successfully
	*           enqueued; <code>false</code> if it was already enqueued or if
	*           it was not registered with a queue when it was created
	*/
	@:overload @:public public function enqueue() : Bool;
	
	
}
/* Object used to synchronize with the garbage collector.  The collector
* must acquire this lock at the beginning of each collection cycle.  It is
* therefore critical that any code holding this lock complete as quickly
* as possible, allocate no new objects, and avoid calling user code.
*/
@:native('java$lang$ref$Reference$Lock') @:internal extern class Reference_Lock
{
	
}
/* High-priority thread to enqueue pending References
*/
@:native('java$lang$ref$Reference$ReferenceHandler') @:internal extern class Reference_ReferenceHandler extends java.lang.Thread
{
	@:overload @:public override public function run() : Void;
	
	
}
