package java.nio.channels;
/*
* Copyright (c) 2007, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface SeekableByteChannel extends java.nio.channels.ByteChannel
{
	/**
	* Reads a sequence of bytes from this channel into the given buffer.
	*
	* <p> Bytes are read starting at this channel's current position, and
	* then the position is updated with the number of bytes actually read.
	* Otherwise this method behaves exactly as specified in the {@link
	* ReadableByteChannel} interface.
	*/
	@:overload public function read(dst : java.nio.ByteBuffer) : Int;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffer.
	*
	* <p> Bytes are written starting at this channel's current position, unless
	* the channel is connected to an entity such as a file that is opened with
	* the {@link java.nio.file.StandardOpenOption#APPEND APPEND} option, in
	* which case the position is first advanced to the end. The entity to which
	* the channel is connected is grown, if necessary, to accommodate the
	* written bytes, and then the position is updated with the number of bytes
	* actually written. Otherwise this method behaves exactly as specified by
	* the {@link WritableByteChannel} interface.
	*/
	@:overload public function write(src : java.nio.ByteBuffer) : Int;
	
	/**
	* Returns this channel's position.
	*
	* @return  This channel's position,
	*          a non-negative integer counting the number of bytes
	*          from the beginning of the entity to the current position
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload public function position() : haxe.Int64;
	
	/**
	* Sets this channel's position.
	*
	* <p> Setting the position to a value that is greater than the current size
	* is legal but does not change the size of the entity.  A later attempt to
	* read bytes at such a position will immediately return an end-of-file
	* indication.  A later attempt to write bytes at such a position will cause
	* the entity to grow to accommodate the new bytes; the values of any bytes
	* between the previous end-of-file and the newly-written bytes are
	* unspecified.
	*
	* <p> Setting the channel's position is not recommended when connected to
	* an entity, typically a file, that is opened with the {@link
	* java.nio.file.StandardOpenOption#APPEND APPEND} option. When opened for
	* append, the position is first advanced to the end before writing.
	*
	* @param  newPosition
	*         The new position, a non-negative integer counting
	*         the number of bytes from the beginning of the entity
	*
	* @return  This channel
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IllegalArgumentException
	*          If the new position is negative
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload public function position(newPosition : haxe.Int64) : SeekableByteChannel;
	
	/**
	* Returns the current size of entity to which this channel is connected.
	*
	* @return  The current size, measured in bytes
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload public function size() : haxe.Int64;
	
	/**
	* Truncates the entity, to which this channel is connected, to the given
	* size.
	*
	* <p> If the given size is less than the current size then the entity is
	* truncated, discarding any bytes beyond the new end. If the given size is
	* greater than or equal to the current size then the entity is not modified.
	* In either case, if the current position is greater than the given size
	* then it is set to that size.
	*
	* <p> An implementation of this interface may prohibit truncation when
	* connected to an entity, typically a file, opened with the {@link
	* java.nio.file.StandardOpenOption#APPEND APPEND} option.
	*
	* @param  size
	*         The new size, a non-negative byte count
	*
	* @return  This channel
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	* @throws  ClosedChannelException
	*          If this channel is closed
	* @throws  IllegalArgumentException
	*          If the new size is negative
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload public function truncate(size : haxe.Int64) : SeekableByteChannel;
	
	
}
