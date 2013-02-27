package java.nio.channels;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class FileLock implements java.lang.AutoCloseable
{
	/**
	* Initializes a new instance of this class.  </p>
	*
	* @param  channel
	*         The file channel upon whose file this lock is held
	*
	* @param  position
	*         The position within the file at which the locked region starts;
	*         must be non-negative
	*
	* @param  size
	*         The size of the locked region; must be non-negative, and the sum
	*         <tt>position</tt>&nbsp;+&nbsp;<tt>size</tt> must be non-negative
	*
	* @param  shared
	*         <tt>true</tt> if this lock is shared,
	*         <tt>false</tt> if it is exclusive
	*
	* @throws IllegalArgumentException
	*         If the preconditions on the parameters do not hold
	*/
	@:overload private function new(channel : java.nio.channels.FileChannel, position : haxe.Int64, size : haxe.Int64, shared : Bool) : Void;
	
	/**
	* Initializes a new instance of this class.
	*
	* @param  channel
	*         The channel upon whose file this lock is held
	*
	* @param  position
	*         The position within the file at which the locked region starts;
	*         must be non-negative
	*
	* @param  size
	*         The size of the locked region; must be non-negative, and the sum
	*         <tt>position</tt>&nbsp;+&nbsp;<tt>size</tt> must be non-negative
	*
	* @param  shared
	*         <tt>true</tt> if this lock is shared,
	*         <tt>false</tt> if it is exclusive
	*
	* @throws IllegalArgumentException
	*         If the preconditions on the parameters do not hold
	*
	* @since 1.7
	*/
	@:require(java7) @:overload private function new(channel : java.nio.channels.AsynchronousFileChannel, position : haxe.Int64, size : haxe.Int64, shared : Bool) : Void;
	
	/**
	* Returns the file channel upon whose file this lock was acquired.
	*
	* <p> This method has been superseded by the {@link #acquiredBy acquiredBy}
	* method.
	*
	* @return  The file channel, or {@code null} if the file lock was not
	*          acquired by a file channel.
	*/
	@:overload @:final public function channel() : java.nio.channels.FileChannel;
	
	/**
	* Returns the channel upon whose file this lock was acquired.
	*
	* @return  The channel upon whose file this lock was acquired.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function acquiredBy() : java.nio.channels.Channel;
	
	/**
	* Returns the position within the file of the first byte of the locked
	* region.
	*
	* <p> A locked region need not be contained within, or even overlap, the
	* actual underlying file, so the value returned by this method may exceed
	* the file's current size.  </p>
	*
	* @return  The position
	*/
	@:overload @:final public function position() : haxe.Int64;
	
	/**
	* Returns the size of the locked region in bytes.
	*
	* <p> A locked region need not be contained within, or even overlap, the
	* actual underlying file, so the value returned by this method may exceed
	* the file's current size.  </p>
	*
	* @return  The size of the locked region
	*/
	@:overload @:final public function size() : haxe.Int64;
	
	/**
	* Tells whether this lock is shared.  </p>
	*
	* @return <tt>true</tt> if lock is shared,
	*         <tt>false</tt> if it is exclusive
	*/
	@:overload @:final public function isShared() : Bool;
	
	/**
	* Tells whether or not this lock overlaps the given lock range.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this lock and the given lock
	*          range overlap by at least one byte
	*/
	@:overload @:final public function overlaps(position : haxe.Int64, size : haxe.Int64) : Bool;
	
	/**
	* Tells whether or not this lock is valid.
	*
	* <p> A lock object remains valid until it is released or the associated
	* file channel is closed, whichever comes first.  </p>
	*
	* @return  <tt>true</tt> if, and only if, this lock is valid
	*/
	@:overload @:abstract public function isValid() : Bool;
	
	/**
	* Releases this lock.
	*
	* <p> If this lock object is valid then invoking this method releases the
	* lock and renders the object invalid.  If this lock object is invalid
	* then invoking this method has no effect.  </p>
	*
	* @throws  ClosedChannelException
	*          If the channel that was used to acquire this lock
	*          is no longer open
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload @:abstract public function release() : Void;
	
	/**
	* This method invokes the {@link #release} method. It was added
	* to the class so that it could be used in conjunction with the
	* automatic resource management block construct.
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:final public function close() : Void;
	
	/**
	* Returns a string describing the range, type, and validity of this lock.
	*
	* @return  A descriptive string
	*/
	@:overload @:final public function toString() : String;
	
	
}
