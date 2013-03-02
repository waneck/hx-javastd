package java.nio;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
//// -- This file was mechanically generated: Do not edit! -- //
/**
* A byte buffer.
*
* <p> This class defines six categories of operations upon
* byte buffers:
*
* <ul>
*
*   <li><p> Absolute and relative {@link #get() </code><i>get</i><code>} and
*   {@link #put(byte) </code><i>put</i><code>} methods that read and write
*   single bytes; </p></li>
*
*   <li><p> Relative {@link #get(byte[]) </code><i>bulk get</i><code>}
*   methods that transfer contiguous sequences of bytes from this buffer
*   into an array; </p></li>
*
*   <li><p> Relative {@link #put(byte[]) </code><i>bulk put</i><code>}
*   methods that transfer contiguous sequences of bytes from a
*   byte array or some other byte
*   buffer into this buffer; </p></li>
*

*
*   <li><p> Absolute and relative {@link #getChar() </code><i>get</i><code>}
*   and {@link #putChar(char) </code><i>put</i><code>} methods that read and
*   write values of other primitive types, translating them to and from
*   sequences of bytes in a particular byte order; </p></li>
*
*   <li><p> Methods for creating <i><a href="#views">view buffers</a></i>,
*   which allow a byte buffer to be viewed as a buffer containing values of
*   some other primitive type; and </p></li>
*

*
*   <li><p> Methods for {@link #compact </code>compacting<code>}, {@link
*   #duplicate </code>duplicating<code>}, and {@link #slice
*   </code>slicing<code>} a byte buffer.  </p></li>
*
* </ul>
*
* <p> Byte buffers can be created either by {@link #allocate
* </code><i>allocation</i><code>}, which allocates space for the buffer's
*

*
* content, or by {@link #wrap(byte[]) </code><i>wrapping</i><code>} an
* existing byte array  into a buffer.
*







*

*
* <a name="direct">
* <h4> Direct <i>vs.</i> non-direct buffers </h4>
*
* <p> A byte buffer is either <i>direct</i> or <i>non-direct</i>.  Given a
* direct byte buffer, the Java virtual machine will make a best effort to
* perform native I/O operations directly upon it.  That is, it will attempt to
* avoid copying the buffer's content to (or from) an intermediate buffer
* before (or after) each invocation of one of the underlying operating
* system's native I/O operations.
*
* <p> A direct byte buffer may be created by invoking the {@link
* #allocateDirect(int) allocateDirect} factory method of this class.  The
* buffers returned by this method typically have somewhat higher allocation
* and deallocation costs than non-direct buffers.  The contents of direct
* buffers may reside outside of the normal garbage-collected heap, and so
* their impact upon the memory footprint of an application might not be
* obvious.  It is therefore recommended that direct buffers be allocated
* primarily for large, long-lived buffers that are subject to the underlying
* system's native I/O operations.  In general it is best to allocate direct
* buffers only when they yield a measureable gain in program performance.
*
* <p> A direct byte buffer may also be created by {@link
* java.nio.channels.FileChannel#map </code>mapping<code>} a region of a file
* directly into memory.  An implementation of the Java platform may optionally
* support the creation of direct byte buffers from native code via JNI.  If an
* instance of one of these kinds of buffers refers to an inaccessible region
* of memory then an attempt to access that region will not change the buffer's
* content and will cause an unspecified exception to be thrown either at the
* time of the access or at some later time.
*
* <p> Whether a byte buffer is direct or non-direct may be determined by
* invoking its {@link #isDirect isDirect} method.  This method is provided so
* that explicit buffer management can be done in performance-critical code.
*
*
* <a name="bin">
* <h4> Access to binary data </h4>
*
* <p> This class defines methods for reading and writing values of all other
* primitive types, except <tt>boolean</tt>.  Primitive values are translated
* to (or from) sequences of bytes according to the buffer's current byte
* order, which may be retrieved and modified via the {@link #order order}
* methods.  Specific byte orders are represented by instances of the {@link
* ByteOrder} class.  The initial order of a byte buffer is always {@link
* ByteOrder#BIG_ENDIAN BIG_ENDIAN}.
*
* <p> For access to heterogeneous binary data, that is, sequences of values of
* different types, this class defines a family of absolute and relative
* <i>get</i> and <i>put</i> methods for each type.  For 32-bit floating-point
* values, for example, this class defines:
*
* <blockquote><pre>
* float  {@link #getFloat()}
* float  {@link #getFloat(int) getFloat(int index)}
*  void  {@link #putFloat(float) putFloat(float f)}
*  void  {@link #putFloat(int,float) putFloat(int index, float f)}</pre></blockquote>
*
* <p> Corresponding methods are defined for the types <tt>char</tt>,
* <tt>short</tt>, <tt>int</tt>, <tt>long</tt>, and <tt>double</tt>.  The index
* parameters of the absolute <i>get</i> and <i>put</i> methods are in terms of
* bytes rather than of the type being read or written.
*
* <a name="views">
*
* <p> For access to homogeneous binary data, that is, sequences of values of
* the same type, this class defines methods that can create <i>views</i> of a
* given byte buffer.  A <i>view buffer</i> is simply another buffer whose
* content is backed by the byte buffer.  Changes to the byte buffer's content
* will be visible in the view buffer, and vice versa; the two buffers'
* position, limit, and mark values are independent.  The {@link
* #asFloatBuffer() asFloatBuffer} method, for example, creates an instance of
* the {@link FloatBuffer} class that is backed by the byte buffer upon which
* the method is invoked.  Corresponding view-creation methods are defined for
* the types <tt>char</tt>, <tt>short</tt>, <tt>int</tt>, <tt>long</tt>, and
* <tt>double</tt>.
*
* <p> View buffers have three important advantages over the families of
* type-specific <i>get</i> and <i>put</i> methods described above:
*
* <ul>
*
*   <li><p> A view buffer is indexed not in terms of bytes but rather in terms
*   of the type-specific size of its values;  </p></li>
*
*   <li><p> A view buffer provides relative bulk <i>get</i> and <i>put</i>
*   methods that can transfer contiguous sequences of values between a buffer
*   and an array or some other buffer of the same type; and  </p></li>
*
*   <li><p> A view buffer is potentially much more efficient because it will
*   be direct if, and only if, its backing byte buffer is direct.  </p></li>
*
* </ul>
*
* <p> The byte order of a view buffer is fixed to be that of its byte buffer
* at the time that the view is created.  </p>
*

*











*








*

* <h4> Invocation chaining </h4>

*
* <p> Methods in this class that do not otherwise have a value to return are
* specified to return the buffer upon which they are invoked.  This allows
* method invocations to be chained.
*

*
* The sequence of statements
*
* <blockquote><pre>
* bb.putInt(0xCAFEBABE);
* bb.putShort(3);
* bb.putShort(45);</pre></blockquote>
*
* can, for example, be replaced by the single statement
*
* <blockquote><pre>
* bb.putInt(0xCAFEBABE).putShort(3).putShort(45);</pre></blockquote>
*

















*
*
* @author Mark Reinhold
* @author JSR-51 Expert Group
* @since 1.4
*/
@:require(java4) extern class ByteBuffer extends java.nio.Buffer implements java.lang.Comparable<java.nio.ByteBuffer>
{
	/**
	* Allocates a new direct byte buffer.
	*
	* <p> The new buffer's position will be zero, its limit will be its
	* capacity, its mark will be undefined, and each of its elements will be
	* initialized to zero.  Whether or not it has a
	* {@link #hasArray </code>backing array<code>} is unspecified.
	*
	* @param  capacity
	*         The new buffer's capacity, in bytes
	*
	* @return  The new byte buffer
	*
	* @throws  IllegalArgumentException
	*          If the <tt>capacity</tt> is a negative integer
	*/
	@:overload public static function allocateDirect(capacity : Int) : java.nio.ByteBuffer;
	
	/**
	* Allocates a new byte buffer.
	*
	* <p> The new buffer's position will be zero, its limit will be its
	* capacity, its mark will be undefined, and each of its elements will be
	* initialized to zero.  It will have a {@link #array
	* </code>backing array<code>}, and its {@link #arrayOffset </code>array
	* offset<code>} will be zero.
	*
	* @param  capacity
	*         The new buffer's capacity, in bytes
	*
	* @return  The new byte buffer
	*
	* @throws  IllegalArgumentException
	*          If the <tt>capacity</tt> is a negative integer
	*/
	@:overload public static function allocate(capacity : Int) : java.nio.ByteBuffer;
	
	/**
	* Wraps a byte array into a buffer.
	*
	* <p> The new buffer will be backed by the given byte array;
	* that is, modifications to the buffer will cause the array to be modified
	* and vice versa.  The new buffer's capacity will be
	* <tt>array.length</tt>, its position will be <tt>offset</tt>, its limit
	* will be <tt>offset + length</tt>, and its mark will be undefined.  Its
	* {@link #array </code>backing array<code>} will be the given array, and
	* its {@link #arrayOffset </code>array offset<code>} will be zero.  </p>
	*
	* @param  array
	*         The array that will back the new buffer
	*
	* @param  offset
	*         The offset of the subarray to be used; must be non-negative and
	*         no larger than <tt>array.length</tt>.  The new buffer's position
	*         will be set to this value.
	*
	* @param  length
	*         The length of the subarray to be used;
	*         must be non-negative and no larger than
	*         <tt>array.length - offset</tt>.
	*         The new buffer's limit will be set to <tt>offset + length</tt>.
	*
	* @return  The new byte buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload public static function wrap(array : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.nio.ByteBuffer;
	
	/**
	* Wraps a byte array into a buffer.
	*
	* <p> The new buffer will be backed by the given byte array;
	* that is, modifications to the buffer will cause the array to be modified
	* and vice versa.  The new buffer's capacity and limit will be
	* <tt>array.length</tt>, its position will be zero, and its mark will be
	* undefined.  Its {@link #array </code>backing array<code>} will be the
	* given array, and its {@link #arrayOffset </code>array offset<code>} will
	* be zero.  </p>
	*
	* @param  array
	*         The array that will back this buffer
	*
	* @return  The new byte buffer
	*/
	@:overload public static function wrap(array : java.NativeArray<java.StdTypes.Int8>) : java.nio.ByteBuffer;
	
	/**
	* Creates a new byte buffer whose content is a shared subsequence of
	* this buffer's content.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer, and its mark
	* will be undefined.  The new buffer will be direct if, and only if, this
	* buffer is direct, and it will be read-only if, and only if, this buffer
	* is read-only.  </p>
	*
	* @return  The new byte buffer
	*/
	@:overload @:abstract public function slice() : java.nio.ByteBuffer;
	
	/**
	* Creates a new byte buffer that shares this buffer's content.
	*
	* <p> The content of the new buffer will be that of this buffer.  Changes
	* to this buffer's content will be visible in the new buffer, and vice
	* versa; the two buffers' position, limit, and mark values will be
	* independent.
	*
	* <p> The new buffer's capacity, limit, position, and mark values will be
	* identical to those of this buffer.  The new buffer will be direct if,
	* and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  The new byte buffer
	*/
	@:overload @:abstract public function duplicate() : java.nio.ByteBuffer;
	
	/**
	* Creates a new, read-only byte buffer that shares this buffer's
	* content.
	*
	* <p> The content of the new buffer will be that of this buffer.  Changes
	* to this buffer's content will be visible in the new buffer; the new
	* buffer itself, however, will be read-only and will not allow the shared
	* content to be modified.  The two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's capacity, limit, position, and mark values will be
	* identical to those of this buffer.
	*
	* <p> If this buffer is itself read-only then this method behaves in
	* exactly the same way as the {@link #duplicate duplicate} method.  </p>
	*
	* @return  The new, read-only byte buffer
	*/
	@:overload @:abstract public function asReadOnlyBuffer() : java.nio.ByteBuffer;
	
	/**
	* Relative <i>get</i> method.  Reads the byte at this buffer's
	* current position, and then increments the position. </p>
	*
	* @return  The byte at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If the buffer's current position is not smaller than its limit
	*/
	@:overload @:abstract public function get() : java.StdTypes.Int8;
	
	/**
	* Relative <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given byte into this buffer at the current
	* position, and then increments the position. </p>
	*
	* @param  b
	*         The byte to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If this buffer's current position is not smaller than its limit
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function put(b : java.StdTypes.Int8) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method.  Reads the byte at the given
	* index. </p>
	*
	* @param  index
	*         The index from which the byte will be read
	*
	* @return  The byte at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit
	*/
	@:overload @:abstract public function get(index : Int) : java.StdTypes.Int8;
	
	/**
	* Absolute <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given byte into this buffer at the given
	* index. </p>
	*
	* @param  index
	*         The index at which the byte will be written
	*
	* @param  b
	*         The byte value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function put(index : Int, b : java.StdTypes.Int8) : java.nio.ByteBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers bytes from this buffer into the given
	* destination array.  If there are fewer bytes remaining in the
	* buffer than are required to satisfy the request, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* bytes are transferred and a {@link BufferUnderflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> bytes from this
	* buffer into the given array, starting at the current position of this
	* buffer and at the given offset in the array.  The position of this
	* buffer is then incremented by <tt>length</tt>.
	*
	* <p> In other words, an invocation of this method of the form
	* <tt>src.get(dst,&nbsp;off,&nbsp;len)</tt> has exactly the same effect as
	* the loop
	*
	* <pre>
	*     for (int i = off; i < off + len; i++)
	*         dst[i] = src.get(); </pre>
	*
	* except that it first checks that there are sufficient bytes in
	* this buffer and it is potentially much more efficient. </p>
	*
	* @param  dst
	*         The array into which bytes are to be written
	*
	* @param  offset
	*         The offset within the array of the first byte to be
	*         written; must be non-negative and no larger than
	*         <tt>dst.length</tt>
	*
	* @param  length
	*         The maximum number of bytes to be written to the given
	*         array; must be non-negative and no larger than
	*         <tt>dst.length - offset</tt>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> bytes
	*          remaining in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload public function get(dst : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.nio.ByteBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers bytes from this buffer into the given
	* destination array.  An invocation of this method of the form
	* <tt>src.get(a)</tt> behaves in exactly the same way as the invocation
	*
	* <pre>
	*     src.get(a, 0, a.length) </pre>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> bytes
	*          remaining in this buffer
	*/
	@:overload public function get(dst : java.NativeArray<java.StdTypes.Int8>) : java.nio.ByteBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the bytes remaining in the given source
	* buffer into this buffer.  If there are more bytes remaining in the
	* source buffer than in this buffer, that is, if
	* <tt>src.remaining()</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>,
	* then no bytes are transferred and a {@link
	* BufferOverflowException} is thrown.
	*
	* <p> Otherwise, this method copies
	* <i>n</i>&nbsp;=&nbsp;<tt>src.remaining()</tt> bytes from the given
	* buffer into this buffer, starting at each buffer's current position.
	* The positions of both buffers are then incremented by <i>n</i>.
	*
	* <p> In other words, an invocation of this method of the form
	* <tt>dst.put(src)</tt> has exactly the same effect as the loop
	*
	* <pre>
	*     while (src.hasRemaining())
	*         dst.put(src.get()); </pre>
	*
	* except that it first checks that there is sufficient space in this
	* buffer and it is potentially much more efficient. </p>
	*
	* @param  src
	*         The source buffer from which bytes are to be read;
	*         must not be this buffer
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*          for the remaining bytes in the source buffer
	*
	* @throws  IllegalArgumentException
	*          If the source buffer is this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload public function put(src : java.nio.ByteBuffer) : java.nio.ByteBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers bytes into this buffer from the given
	* source array.  If there are more bytes to be copied from the array
	* than remain in this buffer, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* bytes are transferred and a {@link BufferOverflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> bytes from the
	* given array into this buffer, starting at the given offset in the array
	* and at the current position of this buffer.  The position of this buffer
	* is then incremented by <tt>length</tt>.
	*
	* <p> In other words, an invocation of this method of the form
	* <tt>dst.put(src,&nbsp;off,&nbsp;len)</tt> has exactly the same effect as
	* the loop
	*
	* <pre>
	*     for (int i = off; i < off + len; i++)
	*         dst.put(a[i]); </pre>
	*
	* except that it first checks that there is sufficient space in this
	* buffer and it is potentially much more efficient. </p>
	*
	* @param  src
	*         The array from which bytes are to be read
	*
	* @param  offset
	*         The offset within the array of the first byte to be read;
	*         must be non-negative and no larger than <tt>array.length</tt>
	*
	* @param  length
	*         The number of bytes to be read from the given array;
	*         must be non-negative and no larger than
	*         <tt>array.length - offset</tt>
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload public function put(src : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : java.nio.ByteBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the entire content of the given source
	* byte array into this buffer.  An invocation of this method of the
	* form <tt>dst.put(a)</tt> behaves in exactly the same way as the
	* invocation
	*
	* <pre>
	*     dst.put(a, 0, a.length) </pre>
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:final public function put(src : java.NativeArray<java.StdTypes.Int8>) : java.nio.ByteBuffer;
	
	/**
	* Tells whether or not this buffer is backed by an accessible byte
	* array.
	*
	* <p> If this method returns <tt>true</tt> then the {@link #array() array}
	* and {@link #arrayOffset() arrayOffset} methods may safely be invoked.
	* </p>
	*
	* @return  <tt>true</tt> if, and only if, this buffer
	*          is backed by an array and is not read-only
	*/
	@:overload @:final override public function hasArray() : Bool;
	
	/**
	* Returns the byte array that backs this
	* buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Modifications to this buffer's content will cause the returned
	* array's content to be modified, and vice versa.
	*
	* <p> Invoke the {@link #hasArray hasArray} method before invoking this
	* method in order to ensure that this buffer has an accessible backing
	* array.  </p>
	*
	* @return  The array that backs this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is backed by an array but is read-only
	*
	* @throws  UnsupportedOperationException
	*          If this buffer is not backed by an accessible array
	*/
	@:overload @:final override public function array() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the offset within this buffer's backing array of the first
	* element of the buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> If this buffer is backed by an array then buffer position <i>p</i>
	* corresponds to array index <i>p</i>&nbsp;+&nbsp;<tt>arrayOffset()</tt>.
	*
	* <p> Invoke the {@link #hasArray hasArray} method before invoking this
	* method in order to ensure that this buffer has an accessible backing
	* array.  </p>
	*
	* @return  The offset within this buffer's array
	*          of the first element of the buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is backed by an array but is read-only
	*
	* @throws  UnsupportedOperationException
	*          If this buffer is not backed by an accessible array
	*/
	@:overload @:final override public function arrayOffset() : Int;
	
	/**
	* Compacts this buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> The bytes between the buffer's current position and its limit,
	* if any, are copied to the beginning of the buffer.  That is, the
	* byte at index <i>p</i>&nbsp;=&nbsp;<tt>position()</tt> is copied
	* to index zero, the byte at index <i>p</i>&nbsp;+&nbsp;1 is copied
	* to index one, and so forth until the byte at index
	* <tt>limit()</tt>&nbsp;-&nbsp;1 is copied to index
	* <i>n</i>&nbsp;=&nbsp;<tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>&nbsp;-&nbsp;<i>p</i>.
	* The buffer's position is then set to <i>n+1</i> and its limit is set to
	* its capacity.  The mark, if defined, is discarded.
	*
	* <p> The buffer's position is set to the number of bytes copied,
	* rather than to zero, so that an invocation of this method can be
	* followed immediately by an invocation of another relative <i>put</i>
	* method. </p>
	*

	*
	* <p> Invoke this method after writing data from a buffer in case the
	* write was incomplete.  The following loop, for example, copies bytes
	* from one channel to another via the buffer <tt>buf</tt>:
	*
	* <blockquote><pre>
	* buf.clear();          // Prepare buffer for use
	* while (in.read(buf) >= 0 || buf.position != 0) {
	*     buf.flip();
	*     out.write(buf);
	*     buf.compact();    // In case of partial write
	* }</pre></blockquote>
	*

	*
	* @return  This buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function compact() : java.nio.ByteBuffer;
	
	/**
	* Tells whether or not this byte buffer is direct. </p>
	*
	* @return  <tt>true</tt> if, and only if, this buffer is direct
	*/
	@:overload @:abstract override public function isDirect() : Bool;
	
	/**
	* Returns a string summarizing the state of this buffer.  </p>
	*
	* @return  A summary string
	*/
	@:overload public function toString() : String;
	
	/**
	* Returns the current hash code of this buffer.
	*
	* <p> The hash code of a byte buffer depends only upon its remaining
	* elements; that is, upon the elements from <tt>position()</tt> up to, and
	* including, the element at <tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>.
	*
	* <p> Because buffer hash codes are content-dependent, it is inadvisable
	* to use buffers as keys in hash maps or similar data structures unless it
	* is known that their contents will not change.  </p>
	*
	* @return  The current hash code of this buffer
	*/
	@:overload public function hashCode() : Int;
	
	/**
	* Tells whether or not this buffer is equal to another object.
	*
	* <p> Two byte buffers are equal if, and only if,
	*
	* <p><ol>
	*
	*   <li><p> They have the same element type,  </p></li>
	*
	*   <li><p> They have the same number of remaining elements, and
	*   </p></li>
	*
	*   <li><p> The two sequences of remaining elements, considered
	*   independently of their starting positions, are pointwise equal.







	*   </p></li>
	*
	* </ol>
	*
	* <p> A byte buffer is not equal to any other type of object.  </p>
	*
	* @param  ob  The object to which this buffer is to be compared
	*
	* @return  <tt>true</tt> if, and only if, this buffer is equal to the
	*           given object
	*/
	@:overload public function equals(ob : Dynamic) : Bool;
	
	/**
	* Compares this buffer to another.
	*
	* <p> Two byte buffers are compared by comparing their sequences of
	* remaining elements lexicographically, without regard to the starting
	* position of each sequence within its corresponding buffer.








	* Pairs of {@code byte} elements are compared as if by invoking
	* {@link Byte#compare(byte,byte)}.

	*
	* <p> A byte buffer is not comparable to any other type of object.
	*
	* @return  A negative integer, zero, or a positive integer as this buffer
	*          is less than, equal to, or greater than the given buffer
	*/
	@:overload public function compareTo(that : java.nio.ByteBuffer) : Int;
	
	/**
	* Retrieves this buffer's byte order.
	*
	* <p> The byte order is used when reading or writing multibyte values, and
	* when creating buffers that are views of this byte buffer.  The order of
	* a newly-created byte buffer is always {@link ByteOrder#BIG_ENDIAN
	* BIG_ENDIAN}.  </p>
	*
	* @return  This buffer's byte order
	*/
	@:overload @:final public function order() : java.nio.ByteOrder;
	
	/**
	* Modifies this buffer's byte order.  </p>
	*
	* @param  bo
	*         The new byte order,
	*         either {@link ByteOrder#BIG_ENDIAN BIG_ENDIAN}
	*         or {@link ByteOrder#LITTLE_ENDIAN LITTLE_ENDIAN}
	*
	* @return  This buffer
	*/
	@:overload @:final public function order(bo : java.nio.ByteOrder) : java.nio.ByteBuffer;
	
	/**
	* Relative <i>get</i> method for reading a char value.
	*
	* <p> Reads the next two bytes at this buffer's current position,
	* composing them into a char value according to the current byte order,
	* and then increments the position by two.  </p>
	*
	* @return  The char value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than two bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getChar() : java.StdTypes.Char16;
	
	/**
	* Relative <i>put</i> method for writing a char
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes two bytes containing the given char value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by two.  </p>
	*
	* @param  value
	*         The char value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than two bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putChar(value : java.StdTypes.Char16) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading a char value.
	*
	* <p> Reads two bytes at the given index, composing them into a
	* char value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The char value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus one
	*/
	@:overload @:abstract public function getChar(index : Int) : java.StdTypes.Char16;
	
	/**
	* Absolute <i>put</i> method for writing a char
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes two bytes containing the given char value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The char value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus one
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putChar(index : Int, value : java.StdTypes.Char16) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as a char buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* two, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new char buffer
	*/
	@:overload @:abstract public function asCharBuffer() : java.nio.CharBuffer;
	
	/**
	* Relative <i>get</i> method for reading a short value.
	*
	* <p> Reads the next two bytes at this buffer's current position,
	* composing them into a short value according to the current byte order,
	* and then increments the position by two.  </p>
	*
	* @return  The short value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than two bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getShort() : java.StdTypes.Int16;
	
	/**
	* Relative <i>put</i> method for writing a short
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes two bytes containing the given short value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by two.  </p>
	*
	* @param  value
	*         The short value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than two bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putShort(value : java.StdTypes.Int16) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading a short value.
	*
	* <p> Reads two bytes at the given index, composing them into a
	* short value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The short value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus one
	*/
	@:overload @:abstract public function getShort(index : Int) : java.StdTypes.Int16;
	
	/**
	* Absolute <i>put</i> method for writing a short
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes two bytes containing the given short value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The short value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus one
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putShort(index : Int, value : java.StdTypes.Int16) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as a short buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* two, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new short buffer
	*/
	@:overload @:abstract public function asShortBuffer() : java.nio.ShortBuffer;
	
	/**
	* Relative <i>get</i> method for reading an int value.
	*
	* <p> Reads the next four bytes at this buffer's current position,
	* composing them into an int value according to the current byte order,
	* and then increments the position by four.  </p>
	*
	* @return  The int value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than four bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getInt() : Int;
	
	/**
	* Relative <i>put</i> method for writing an int
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes four bytes containing the given int value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by four.  </p>
	*
	* @param  value
	*         The int value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than four bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putInt(value : Int) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading an int value.
	*
	* <p> Reads four bytes at the given index, composing them into a
	* int value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The int value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus three
	*/
	@:overload @:abstract public function getInt(index : Int) : Int;
	
	/**
	* Absolute <i>put</i> method for writing an int
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes four bytes containing the given int value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The int value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus three
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putInt(index : Int, value : Int) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as an int buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* four, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new int buffer
	*/
	@:overload @:abstract public function asIntBuffer() : java.nio.IntBuffer;
	
	/**
	* Relative <i>get</i> method for reading a long value.
	*
	* <p> Reads the next eight bytes at this buffer's current position,
	* composing them into a long value according to the current byte order,
	* and then increments the position by eight.  </p>
	*
	* @return  The long value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than eight bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getLong() : haxe.Int64;
	
	/**
	* Relative <i>put</i> method for writing a long
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes eight bytes containing the given long value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by eight.  </p>
	*
	* @param  value
	*         The long value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than eight bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putLong(value : haxe.Int64) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading a long value.
	*
	* <p> Reads eight bytes at the given index, composing them into a
	* long value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The long value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus seven
	*/
	@:overload @:abstract public function getLong(index : Int) : haxe.Int64;
	
	/**
	* Absolute <i>put</i> method for writing a long
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes eight bytes containing the given long value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The long value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus seven
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putLong(index : Int, value : haxe.Int64) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as a long buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* eight, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new long buffer
	*/
	@:overload @:abstract public function asLongBuffer() : java.nio.LongBuffer;
	
	/**
	* Relative <i>get</i> method for reading a float value.
	*
	* <p> Reads the next four bytes at this buffer's current position,
	* composing them into a float value according to the current byte order,
	* and then increments the position by four.  </p>
	*
	* @return  The float value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than four bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getFloat() : Single;
	
	/**
	* Relative <i>put</i> method for writing a float
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes four bytes containing the given float value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by four.  </p>
	*
	* @param  value
	*         The float value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than four bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putFloat(value : Single) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading a float value.
	*
	* <p> Reads four bytes at the given index, composing them into a
	* float value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The float value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus three
	*/
	@:overload @:abstract public function getFloat(index : Int) : Single;
	
	/**
	* Absolute <i>put</i> method for writing a float
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes four bytes containing the given float value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The float value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus three
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putFloat(index : Int, value : Single) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as a float buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* four, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new float buffer
	*/
	@:overload @:abstract public function asFloatBuffer() : java.nio.FloatBuffer;
	
	/**
	* Relative <i>get</i> method for reading a double value.
	*
	* <p> Reads the next eight bytes at this buffer's current position,
	* composing them into a double value according to the current byte order,
	* and then increments the position by eight.  </p>
	*
	* @return  The double value at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than eight bytes
	*          remaining in this buffer
	*/
	@:overload @:abstract public function getDouble() : Float;
	
	/**
	* Relative <i>put</i> method for writing a double
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes eight bytes containing the given double value, in the
	* current byte order, into this buffer at the current position, and then
	* increments the position by eight.  </p>
	*
	* @param  value
	*         The double value to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there are fewer than eight bytes
	*          remaining in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putDouble(value : Float) : java.nio.ByteBuffer;
	
	/**
	* Absolute <i>get</i> method for reading a double value.
	*
	* <p> Reads eight bytes at the given index, composing them into a
	* double value according to the current byte order.  </p>
	*
	* @param  index
	*         The index from which the bytes will be read
	*
	* @return  The double value at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus seven
	*/
	@:overload @:abstract public function getDouble(index : Int) : Float;
	
	/**
	* Absolute <i>put</i> method for writing a double
	* value&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes eight bytes containing the given double value, in the
	* current byte order, into this buffer at the given index.  </p>
	*
	* @param  index
	*         The index at which the bytes will be written
	*
	* @param  value
	*         The double value to be written
	*
	* @return  This buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit,
	*          minus seven
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function putDouble(index : Int, value : Float) : java.nio.ByteBuffer;
	
	/**
	* Creates a view of this byte buffer as a double buffer.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of bytes remaining in this buffer divided by
	* eight, and its mark will be undefined.  The new buffer will be direct
	* if, and only if, this buffer is direct, and it will be read-only if, and
	* only if, this buffer is read-only.  </p>
	*
	* @return  A new double buffer
	*/
	@:overload @:abstract public function asDoubleBuffer() : java.nio.DoubleBuffer;
	
	/**
	* Compares this object with the specified object for order.  Returns a
	* negative integer, zero, or a positive integer as this object is less
	* than, equal to, or greater than the specified object.
	*
	* <p>The implementor must ensure <tt>sgn(x.compareTo(y)) ==
	* -sgn(y.compareTo(x))</tt> for all <tt>x</tt> and <tt>y</tt>.  (This
	* implies that <tt>x.compareTo(y)</tt> must throw an exception iff
	* <tt>y.compareTo(x)</tt> throws an exception.)
	*
	* <p>The implementor must also ensure that the relation is transitive:
	* <tt>(x.compareTo(y)&gt;0 &amp;&amp; y.compareTo(z)&gt;0)</tt> implies
	* <tt>x.compareTo(z)&gt;0</tt>.
	*
	* <p>Finally, the implementor must ensure that <tt>x.compareTo(y)==0</tt>
	* implies that <tt>sgn(x.compareTo(z)) == sgn(y.compareTo(z))</tt>, for
	* all <tt>z</tt>.
	*
	* <p>It is strongly recommended, but <i>not</i> strictly required that
	* <tt>(x.compareTo(y)==0) == (x.equals(y))</tt>.  Generally speaking, any
	* class that implements the <tt>Comparable</tt> interface and violates
	* this condition should clearly indicate this fact.  The recommended
	* language is "Note: this class has a natural ordering that is
	* inconsistent with equals."
	*
	* <p>In the foregoing description, the notation
	* <tt>sgn(</tt><i>expression</i><tt>)</tt> designates the mathematical
	* <i>signum</i> function, which is defined to return one of <tt>-1</tt>,
	* <tt>0</tt>, or <tt>1</tt> according to whether the value of
	* <i>expression</i> is negative, zero or positive.
	*
	* @param   o the object to be compared.
	* @return  a negative integer, zero, or a positive integer as this object
	*          is less than, equal to, or greater than the specified object.
	*
	* @throws NullPointerException if the specified object is null
	* @throws ClassCastException if the specified object's type prevents it
	*         from being compared to this object.
	*/
	@:overload public function compareTo(o : Dynamic) : Int;
	
	
}
