package java.nio.channels;
/*
* Copyright (c) 2000, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class FileChannel extends java.nio.channels.spi.AbstractInterruptibleChannel implements java.nio.channels.SeekableByteChannel implements java.nio.channels.GatheringByteChannel implements java.nio.channels.ScatteringByteChannel
{
	/**
	* Initializes a new instance of this class.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Opens or creates a file, returning a file channel to access the file.
	*
	* <p> The {@code options} parameter determines how the file is opened.
	* The {@link StandardOpenOption#READ READ} and {@link StandardOpenOption#WRITE
	* WRITE} options determine if the file should be opened for reading and/or
	* writing. If neither option (or the {@link StandardOpenOption#APPEND APPEND}
	* option) is contained in the array then the file is opened for reading.
	* By default reading or writing commences at the beginning of the file.
	*
	* <p> In the addition to {@code READ} and {@code WRITE}, the following
	* options may be present:
	*
	* <table border=1 cellpadding=5 summary="">
	* <tr> <th>Option</th> <th>Description</th> </tr>
	* <tr>
	*   <td> {@link StandardOpenOption#APPEND APPEND} </td>
	*   <td> If this option is present then the file is opened for writing and
	*     each invocation of the channel's {@code write} method first advances
	*     the position to the end of the file and then writes the requested
	*     data. Whether the advancement of the position and the writing of the
	*     data are done in a single atomic operation is system-dependent and
	*     therefore unspecified. This option may not be used in conjunction
	*     with the {@code READ} or {@code TRUNCATE_EXISTING} options. </td>
	* </tr>
	* <tr>
	*   <td> {@link StandardOpenOption#TRUNCATE_EXISTING TRUNCATE_EXISTING} </td>
	*   <td> If this option is present then the existing file is truncated to
	*   a size of 0 bytes. This option is ignored when the file is opened only
	*   for reading. </td>
	* </tr>
	* <tr>
	*   <td> {@link StandardOpenOption#CREATE_NEW CREATE_NEW} </td>
	*   <td> If this option is present then a new file is created, failing if
	*   the file already exists. When creating a file the check for the
	*   existence of the file and the creation of the file if it does not exist
	*   is atomic with respect to other file system operations. This option is
	*   ignored when the file is opened only for reading. </td>
	* </tr>
	* <tr>
	*   <td > {@link StandardOpenOption#CREATE CREATE} </td>
	*   <td> If this option is present then an existing file is opened if it
	*   exists, otherwise a new file is created. When creating a file the check
	*   for the existence of the file and the creation of the file if it does
	*   not exist is atomic with respect to other file system operations. This
	*   option is ignored if the {@code CREATE_NEW} option is also present or
	*   the file is opened only for reading. </td>
	* </tr>
	* <tr>
	*   <td > {@link StandardOpenOption#DELETE_ON_CLOSE DELETE_ON_CLOSE} </td>
	*   <td> When this option is present then the implementation makes a
	*   <em>best effort</em> attempt to delete the file when closed by the
	*   the {@link #close close} method. If the {@code close} method is not
	*   invoked then a <em>best effort</em> attempt is made to delete the file
	*   when the Java virtual machine terminates. </td>
	* </tr>
	* <tr>
	*   <td>{@link StandardOpenOption#SPARSE SPARSE} </td>
	*   <td> When creating a new file this option is a <em>hint</em> that the
	*   new file will be sparse. This option is ignored when not creating
	*   a new file. </td>
	* </tr>
	* <tr>
	*   <td> {@link StandardOpenOption#SYNC SYNC} </td>
	*   <td> Requires that every update to the file's content or metadata be
	*   written synchronously to the underlying storage device. (see <a
	*   href="../file/package-summary.html#integrity"> Synchronized I/O file
	*   integrity</a>). </td>
	* <tr>
	* <tr>
	*   <td> {@link StandardOpenOption#DSYNC DSYNC} </td>
	*   <td> Requires that every update to the file's content be written
	*   synchronously to the underlying storage device. (see <a
	*   href="../file/package-summary.html#integrity"> Synchronized I/O file
	*   integrity</a>). </td>
	* </tr>
	* </table>
	*
	* <p> An implementation may also support additional options.
	*
	* <p> The {@code attrs} parameter is an optional array of file {@link
	* FileAttribute file-attributes} to set atomically when creating the file.
	*
	* <p> The new channel is created by invoking the {@link
	* FileSystemProvider#newFileChannel newFileChannel} method on the
	* provider that created the {@code Path}.
	*
	* @param   path
	*          The path of the file to open or create
	* @param   options
	*          Options specifying how the file is opened
	* @param   attrs
	*          An optional list of file attributes to set atomically when
	*          creating the file
	*
	* @return  A new file channel
	*
	* @throws  IllegalArgumentException
	*          If the set contains an invalid combination of options
	* @throws  UnsupportedOperationException
	*          If the {@code path} is associated with a provider that does not
	*          support creating file channels, or an unsupported open option is
	*          specified, or the array contains an attribute that cannot be set
	*          atomically when creating the file
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          If a security manager is installed and it denies an
	*          unspecified permission required by the implementation.
	*          In the case of the default provider, the {@link
	*          SecurityManager#checkRead(String)} method is invoked to check
	*          read access if the file is opened for reading. The {@link
	*          SecurityManager#checkWrite(String)} method is invoked to check
	*          write access if the file is opened for writing
	*
	* @since   1.7
	*/
	@:require(java7) @:overload @:public @:static public static function open(path : java.nio.file.Path, options : java.util.Set<java.nio.file.OpenOption>, attrs : java.NativeArray<java.nio.file.attribute.FileAttribute<Dynamic>>) : java.nio.channels.FileChannel;
	
	/**
	* Opens or creates a file, returning a file channel to access the file.
	*
	* <p> An invocation of this method behaves in exactly the same way as the
	* invocation
	* <pre>
	*     fc.{@link #open(Path,Set,FileAttribute[]) open}(file, opts, new FileAttribute&lt;?&gt;[0]);
	* </pre>
	* where {@code opts} is a set of the options specified in the {@code
	* options} array.
	*
	* @param   path
	*          The path of the file to open or create
	* @param   options
	*          Options specifying how the file is opened
	*
	* @return  A new file channel
	*
	* @throws  IllegalArgumentException
	*          If the set contains an invalid combination of options
	* @throws  UnsupportedOperationException
	*          If the {@code path} is associated with a provider that does not
	*          support creating file channels, or an unsupported open option is
	*          specified
	* @throws  IOException
	*          If an I/O error occurs
	* @throws  SecurityException
	*          If a security manager is installed and it denies an
	*          unspecified permission required by the implementation.
	*          In the case of the default provider, the {@link
	*          SecurityManager#checkRead(String)} method is invoked to check
	*          read access if the file is opened for reading. The {@link
	*          SecurityManager#checkWrite(String)} method is invoked to check
	*          write access if the file is opened for writing
	*
	* @since   1.7
	*/
	@:require(java7) @:overload @:public @:static public static function open(path : java.nio.file.Path, options : java.NativeArray<java.nio.file.OpenOption>) : java.nio.channels.FileChannel;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffer.
	*
	* <p> Bytes are read starting at this channel's current file position, and
	* then the file position is updated with the number of bytes actually
	* read.  Otherwise this method behaves exactly as specified in the {@link
	* ReadableByteChannel} interface. </p>
	*/
	@:overload @:public @:abstract public function read(dst : java.nio.ByteBuffer) : Int;
	
	/**
	* Reads a sequence of bytes from this channel into a subsequence of the
	* given buffers.
	*
	* <p> Bytes are read starting at this channel's current file position, and
	* then the file position is updated with the number of bytes actually
	* read.  Otherwise this method behaves exactly as specified in the {@link
	* ScatteringByteChannel} interface.  </p>
	*/
	@:overload @:public @:abstract public function read(dsts : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffers.
	*
	* <p> Bytes are read starting at this channel's current file position, and
	* then the file position is updated with the number of bytes actually
	* read.  Otherwise this method behaves exactly as specified in the {@link
	* ScatteringByteChannel} interface.  </p>
	*/
	@:overload @:public @:final public function read(dsts : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffer.
	*
	* <p> Bytes are written starting at this channel's current file position
	* unless the channel is in append mode, in which case the position is
	* first advanced to the end of the file.  The file is grown, if necessary,
	* to accommodate the written bytes, and then the file position is updated
	* with the number of bytes actually written.  Otherwise this method
	* behaves exactly as specified by the {@link WritableByteChannel}
	* interface. </p>
	*/
	@:overload @:public @:abstract public function write(src : java.nio.ByteBuffer) : Int;
	
	/**
	* Writes a sequence of bytes to this channel from a subsequence of the
	* given buffers.
	*
	* <p> Bytes are written starting at this channel's current file position
	* unless the channel is in append mode, in which case the position is
	* first advanced to the end of the file.  The file is grown, if necessary,
	* to accommodate the written bytes, and then the file position is updated
	* with the number of bytes actually written.  Otherwise this method
	* behaves exactly as specified in the {@link GatheringByteChannel}
	* interface.  </p>
	*/
	@:overload @:public @:abstract public function write(srcs : java.NativeArray<java.nio.ByteBuffer>, offset : Int, length : Int) : haxe.Int64;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffers.
	*
	* <p> Bytes are written starting at this channel's current file position
	* unless the channel is in append mode, in which case the position is
	* first advanced to the end of the file.  The file is grown, if necessary,
	* to accommodate the written bytes, and then the file position is updated
	* with the number of bytes actually written.  Otherwise this method
	* behaves exactly as specified in the {@link GatheringByteChannel}
	* interface.  </p>
	*/
	@:overload @:public @:final public function write(srcs : java.NativeArray<java.nio.ByteBuffer>) : haxe.Int64;
	
	/**
	* Returns this channel's file position.  </p>
	*
	* @return  This channel's file position,
	*          a non-negative integer counting the number of bytes
	*          from the beginning of the file to the current position
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function position() : haxe.Int64;
	
	/**
	* Sets this channel's file position.
	*
	* <p> Setting the position to a value that is greater than the file's
	* current size is legal but does not change the size of the file.  A later
	* attempt to read bytes at such a position will immediately return an
	* end-of-file indication.  A later attempt to write bytes at such a
	* position will cause the file to be grown to accommodate the new bytes;
	* the values of any bytes between the previous end-of-file and the
	* newly-written bytes are unspecified.  </p>
	*
	* @param  newPosition
	*         The new position, a non-negative integer counting
	*         the number of bytes from the beginning of the file
	*
	* @return  This file channel
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IllegalArgumentException
	*          If the new position is negative
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function position(newPosition : haxe.Int64) : java.nio.channels.FileChannel;
	
	/**
	* Returns the current size of this channel's file.  </p>
	*
	* @return  The current size of this channel's file,
	*          measured in bytes
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function size() : haxe.Int64;
	
	/**
	* Truncates this channel's file to the given size.
	*
	* <p> If the given size is less than the file's current size then the file
	* is truncated, discarding any bytes beyond the new end of the file.  If
	* the given size is greater than or equal to the file's current size then
	* the file is not modified.  In either case, if this channel's file
	* position is greater than the given size then it is set to that size.
	* </p>
	*
	* @param  size
	*         The new size, a non-negative byte count
	*
	* @return  This file channel
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IllegalArgumentException
	*          If the new size is negative
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function truncate(size : haxe.Int64) : java.nio.channels.FileChannel;
	
	/**
	* Forces any updates to this channel's file to be written to the storage
	* device that contains it.
	*
	* <p> If this channel's file resides on a local storage device then when
	* this method returns it is guaranteed that all changes made to the file
	* since this channel was created, or since this method was last invoked,
	* will have been written to that device.  This is useful for ensuring that
	* critical information is not lost in the event of a system crash.
	*
	* <p> If the file does not reside on a local device then no such guarantee
	* is made.
	*
	* <p> The <tt>metaData</tt> parameter can be used to limit the number of
	* I/O operations that this method is required to perform.  Passing
	* <tt>false</tt> for this parameter indicates that only updates to the
	* file's content need be written to storage; passing <tt>true</tt>
	* indicates that updates to both the file's content and metadata must be
	* written, which generally requires at least one more I/O operation.
	* Whether this parameter actually has any effect is dependent upon the
	* underlying operating system and is therefore unspecified.
	*
	* <p> Invoking this method may cause an I/O operation to occur even if the
	* channel was only opened for reading.  Some operating systems, for
	* example, maintain a last-access time as part of a file's metadata, and
	* this time is updated whenever the file is read.  Whether or not this is
	* actually done is system-dependent and is therefore unspecified.
	*
	* <p> This method is only guaranteed to force changes that were made to
	* this channel's file via the methods defined in this class.  It may or
	* may not force changes that were made by modifying the content of a
	* {@link MappedByteBuffer <i>mapped byte buffer</i>} obtained by
	* invoking the {@link #map map} method.  Invoking the {@link
	* MappedByteBuffer#force force} method of the mapped byte buffer will
	* force changes made to the buffer's content to be written.  </p>
	*
	* @param   metaData
	*          If <tt>true</tt> then this method is required to force changes
	*          to both the file's content and metadata to be written to
	*          storage; otherwise, it need only force content changes to be
	*          written
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function force(metaData : Bool) : Void;
	
	/**
	* Transfers bytes from this channel's file to the given writable byte
	* channel.
	*
	* <p> An attempt is made to read up to <tt>count</tt> bytes starting at
	* the given <tt>position</tt> in this channel's file and write them to the
	* target channel.  An invocation of this method may or may not transfer
	* all of the requested bytes; whether or not it does so depends upon the
	* natures and states of the channels.  Fewer than the requested number of
	* bytes are transferred if this channel's file contains fewer than
	* <tt>count</tt> bytes starting at the given <tt>position</tt>, or if the
	* target channel is non-blocking and it has fewer than <tt>count</tt>
	* bytes free in its output buffer.
	*
	* <p> This method does not modify this channel's position.  If the given
	* position is greater than the file's current size then no bytes are
	* transferred.  If the target channel has a position then bytes are
	* written starting at that position and then the position is incremented
	* by the number of bytes written.
	*
	* <p> This method is potentially much more efficient than a simple loop
	* that reads from this channel and writes to the target channel.  Many
	* operating systems can transfer bytes directly from the filesystem cache
	* to the target channel without actually copying them.  </p>
	*
	* @param  position
	*         The position within the file at which the transfer is to begin;
	*         must be non-negative
	*
	* @param  count
	*         The maximum number of bytes to be transferred; must be
	*         non-negative
	*
	* @param  target
	*         The target channel
	*
	* @return  The number of bytes, possibly zero,
	*          that were actually transferred
	*
	* @throws IllegalArgumentException
	*         If the preconditions on the parameters do not hold
	*
	* @throws  NonReadableChannelException
	*          If this channel was not opened for reading
	*
	* @throws  NonWritableChannelException
	*          If the target channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If either this channel or the target channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes either channel
	*          while the transfer is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread while the
	*          transfer is in progress, thereby closing both channels and
	*          setting the current thread's interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function transferTo(position : haxe.Int64, count : haxe.Int64, target : java.nio.channels.WritableByteChannel) : haxe.Int64;
	
	/**
	* Transfers bytes into this channel's file from the given readable byte
	* channel.
	*
	* <p> An attempt is made to read up to <tt>count</tt> bytes from the
	* source channel and write them to this channel's file starting at the
	* given <tt>position</tt>.  An invocation of this method may or may not
	* transfer all of the requested bytes; whether or not it does so depends
	* upon the natures and states of the channels.  Fewer than the requested
	* number of bytes will be transferred if the source channel has fewer than
	* <tt>count</tt> bytes remaining, or if the source channel is non-blocking
	* and has fewer than <tt>count</tt> bytes immediately available in its
	* input buffer.
	*
	* <p> This method does not modify this channel's position.  If the given
	* position is greater than the file's current size then no bytes are
	* transferred.  If the source channel has a position then bytes are read
	* starting at that position and then the position is incremented by the
	* number of bytes read.
	*
	* <p> This method is potentially much more efficient than a simple loop
	* that reads from the source channel and writes to this channel.  Many
	* operating systems can transfer bytes directly from the source channel
	* into the filesystem cache without actually copying them.  </p>
	*
	* @param  src
	*         The source channel
	*
	* @param  position
	*         The position within the file at which the transfer is to begin;
	*         must be non-negative
	*
	* @param  count
	*         The maximum number of bytes to be transferred; must be
	*         non-negative
	*
	* @return  The number of bytes, possibly zero,
	*          that were actually transferred
	*
	* @throws IllegalArgumentException
	*         If the preconditions on the parameters do not hold
	*
	* @throws  NonReadableChannelException
	*          If the source channel was not opened for reading
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If either this channel or the source channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes either channel
	*          while the transfer is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread while the
	*          transfer is in progress, thereby closing both channels and
	*          setting the current thread's interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function transferFrom(src : java.nio.channels.ReadableByteChannel, position : haxe.Int64, count : haxe.Int64) : haxe.Int64;
	
	/**
	* Reads a sequence of bytes from this channel into the given buffer,
	* starting at the given file position.
	*
	* <p> This method works in the same manner as the {@link
	* #read(ByteBuffer)} method, except that bytes are read starting at the
	* given file position rather than at the channel's current position.  This
	* method does not modify this channel's position.  If the given position
	* is greater than the file's current size then no bytes are read.  </p>
	*
	* @param  dst
	*         The buffer into which bytes are to be transferred
	*
	* @param  position
	*         The file position at which the transfer is to begin;
	*         must be non-negative
	*
	* @return  The number of bytes read, possibly zero, or <tt>-1</tt> if the
	*          given position is greater than or equal to the file's current
	*          size
	*
	* @throws  IllegalArgumentException
	*          If the position is negative
	*
	* @throws  NonReadableChannelException
	*          If this channel was not opened for reading
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the read operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the read operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function read(dst : java.nio.ByteBuffer, position : haxe.Int64) : Int;
	
	/**
	* Writes a sequence of bytes to this channel from the given buffer,
	* starting at the given file position.
	*
	* <p> This method works in the same manner as the {@link
	* #write(ByteBuffer)} method, except that bytes are written starting at
	* the given file position rather than at the channel's current position.
	* This method does not modify this channel's position.  If the given
	* position is greater than the file's current size then the file will be
	* grown to accommodate the new bytes; the values of any bytes between the
	* previous end-of-file and the newly-written bytes are unspecified.  </p>
	*
	* @param  src
	*         The buffer from which bytes are to be transferred
	*
	* @param  position
	*         The file position at which the transfer is to begin;
	*         must be non-negative
	*
	* @return  The number of bytes written, possibly zero
	*
	* @throws  IllegalArgumentException
	*          If the position is negative
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel
	*          while the write operation is in progress
	*
	* @throws  ClosedByInterruptException
	*          If another thread interrupts the current thread
	*          while the write operation is in progress, thereby
	*          closing the channel and setting the current thread's
	*          interrupt status
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*/
	@:overload @:public @:abstract public function write(src : java.nio.ByteBuffer, position : haxe.Int64) : Int;
	
	/**
	* Maps a region of this channel's file directly into memory.
	*
	* <p> A region of a file may be mapped into memory in one of three modes:
	* </p>
	*
	* <ul type=disc>
	*
	*   <li><p> <i>Read-only:</i> Any attempt to modify the resulting buffer
	*   will cause a {@link java.nio.ReadOnlyBufferException} to be thrown.
	*   ({@link MapMode#READ_ONLY MapMode.READ_ONLY}) </p></li>
	*
	*   <li><p> <i>Read/write:</i> Changes made to the resulting buffer will
	*   eventually be propagated to the file; they may or may not be made
	*   visible to other programs that have mapped the same file.  ({@link
	*   MapMode#READ_WRITE MapMode.READ_WRITE}) </p></li>
	*
	*   <li><p> <i>Private:</i> Changes made to the resulting buffer will not
	*   be propagated to the file and will not be visible to other programs
	*   that have mapped the same file; instead, they will cause private
	*   copies of the modified portions of the buffer to be created.  ({@link
	*   MapMode#PRIVATE MapMode.PRIVATE}) </p></li>
	*
	* </ul>
	*
	* <p> For a read-only mapping, this channel must have been opened for
	* reading; for a read/write or private mapping, this channel must have
	* been opened for both reading and writing.
	*
	* <p> The {@link MappedByteBuffer <i>mapped byte buffer</i>}
	* returned by this method will have a position of zero and a limit and
	* capacity of <tt>size</tt>; its mark will be undefined.  The buffer and
	* the mapping that it represents will remain valid until the buffer itself
	* is garbage-collected.
	*
	* <p> A mapping, once established, is not dependent upon the file channel
	* that was used to create it.  Closing the channel, in particular, has no
	* effect upon the validity of the mapping.
	*
	* <p> Many of the details of memory-mapped files are inherently dependent
	* upon the underlying operating system and are therefore unspecified.  The
	* behavior of this method when the requested region is not completely
	* contained within this channel's file is unspecified.  Whether changes
	* made to the content or size of the underlying file, by this program or
	* another, are propagated to the buffer is unspecified.  The rate at which
	* changes to the buffer are propagated to the file is unspecified.
	*
	* <p> For most operating systems, mapping a file into memory is more
	* expensive than reading or writing a few tens of kilobytes of data via
	* the usual {@link #read read} and {@link #write write} methods.  From the
	* standpoint of performance it is generally only worth mapping relatively
	* large files into memory.  </p>
	*
	* @param  mode
	*         One of the constants {@link MapMode#READ_ONLY READ_ONLY}, {@link
	*         MapMode#READ_WRITE READ_WRITE}, or {@link MapMode#PRIVATE
	*         PRIVATE} defined in the {@link MapMode} class, according to
	*         whether the file is to be mapped read-only, read/write, or
	*         privately (copy-on-write), respectively
	*
	* @param  position
	*         The position within the file at which the mapped region
	*         is to start; must be non-negative
	*
	* @param  size
	*         The size of the region to be mapped; must be non-negative and
	*         no greater than {@link java.lang.Integer#MAX_VALUE}
	*
	* @return  The mapped byte buffer
	*
	* @throws NonReadableChannelException
	*         If the <tt>mode</tt> is {@link MapMode#READ_ONLY READ_ONLY} but
	*         this channel was not opened for reading
	*
	* @throws NonWritableChannelException
	*         If the <tt>mode</tt> is {@link MapMode#READ_WRITE READ_WRITE} or
	*         {@link MapMode#PRIVATE PRIVATE} but this channel was not opened
	*         for both reading and writing
	*
	* @throws IllegalArgumentException
	*         If the preconditions on the parameters do not hold
	*
	* @throws IOException
	*         If some other I/O error occurs
	*
	* @see java.nio.channels.FileChannel.MapMode
	* @see java.nio.MappedByteBuffer
	*/
	@:overload @:public @:abstract public function map(mode : java.nio.channels.FileChannel.FileChannel_MapMode, position : haxe.Int64, size : haxe.Int64) : java.nio.MappedByteBuffer;
	
	/**
	* Acquires a lock on the given region of this channel's file.
	*
	* <p> An invocation of this method will block until the region can be
	* locked, this channel is closed, or the invoking thread is interrupted,
	* whichever comes first.
	*
	* <p> If this channel is closed by another thread during an invocation of
	* this method then an {@link AsynchronousCloseException} will be thrown.
	*
	* <p> If the invoking thread is interrupted while waiting to acquire the
	* lock then its interrupt status will be set and a {@link
	* FileLockInterruptionException} will be thrown.  If the invoker's
	* interrupt status is set when this method is invoked then that exception
	* will be thrown immediately; the thread's interrupt status will not be
	* changed.
	*
	* <p> The region specified by the <tt>position</tt> and <tt>size</tt>
	* parameters need not be contained within, or even overlap, the actual
	* underlying file.  Lock regions are fixed in size; if a locked region
	* initially contains the end of the file and the file grows beyond the
	* region then the new portion of the file will not be covered by the lock.
	* If a file is expected to grow in size and a lock on the entire file is
	* required then a region starting at zero, and no smaller than the
	* expected maximum size of the file, should be locked.  The zero-argument
	* {@link #lock()} method simply locks a region of size {@link
	* Long#MAX_VALUE}.
	*
	* <p> Some operating systems do not support shared locks, in which case a
	* request for a shared lock is automatically converted into a request for
	* an exclusive lock.  Whether the newly-acquired lock is shared or
	* exclusive may be tested by invoking the resulting lock object's {@link
	* FileLock#isShared() isShared} method.
	*
	* <p> File locks are held on behalf of the entire Java virtual machine.
	* They are not suitable for controlling access to a file by multiple
	* threads within the same virtual machine.  </p>
	*
	* @param  position
	*         The position at which the locked region is to start; must be
	*         non-negative
	*
	* @param  size
	*         The size of the locked region; must be non-negative, and the sum
	*         <tt>position</tt>&nbsp;+&nbsp;<tt>size</tt> must be non-negative
	*
	* @param  shared
	*         <tt>true</tt> to request a shared lock, in which case this
	*         channel must be open for reading (and possibly writing);
	*         <tt>false</tt> to request an exclusive lock, in which case this
	*         channel must be open for writing (and possibly reading)
	*
	* @return  A lock object representing the newly-acquired lock
	*
	* @throws  IllegalArgumentException
	*          If the preconditions on the parameters do not hold
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel while the invoking
	*          thread is blocked in this method
	*
	* @throws  FileLockInterruptionException
	*          If the invoking thread is interrupted while blocked in this
	*          method
	*
	* @throws  OverlappingFileLockException
	*          If a lock that overlaps the requested region is already held by
	*          this Java virtual machine, or if another thread is already
	*          blocked in this method and is attempting to lock an overlapping
	*          region
	*
	* @throws  NonReadableChannelException
	*          If <tt>shared</tt> is <tt>true</tt> this channel was not
	*          opened for reading
	*
	* @throws  NonWritableChannelException
	*          If <tt>shared</tt> is <tt>false</tt> but this channel was not
	*          opened for writing
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @see     #lock()
	* @see     #tryLock()
	* @see     #tryLock(long,long,boolean)
	*/
	@:overload @:public @:abstract public function lock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.nio.channels.FileLock;
	
	/**
	* Acquires an exclusive lock on this channel's file.
	*
	* <p> An invocation of this method of the form <tt>fc.lock()</tt> behaves
	* in exactly the same way as the invocation
	*
	* <pre>
	*     fc.{@link #lock(long,long,boolean) lock}(0L, Long.MAX_VALUE, false) </pre>
	*
	* @return  A lock object representing the newly-acquired lock
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  AsynchronousCloseException
	*          If another thread closes this channel while the invoking
	*          thread is blocked in this method
	*
	* @throws  FileLockInterruptionException
	*          If the invoking thread is interrupted while blocked in this
	*          method
	*
	* @throws  OverlappingFileLockException
	*          If a lock that overlaps the requested region is already held by
	*          this Java virtual machine, or if another thread is already
	*          blocked in this method and is attempting to lock an overlapping
	*          region of the same file
	*
	* @throws  NonWritableChannelException
	*          If this channel was not opened for writing
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @see     #lock(long,long,boolean)
	* @see     #tryLock()
	* @see     #tryLock(long,long,boolean)
	*/
	@:overload @:public @:final public function lock() : java.nio.channels.FileLock;
	
	/**
	* Attempts to acquire a lock on the given region of this channel's file.
	*
	* <p> This method does not block.  An invocation always returns
	* immediately, either having acquired a lock on the requested region or
	* having failed to do so.  If it fails to acquire a lock because an
	* overlapping lock is held by another program then it returns
	* <tt>null</tt>.  If it fails to acquire a lock for any other reason then
	* an appropriate exception is thrown.
	*
	* <p> The region specified by the <tt>position</tt> and <tt>size</tt>
	* parameters need not be contained within, or even overlap, the actual
	* underlying file.  Lock regions are fixed in size; if a locked region
	* initially contains the end of the file and the file grows beyond the
	* region then the new portion of the file will not be covered by the lock.
	* If a file is expected to grow in size and a lock on the entire file is
	* required then a region starting at zero, and no smaller than the
	* expected maximum size of the file, should be locked.  The zero-argument
	* {@link #tryLock()} method simply locks a region of size {@link
	* Long#MAX_VALUE}.
	*
	* <p> Some operating systems do not support shared locks, in which case a
	* request for a shared lock is automatically converted into a request for
	* an exclusive lock.  Whether the newly-acquired lock is shared or
	* exclusive may be tested by invoking the resulting lock object's {@link
	* FileLock#isShared() isShared} method.
	*
	* <p> File locks are held on behalf of the entire Java virtual machine.
	* They are not suitable for controlling access to a file by multiple
	* threads within the same virtual machine.  </p>
	*
	* @param  position
	*         The position at which the locked region is to start; must be
	*         non-negative
	*
	* @param  size
	*         The size of the locked region; must be non-negative, and the sum
	*         <tt>position</tt>&nbsp;+&nbsp;<tt>size</tt> must be non-negative
	*
	* @param  shared
	*         <tt>true</tt> to request a shared lock,
	*         <tt>false</tt> to request an exclusive lock
	*
	* @return  A lock object representing the newly-acquired lock,
	*          or <tt>null</tt> if the lock could not be acquired
	*          because another program holds an overlapping lock
	*
	* @throws  IllegalArgumentException
	*          If the preconditions on the parameters do not hold
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  OverlappingFileLockException
	*          If a lock that overlaps the requested region is already held by
	*          this Java virtual machine, or if another thread is already
	*          blocked in this method and is attempting to lock an overlapping
	*          region of the same file
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @see     #lock()
	* @see     #lock(long,long,boolean)
	* @see     #tryLock()
	*/
	@:overload @:public @:abstract public function tryLock(position : haxe.Int64, size : haxe.Int64, shared : Bool) : java.nio.channels.FileLock;
	
	/**
	* Attempts to acquire an exclusive lock on this channel's file.
	*
	* <p> An invocation of this method of the form <tt>fc.tryLock()</tt>
	* behaves in exactly the same way as the invocation
	*
	* <pre>
	*     fc.{@link #tryLock(long,long,boolean) tryLock}(0L, Long.MAX_VALUE, false) </pre>
	*
	* @return  A lock object representing the newly-acquired lock,
	*          or <tt>null</tt> if the lock could not be acquired
	*          because another program holds an overlapping lock
	*
	* @throws  ClosedChannelException
	*          If this channel is closed
	*
	* @throws  OverlappingFileLockException
	*          If a lock that overlaps the requested region is already held by
	*          this Java virtual machine, or if another thread is already
	*          blocked in this method and is attempting to lock an overlapping
	*          region
	*
	* @throws  IOException
	*          If some other I/O error occurs
	*
	* @see     #lock()
	* @see     #lock(long,long,boolean)
	* @see     #tryLock(long,long,boolean)
	*/
	@:overload @:public @:final public function tryLock() : java.nio.channels.FileLock;
	
	/**
	* Tells whether or not this channel is open.  </p>
	*
	* @return <tt>true</tt> if, and only if, this channel is open
	*/
	@:overload @:public @:public override public function isOpen() : Bool;
	
	/**
	* Closes this channel.
	*
	* <p> After a channel is closed, any further attempt to invoke I/O
	* operations upon it will cause a {@link ClosedChannelException} to be
	* thrown.
	*
	* <p> If this channel is already closed then invoking this method has no
	* effect.
	*
	* <p> This method may be invoked at any time.  If some other thread has
	* already invoked it, however, then another invocation will block until
	* the first invocation is complete, after which it will return without
	* effect. </p>
	*
	* @throws  IOException  If an I/O error occurs
	*/
	@:overload @:public @:public override public function close() : Void;
	
	
}
/**
* A typesafe enumeration for file-mapping modes.
*
* @since 1.4
*
* @see java.nio.channels.FileChannel#map
*/
@:require(java4) @:native('java$nio$channels$FileChannel$MapMode') extern class FileChannel_MapMode
{
	/**
	* Mode for a read-only mapping.
	*/
	@:public @:static @:final public static var READ_ONLY(default, null) : java.nio.channels.FileChannel.FileChannel_MapMode;
	
	/**
	* Mode for a read/write mapping.
	*/
	@:public @:static @:final public static var READ_WRITE(default, null) : java.nio.channels.FileChannel.FileChannel_MapMode;
	
	/**
	* Mode for a private (copy-on-write) mapping.
	*/
	@:public @:static @:final public static var PRIVATE(default, null) : java.nio.channels.FileChannel.FileChannel_MapMode;
	
	/**
	* Returns a string describing this file-mapping mode.
	*
	* @return  A descriptive string
	*/
	@:overload @:public public function toString() : String;
	
	
}
