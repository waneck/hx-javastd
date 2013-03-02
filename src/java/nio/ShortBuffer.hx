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
* A short buffer.
*
* <p> This class defines four categories of operations upon
* short buffers:
*
* <ul>
*
*   <li><p> Absolute and relative {@link #get() </code><i>get</i><code>} and
*   {@link #put(short) </code><i>put</i><code>} methods that read and write
*   single shorts; </p></li>
*
*   <li><p> Relative {@link #get(short[]) </code><i>bulk get</i><code>}
*   methods that transfer contiguous sequences of shorts from this buffer
*   into an array; and</p></li>
*
*   <li><p> Relative {@link #put(short[]) </code><i>bulk put</i><code>}
*   methods that transfer contiguous sequences of shorts from a
*   short array or some other short
*   buffer into this buffer;&#32;and </p></li>
*












*
*   <li><p> Methods for {@link #compact </code>compacting<code>}, {@link
*   #duplicate </code>duplicating<code>}, and {@link #slice
*   </code>slicing<code>} a short buffer.  </p></li>
*
* </ul>
*
* <p> Short buffers can be created either by {@link #allocate
* </code><i>allocation</i><code>}, which allocates space for the buffer's
*






*
* content, by {@link #wrap(short[]) </code><i>wrapping</i><code>} an existing
* short array  into a buffer, or by creating a
* <a href="ByteBuffer.html#views"><i>view</i></a> of an existing byte buffer.
*

*



































































































*

*
* <p> Like a byte buffer, a short buffer is either <a
* href="ByteBuffer.html#direct"><i>direct</i> or <i>non-direct</i></a>.  A
* short buffer created via the <tt>wrap</tt> methods of this class will
* be non-direct.  A short buffer created as a view of a byte buffer will
* be direct if, and only if, the byte buffer itself is direct.  Whether or not
* a short buffer is direct may be determined by invoking the {@link
* #isDirect isDirect} method.  </p>
*

*








*



*
* <p> Methods in this class that do not otherwise have a value to return are
* specified to return the buffer upon which they are invoked.  This allows
* method invocations to be chained.
*































*
*
* @author Mark Reinhold
* @author JSR-51 Expert Group
* @since 1.4
*/
@:require(java4) extern class ShortBuffer extends java.nio.Buffer implements java.lang.Comparable<java.nio.ShortBuffer>
{
	/**
	* Allocates a new short buffer.
	*
	* <p> The new buffer's position will be zero, its limit will be its
	* capacity, its mark will be undefined, and each of its elements will be
	* initialized to zero.  It will have a {@link #array
	* </code>backing array<code>}, and its {@link #arrayOffset </code>array
	* offset<code>} will be zero.
	*
	* @param  capacity
	*         The new buffer's capacity, in shorts
	*
	* @return  The new short buffer
	*
	* @throws  IllegalArgumentException
	*          If the <tt>capacity</tt> is a negative integer
	*/
	@:overload public static function allocate(capacity : Int) : java.nio.ShortBuffer;
	
	/**
	* Wraps a short array into a buffer.
	*
	* <p> The new buffer will be backed by the given short array;
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
	* @return  The new short buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload public static function wrap(array : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : java.nio.ShortBuffer;
	
	/**
	* Wraps a short array into a buffer.
	*
	* <p> The new buffer will be backed by the given short array;
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
	* @return  The new short buffer
	*/
	@:overload public static function wrap(array : java.NativeArray<java.StdTypes.Int16>) : java.nio.ShortBuffer;
	
	/**
	* Creates a new short buffer whose content is a shared subsequence of
	* this buffer's content.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of shorts remaining in this buffer, and its mark
	* will be undefined.  The new buffer will be direct if, and only if, this
	* buffer is direct, and it will be read-only if, and only if, this buffer
	* is read-only.  </p>
	*
	* @return  The new short buffer
	*/
	@:overload @:abstract public function slice() : java.nio.ShortBuffer;
	
	/**
	* Creates a new short buffer that shares this buffer's content.
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
	* @return  The new short buffer
	*/
	@:overload @:abstract public function duplicate() : java.nio.ShortBuffer;
	
	/**
	* Creates a new, read-only short buffer that shares this buffer's
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
	* @return  The new, read-only short buffer
	*/
	@:overload @:abstract public function asReadOnlyBuffer() : java.nio.ShortBuffer;
	
	/**
	* Relative <i>get</i> method.  Reads the short at this buffer's
	* current position, and then increments the position. </p>
	*
	* @return  The short at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If the buffer's current position is not smaller than its limit
	*/
	@:overload @:abstract public function get() : java.StdTypes.Int16;
	
	/**
	* Relative <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given short into this buffer at the current
	* position, and then increments the position. </p>
	*
	* @param  s
	*         The short to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If this buffer's current position is not smaller than its limit
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function put(s : java.StdTypes.Int16) : java.nio.ShortBuffer;
	
	/**
	* Absolute <i>get</i> method.  Reads the short at the given
	* index. </p>
	*
	* @param  index
	*         The index from which the short will be read
	*
	* @return  The short at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit
	*/
	@:overload @:abstract public function get(index : Int) : java.StdTypes.Int16;
	
	/**
	* Absolute <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given short into this buffer at the given
	* index. </p>
	*
	* @param  index
	*         The index at which the short will be written
	*
	* @param  s
	*         The short value to be written
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
	@:overload @:abstract public function put(index : Int, s : java.StdTypes.Int16) : java.nio.ShortBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers shorts from this buffer into the given
	* destination array.  If there are fewer shorts remaining in the
	* buffer than are required to satisfy the request, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* shorts are transferred and a {@link BufferUnderflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> shorts from this
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
	* except that it first checks that there are sufficient shorts in
	* this buffer and it is potentially much more efficient. </p>
	*
	* @param  dst
	*         The array into which shorts are to be written
	*
	* @param  offset
	*         The offset within the array of the first short to be
	*         written; must be non-negative and no larger than
	*         <tt>dst.length</tt>
	*
	* @param  length
	*         The maximum number of shorts to be written to the given
	*         array; must be non-negative and no larger than
	*         <tt>dst.length - offset</tt>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> shorts
	*          remaining in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload public function get(dst : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : java.nio.ShortBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers shorts from this buffer into the given
	* destination array.  An invocation of this method of the form
	* <tt>src.get(a)</tt> behaves in exactly the same way as the invocation
	*
	* <pre>
	*     src.get(a, 0, a.length) </pre>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> shorts
	*          remaining in this buffer
	*/
	@:overload public function get(dst : java.NativeArray<java.StdTypes.Int16>) : java.nio.ShortBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the shorts remaining in the given source
	* buffer into this buffer.  If there are more shorts remaining in the
	* source buffer than in this buffer, that is, if
	* <tt>src.remaining()</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>,
	* then no shorts are transferred and a {@link
	* BufferOverflowException} is thrown.
	*
	* <p> Otherwise, this method copies
	* <i>n</i>&nbsp;=&nbsp;<tt>src.remaining()</tt> shorts from the given
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
	*         The source buffer from which shorts are to be read;
	*         must not be this buffer
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*          for the remaining shorts in the source buffer
	*
	* @throws  IllegalArgumentException
	*          If the source buffer is this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload public function put(src : java.nio.ShortBuffer) : java.nio.ShortBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers shorts into this buffer from the given
	* source array.  If there are more shorts to be copied from the array
	* than remain in this buffer, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* shorts are transferred and a {@link BufferOverflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> shorts from the
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
	*         The array from which shorts are to be read
	*
	* @param  offset
	*         The offset within the array of the first short to be read;
	*         must be non-negative and no larger than <tt>array.length</tt>
	*
	* @param  length
	*         The number of shorts to be read from the given array;
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
	@:overload public function put(src : java.NativeArray<java.StdTypes.Int16>, offset : Int, length : Int) : java.nio.ShortBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the entire content of the given source
	* short array into this buffer.  An invocation of this method of the
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
	@:overload @:final public function put(src : java.NativeArray<java.StdTypes.Int16>) : java.nio.ShortBuffer;
	
	/**
	* Tells whether or not this buffer is backed by an accessible short
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
	* Returns the short array that backs this
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
	@:overload @:final override public function array() : java.NativeArray<java.StdTypes.Int16>;
	
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
	* <p> The shorts between the buffer's current position and its limit,
	* if any, are copied to the beginning of the buffer.  That is, the
	* short at index <i>p</i>&nbsp;=&nbsp;<tt>position()</tt> is copied
	* to index zero, the short at index <i>p</i>&nbsp;+&nbsp;1 is copied
	* to index one, and so forth until the short at index
	* <tt>limit()</tt>&nbsp;-&nbsp;1 is copied to index
	* <i>n</i>&nbsp;=&nbsp;<tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>&nbsp;-&nbsp;<i>p</i>.
	* The buffer's position is then set to <i>n+1</i> and its limit is set to
	* its capacity.  The mark, if defined, is discarded.
	*
	* <p> The buffer's position is set to the number of shorts copied,
	* rather than to zero, so that an invocation of this method can be
	* followed immediately by an invocation of another relative <i>put</i>
	* method. </p>
	*















	*
	* @return  This buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:abstract public function compact() : java.nio.ShortBuffer;
	
	/**
	* Tells whether or not this short buffer is direct. </p>
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
	* <p> The hash code of a short buffer depends only upon its remaining
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
	* <p> Two short buffers are equal if, and only if,
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
	* <p> A short buffer is not equal to any other type of object.  </p>
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
	* <p> Two short buffers are compared by comparing their sequences of
	* remaining elements lexicographically, without regard to the starting
	* position of each sequence within its corresponding buffer.








	* Pairs of {@code short} elements are compared as if by invoking
	* {@link Short#compare(short,short)}.

	*
	* <p> A short buffer is not comparable to any other type of object.
	*
	* @return  A negative integer, zero, or a positive integer as this buffer
	*          is less than, equal to, or greater than the given buffer
	*/
	@:overload public function compareTo(that : java.nio.ShortBuffer) : Int;
	
	/**
	* Retrieves this buffer's byte order.
	*
	* <p> The byte order of a short buffer created by allocation or by
	* wrapping an existing <tt>short</tt> array is the {@link
	* ByteOrder#nativeOrder </code>native order<code>} of the underlying
	* hardware.  The byte order of a short buffer created as a <a
	* href="ByteBuffer.html#views">view</a> of a byte buffer is that of the
	* byte buffer at the moment that the view is created.  </p>
	*
	* @return  This buffer's byte order
	*/
	@:overload @:abstract public function order() : java.nio.ByteOrder;
	
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
	@:overload @:public @:public @:public @:public @:public @:public @:public @:public @:public public function compareTo(o : Dynamic) : Int;
	
	
}
