package sun.java2d.pipe;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class RenderQueue
{
	/** The underlying buffer for this queue. */
	private var buf : sun.java2d.pipe.RenderBuffer;
	
	/**
	* A Set containing hard references to Objects that must stay alive until
	* the queue has been completely flushed.
	*/
	private var refSet : java.util.Set<Dynamic>;
	
	@:overload private function new() : Void;
	
	/**
	* Locks the queue for read/write access.
	*/
	@:overload @:final public function lock() : Void;
	
	/**
	* Attempts to lock the queue.  If successful, this method returns true,
	* indicating that the caller is responsible for calling
	* <code>unlock</code>; otherwise this method returns false.
	*/
	@:overload @:final public function tryLock() : Bool;
	
	/**
	* Unlocks the queue.
	*/
	@:overload @:final public function unlock() : Void;
	
	/**
	* Adds the given Object to the set of hard references, which will
	* prevent that Object from being disposed until the queue has been
	* flushed completely.  This is useful in cases where some enqueued
	* data could become invalid if the reference Object were garbage
	* collected before the queue could be processed.  (For example, keeping
	* a hard reference to a FontStrike will prevent any enqueued glyph
	* images associated with that strike from becoming invalid before the
	* queue is flushed.)  The reference set will be cleared immediately
	* after the queue is flushed each time.
	*/
	@:overload @:final public function addReference(ref : Dynamic) : Void;
	
	/**
	* Returns the encapsulated RenderBuffer object.
	*/
	@:overload @:final public function getBuffer() : sun.java2d.pipe.RenderBuffer;
	
	/**
	* Ensures that there will be enough room on the underlying buffer
	* for the following operation.  If the operation will not fit given
	* the remaining space, the buffer will be flushed immediately, leaving
	* an empty buffer for the impending operation.
	*
	* @param opsize size (in bytes) of the following operation
	*/
	@:overload @:final public function ensureCapacity(opsize : Int) : Void;
	
	/**
	* Convenience method that is equivalent to calling ensureCapacity()
	* followed by ensureAlignment().  The ensureCapacity() call allows for an
	* extra 4 bytes of space in case the ensureAlignment() method needs to
	* insert a NOOP token on the buffer.
	*
	* @param opsize size (in bytes) of the following operation
	* @param first8ByteValueOffset offset (in bytes) from the current
	* position to the first 8-byte value used in the following operation
	*/
	@:overload @:final public function ensureCapacityAndAlignment(opsize : Int, first8ByteValueOffset : Int) : Void;
	
	/**
	* Inserts a 4-byte NOOP token when necessary to ensure that all 8-byte
	* parameters for the following operation are added to the underlying
	* buffer with an 8-byte memory alignment.
	*
	* @param first8ByteValueOffset offset (in bytes) from the current
	* position to the first 8-byte value used in the following operation
	*/
	@:overload @:final public function ensureAlignment(first8ByteValueOffset : Int) : Void;
	
	/**
	* Immediately processes each operation currently pending on the buffer.
	* This method will block until the entire buffer has been flushed.  The
	* queue lock must be acquired before calling this method.
	*/
	@:overload @:abstract public function flushNow() : Void;
	
	/**
	* Immediately processes each operation currently pending on the buffer,
	* and then invokes the provided task.  This method will block until the
	* entire buffer has been flushed and the provided task has been executed.
	* The queue lock must be acquired before calling this method.
	*/
	@:overload @:abstract public function flushAndInvokeNow(task : java.lang.Runnable) : Void;
	
	/**
	* Updates the current position of the underlying buffer, and then
	* flushes the queue immediately.  This method is useful when native code
	* has added data to the queue and needs to flush immediately.
	*/
	@:overload public function flushNow(position : Int) : Void;
	
	
}
