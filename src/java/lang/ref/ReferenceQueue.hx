package java.lang.ref;
/*
* Copyright (c) 1997, 2005, Oracle and/or its affiliates. All rights reserved.
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
/**
* Reference queues, to which registered reference objects are appended by the
* garbage collector after the appropriate reachability changes are detected.
*
* @author   Mark Reinhold
* @since    1.2
*/
@:require(java2) extern class ReferenceQueue<T>
{
	/**
	* Constructs a new reference-object queue.
	*/
	@:overload public function new() : Void;
	
	/**
	* Polls this queue to see if a reference object is available.  If one is
	* available without further delay then it is removed from the queue and
	* returned.  Otherwise this method immediately returns <tt>null</tt>.
	*
	* @return  A reference object, if one was immediately available,
	*          otherwise <code>null</code>
	*/
	@:overload public function poll() : java.lang.ref.Reference<T>;
	
	/**
	* Removes the next reference object in this queue, blocking until either
	* one becomes available or the given timeout period expires.
	*
	* <p> This method does not offer real-time guarantees: It schedules the
	* timeout as if by invoking the {@link Object#wait(long)} method.
	*
	* @param  timeout  If positive, block for up to <code>timeout</code>
	*                  milliseconds while waiting for a reference to be
	*                  added to this queue.  If zero, block indefinitely.
	*
	* @return  A reference object, if one was available within the specified
	*          timeout period, otherwise <code>null</code>
	*
	* @throws  IllegalArgumentException
	*          If the value of the timeout argument is negative
	*
	* @throws  InterruptedException
	*          If the timeout wait is interrupted
	*/
	@:overload public function remove(timeout : haxe.Int64) : java.lang.ref.Reference<T>;
	
	/**
	* Removes the next reference object in this queue, blocking until one
	* becomes available.
	*
	* @return A reference object, blocking until one becomes available
	* @throws  InterruptedException  If the wait is interrupted
	*/
	@:overload public function remove() : java.lang.ref.Reference<T>;
	
	
}
@:native('java$lang$ref$ReferenceQueue$Null') @:internal extern class ReferenceQueue_Null extends java.lang.ref.ReferenceQueue<Dynamic>
{
	
}
@:native('java$lang$ref$ReferenceQueue$Lock') @:internal extern class ReferenceQueue_Lock
{
	
}
