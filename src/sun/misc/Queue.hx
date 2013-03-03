package sun.misc;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class Queue
{
	@:overload @:public public function new() : Void;
	
	/**
	* Enqueue an object.
	*/
	@:overload @:public @:synchronized public function enqueue(obj : Dynamic) : Void;
	
	/**
	* Dequeue the oldest object on the queue.  Will wait indefinitely.
	*
	* @return    the oldest object on the queue.
	* @exception java.lang.InterruptedException if any thread has
	*              interrupted this thread.
	*/
	@:overload @:public public function dequeue() : Dynamic;
	
	/**
	* Dequeue the oldest object on the queue.
	* @param timeOut the number of milliseconds to wait for something
	* to arrive.
	*
	* @return    the oldest object on the queue.
	* @exception java.lang.InterruptedException if any thread has
	*              interrupted this thread.
	*/
	@:overload @:public @:synchronized public function dequeue(timeOut : haxe.Int64) : Dynamic;
	
	/**
	* Is the queue empty?
	* @return true if the queue is empty.
	*/
	@:overload @:public @:synchronized public function isEmpty() : Bool;
	
	/**
	* Returns an enumeration of the elements in Last-In, First-Out
	* order. Use the Enumeration methods on the returned object to
	* fetch the elements sequentially.
	*/
	@:overload @:public @:final @:synchronized public function elements() : java.util.Enumeration<Dynamic>;
	
	/**
	* Returns an enumeration of the elements in First-In, First-Out
	* order. Use the Enumeration methods on the returned object to
	* fetch the elements sequentially.
	*/
	@:overload @:public @:final @:synchronized public function reverseElements() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public @:synchronized public function dump(msg : String) : Void;
	
	
}
@:internal extern class FIFOQueueEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	
}
@:internal extern class LIFOQueueEnumerator implements java.util.Enumeration<Dynamic>
{
	@:overload @:public public function hasMoreElements() : Bool;
	
	@:overload @:public public function nextElement() : Dynamic;
	
	
}
@:internal extern class QueueElement
{
	@:overload @:public public function toString() : String;
	
	
}
