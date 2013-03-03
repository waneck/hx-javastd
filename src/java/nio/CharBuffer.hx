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
extern class CharBuffer extends java.nio.Buffer implements java.lang.Comparable<java.nio.CharBuffer> implements java.lang.Appendable implements java.lang.CharSequence implements java.lang.Readable
{
	/**
	* Allocates a new char buffer.
	*
	* <p> The new buffer's position will be zero, its limit will be its
	* capacity, its mark will be undefined, and each of its elements will be
	* initialized to zero.  It will have a {@link #array
	* </code>backing array<code>}, and its {@link #arrayOffset </code>array
	* offset<code>} will be zero.
	*
	* @param  capacity
	*         The new buffer's capacity, in chars
	*
	* @return  The new char buffer
	*
	* @throws  IllegalArgumentException
	*          If the <tt>capacity</tt> is a negative integer
	*/
	@:overload @:public @:static public static function allocate(capacity : Int) : java.nio.CharBuffer;
	
	/**
	* Wraps a char array into a buffer.
	*
	* <p> The new buffer will be backed by the given char array;
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
	* @return  The new char buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload @:public @:static public static function wrap(array : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : java.nio.CharBuffer;
	
	/**
	* Wraps a char array into a buffer.
	*
	* <p> The new buffer will be backed by the given char array;
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
	* @return  The new char buffer
	*/
	@:overload @:public @:static public static function wrap(array : java.NativeArray<java.StdTypes.Char16>) : java.nio.CharBuffer;
	
	/**
	* Attempts to read characters into the specified character buffer.
	* The buffer is used as a repository of characters as-is: the only
	* changes made are the results of a put operation. No flipping or
	* rewinding of the buffer is performed.
	*
	* @param target the buffer to read characters into
	* @return The number of characters added to the buffer, or
	*         -1 if this source of characters is at its end
	* @throws IOException if an I/O error occurs
	* @throws NullPointerException if target is null
	* @throws ReadOnlyBufferException if target is a read only buffer
	* @since 1.5
	*/
	@:require(java5) @:overload @:public public function read(target : java.nio.CharBuffer) : Int;
	
	/**
	* Wraps a character sequence into a buffer.
	*
	* <p> The content of the new, read-only buffer will be the content of the
	* given character sequence.  The buffer's capacity will be
	* <tt>csq.length()</tt>, its position will be <tt>start</tt>, its limit
	* will be <tt>end</tt>, and its mark will be undefined.  </p>
	*
	* @param  csq
	*         The character sequence from which the new character buffer is to
	*         be created
	*
	* @param  start
	*         The index of the first character to be used;
	*         must be non-negative and no larger than <tt>csq.length()</tt>.
	*         The new buffer's position will be set to this value.
	*
	* @param  end
	*         The index of the character following the last character to be
	*         used; must be no smaller than <tt>start</tt> and no larger
	*         than <tt>csq.length()</tt>.
	*         The new buffer's limit will be set to this value.
	*
	* @return  The new character buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>start</tt> and <tt>end</tt>
	*          parameters do not hold
	*/
	@:overload @:public @:static public static function wrap(csq : java.lang.CharSequence, start : Int, end : Int) : java.nio.CharBuffer;
	
	/**
	* Wraps a character sequence into a buffer.
	*
	* <p> The content of the new, read-only buffer will be the content of the
	* given character sequence.  The new buffer's capacity and limit will be
	* <tt>csq.length()</tt>, its position will be zero, and its mark will be
	* undefined.  </p>
	*
	* @param  csq
	*         The character sequence from which the new character buffer is to
	*         be created
	*
	* @return  The new character buffer
	*/
	@:overload @:public @:static public static function wrap(csq : java.lang.CharSequence) : java.nio.CharBuffer;
	
	/**
	* Creates a new char buffer whose content is a shared subsequence of
	* this buffer's content.
	*
	* <p> The content of the new buffer will start at this buffer's current
	* position.  Changes to this buffer's content will be visible in the new
	* buffer, and vice versa; the two buffers' position, limit, and mark
	* values will be independent.
	*
	* <p> The new buffer's position will be zero, its capacity and its limit
	* will be the number of chars remaining in this buffer, and its mark
	* will be undefined.  The new buffer will be direct if, and only if, this
	* buffer is direct, and it will be read-only if, and only if, this buffer
	* is read-only.  </p>
	*
	* @return  The new char buffer
	*/
	@:overload @:public @:abstract public function slice() : java.nio.CharBuffer;
	
	/**
	* Creates a new char buffer that shares this buffer's content.
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
	* @return  The new char buffer
	*/
	@:overload @:public @:abstract public function duplicate() : java.nio.CharBuffer;
	
	/**
	* Creates a new, read-only char buffer that shares this buffer's
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
	* @return  The new, read-only char buffer
	*/
	@:overload @:public @:abstract public function asReadOnlyBuffer() : java.nio.CharBuffer;
	
	/**
	* Relative <i>get</i> method.  Reads the char at this buffer's
	* current position, and then increments the position. </p>
	*
	* @return  The char at the buffer's current position
	*
	* @throws  BufferUnderflowException
	*          If the buffer's current position is not smaller than its limit
	*/
	@:overload @:public @:abstract public function get() : java.StdTypes.Char16;
	
	/**
	* Relative <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given char into this buffer at the current
	* position, and then increments the position. </p>
	*
	* @param  c
	*         The char to be written
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If this buffer's current position is not smaller than its limit
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:public @:abstract public function put(c : java.StdTypes.Char16) : java.nio.CharBuffer;
	
	/**
	* Absolute <i>get</i> method.  Reads the char at the given
	* index. </p>
	*
	* @param  index
	*         The index from which the char will be read
	*
	* @return  The char at the given index
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>index</tt> is negative
	*          or not smaller than the buffer's limit
	*/
	@:overload @:public @:abstract public function get(index : Int) : java.StdTypes.Char16;
	
	/**
	* Absolute <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> Writes the given char into this buffer at the given
	* index. </p>
	*
	* @param  index
	*         The index at which the char will be written
	*
	* @param  c
	*         The char value to be written
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
	@:overload @:public @:abstract public function put(index : Int, c : java.StdTypes.Char16) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers chars from this buffer into the given
	* destination array.  If there are fewer chars remaining in the
	* buffer than are required to satisfy the request, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* chars are transferred and a {@link BufferUnderflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> chars from this
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
	* except that it first checks that there are sufficient chars in
	* this buffer and it is potentially much more efficient. </p>
	*
	* @param  dst
	*         The array into which chars are to be written
	*
	* @param  offset
	*         The offset within the array of the first char to be
	*         written; must be non-negative and no larger than
	*         <tt>dst.length</tt>
	*
	* @param  length
	*         The maximum number of chars to be written to the given
	*         array; must be non-negative and no larger than
	*         <tt>dst.length - offset</tt>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> chars
	*          remaining in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>offset</tt> and <tt>length</tt>
	*          parameters do not hold
	*/
	@:overload @:public public function get(dst : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>get</i> method.
	*
	* <p> This method transfers chars from this buffer into the given
	* destination array.  An invocation of this method of the form
	* <tt>src.get(a)</tt> behaves in exactly the same way as the invocation
	*
	* <pre>
	*     src.get(a, 0, a.length) </pre>
	*
	* @return  This buffer
	*
	* @throws  BufferUnderflowException
	*          If there are fewer than <tt>length</tt> chars
	*          remaining in this buffer
	*/
	@:overload @:public public function get(dst : java.NativeArray<java.StdTypes.Char16>) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the chars remaining in the given source
	* buffer into this buffer.  If there are more chars remaining in the
	* source buffer than in this buffer, that is, if
	* <tt>src.remaining()</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>,
	* then no chars are transferred and a {@link
	* BufferOverflowException} is thrown.
	*
	* <p> Otherwise, this method copies
	* <i>n</i>&nbsp;=&nbsp;<tt>src.remaining()</tt> chars from the given
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
	*         The source buffer from which chars are to be read;
	*         must not be this buffer
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*          for the remaining chars in the source buffer
	*
	* @throws  IllegalArgumentException
	*          If the source buffer is this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:public public function put(src : java.nio.CharBuffer) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers chars into this buffer from the given
	* source array.  If there are more chars to be copied from the array
	* than remain in this buffer, that is, if
	* <tt>length</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>, then no
	* chars are transferred and a {@link BufferOverflowException} is
	* thrown.
	*
	* <p> Otherwise, this method copies <tt>length</tt> chars from the
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
	*         The array from which chars are to be read
	*
	* @param  offset
	*         The offset within the array of the first char to be read;
	*         must be non-negative and no larger than <tt>array.length</tt>
	*
	* @param  length
	*         The number of chars to be read from the given array;
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
	@:overload @:public public function put(src : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the entire content of the given source
	* char array into this buffer.  An invocation of this method of the
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
	@:overload @:public @:final public function put(src : java.NativeArray<java.StdTypes.Char16>) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers chars from the given string into this
	* buffer.  If there are more chars to be copied from the string than
	* remain in this buffer, that is, if
	* <tt>end&nbsp;-&nbsp;start</tt>&nbsp;<tt>&gt;</tt>&nbsp;<tt>remaining()</tt>,
	* then no chars are transferred and a {@link
	* BufferOverflowException} is thrown.
	*
	* <p> Otherwise, this method copies
	* <i>n</i>&nbsp;=&nbsp;<tt>end</tt>&nbsp;-&nbsp;<tt>start</tt> chars
	* from the given string into this buffer, starting at the given
	* <tt>start</tt> index and at the current position of this buffer.  The
	* position of this buffer is then incremented by <i>n</i>.
	*
	* <p> In other words, an invocation of this method of the form
	* <tt>dst.put(src,&nbsp;start,&nbsp;end)</tt> has exactly the same effect
	* as the loop
	*
	* <pre>
	*     for (int i = start; i < end; i++)
	*         dst.put(src.charAt(i)); </pre>
	*
	* except that it first checks that there is sufficient space in this
	* buffer and it is potentially much more efficient. </p>
	*
	* @param  src
	*         The string from which chars are to be read
	*
	* @param  start
	*         The offset within the string of the first char to be read;
	*         must be non-negative and no larger than
	*         <tt>string.length()</tt>
	*
	* @param  end
	*         The offset within the string of the last char to be read,
	*         plus one; must be non-negative and no larger than
	*         <tt>string.length()</tt>
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on the <tt>start</tt> and <tt>end</tt>
	*          parameters do not hold
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:public public function put(src : String, start : Int, end : Int) : java.nio.CharBuffer;
	
	/**
	* Relative bulk <i>put</i> method&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> This method transfers the entire content of the given source string
	* into this buffer.  An invocation of this method of the form
	* <tt>dst.put(s)</tt> behaves in exactly the same way as the invocation
	*
	* <pre>
	*     dst.put(s, 0, s.length()) </pre>
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*/
	@:overload @:public @:final public function put(src : String) : java.nio.CharBuffer;
	
	/**
	* Tells whether or not this buffer is backed by an accessible char
	* array.
	*
	* <p> If this method returns <tt>true</tt> then the {@link #array() array}
	* and {@link #arrayOffset() arrayOffset} methods may safely be invoked.
	* </p>
	*
	* @return  <tt>true</tt> if, and only if, this buffer
	*          is backed by an array and is not read-only
	*/
	@:overload @:public @:final override public function hasArray() : Bool;
	
	/**
	* Returns the char array that backs this
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
	@:overload @:public @:final override public function array() : java.NativeArray<java.StdTypes.Char16>;
	
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
	@:overload @:public @:final override public function arrayOffset() : Int;
	
	/**
	* Compacts this buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> The chars between the buffer's current position and its limit,
	* if any, are copied to the beginning of the buffer.  That is, the
	* char at index <i>p</i>&nbsp;=&nbsp;<tt>position()</tt> is copied
	* to index zero, the char at index <i>p</i>&nbsp;+&nbsp;1 is copied
	* to index one, and so forth until the char at index
	* <tt>limit()</tt>&nbsp;-&nbsp;1 is copied to index
	* <i>n</i>&nbsp;=&nbsp;<tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>&nbsp;-&nbsp;<i>p</i>.
	* The buffer's position is then set to <i>n+1</i> and its limit is set to
	* its capacity.  The mark, if defined, is discarded.
	*
	* <p> The buffer's position is set to the number of chars copied,
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
	@:overload @:public @:abstract public function compact() : java.nio.CharBuffer;
	
	/**
	* Tells whether or not this char buffer is direct. </p>
	*
	* @return  <tt>true</tt> if, and only if, this buffer is direct
	*/
	@:overload @:public @:abstract override public function isDirect() : Bool;
	
	/**
	* Returns the current hash code of this buffer.
	*
	* <p> The hash code of a char buffer depends only upon its remaining
	* elements; that is, upon the elements from <tt>position()</tt> up to, and
	* including, the element at <tt>limit()</tt>&nbsp;-&nbsp;<tt>1</tt>.
	*
	* <p> Because buffer hash codes are content-dependent, it is inadvisable
	* to use buffers as keys in hash maps or similar data structures unless it
	* is known that their contents will not change.  </p>
	*
	* @return  The current hash code of this buffer
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Tells whether or not this buffer is equal to another object.
	*
	* <p> Two char buffers are equal if, and only if,
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
	* <p> A char buffer is not equal to any other type of object.  </p>
	*
	* @param  ob  The object to which this buffer is to be compared
	*
	* @return  <tt>true</tt> if, and only if, this buffer is equal to the
	*           given object
	*/
	@:overload @:public public function equals(ob : Dynamic) : Bool;
	
	/**
	* Compares this buffer to another.
	*
	* <p> Two char buffers are compared by comparing their sequences of
	* remaining elements lexicographically, without regard to the starting
	* position of each sequence within its corresponding buffer.








	* Pairs of {@code char} elements are compared as if by invoking
	* {@link Character#compare(char,char)}.

	*
	* <p> A char buffer is not comparable to any other type of object.
	*
	* @return  A negative integer, zero, or a positive integer as this buffer
	*          is less than, equal to, or greater than the given buffer
	*/
	@:overload @:public public function compareTo(that : java.nio.CharBuffer) : Int;
	
	/**
	* Returns a string containing the characters in this buffer.
	*
	* <p> The first character of the resulting string will be the character at
	* this buffer's position, while the last character will be the character
	* at index <tt>limit()</tt>&nbsp;-&nbsp;1.  Invoking this method does not
	* change the buffer's position. </p>
	*
	* @return  The specified string
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns the length of this character buffer.
	*
	* <p> When viewed as a character sequence, the length of a character
	* buffer is simply the number of characters between the position
	* (inclusive) and the limit (exclusive); that is, it is equivalent to
	* <tt>remaining()</tt>. </p>
	*
	* @return  The length of this character buffer
	*/
	@:overload @:public @:final public function length() : Int;
	
	/**
	* Reads the character at the given index relative to the current
	* position. </p>
	*
	* @param  index
	*         The index of the character to be read, relative to the position;
	*         must be non-negative and smaller than <tt>remaining()</tt>
	*
	* @return  The character at index
	*          <tt>position()&nbsp;+&nbsp;index</tt>
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on <tt>index</tt> do not hold
	*/
	@:overload @:public @:final public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Creates a new character buffer that represents the specified subsequence
	* of this buffer, relative to the current position.
	*
	* <p> The new buffer will share this buffer's content; that is, if the
	* content of this buffer is mutable then modifications to one buffer will
	* cause the other to be modified.  The new buffer's capacity will be that
	* of this buffer, its position will be
	* <tt>position()</tt>&nbsp;+&nbsp;<tt>start</tt>, and its limit will be
	* <tt>position()</tt>&nbsp;+&nbsp;<tt>end</tt>.  The new buffer will be
	* direct if, and only if, this buffer is direct, and it will be read-only
	* if, and only if, this buffer is read-only.  </p>
	*
	* @param  start
	*         The index, relative to the current position, of the first
	*         character in the subsequence; must be non-negative and no larger
	*         than <tt>remaining()</tt>
	*
	* @param  end
	*         The index, relative to the current position, of the character
	*         following the last character in the subsequence; must be no
	*         smaller than <tt>start</tt> and no larger than
	*         <tt>remaining()</tt>
	*
	* @return  The new character buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If the preconditions on <tt>start</tt> and <tt>end</tt>
	*          do not hold
	*/
	@:overload @:public @:abstract public function subSequence(start : Int, end : Int) : java.nio.CharBuffer;
	
	/**
	* Appends the specified character sequence  to this
	* buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> An invocation of this method of the form <tt>dst.append(csq)</tt>
	* behaves in exactly the same way as the invocation
	*
	* <pre>
	*     dst.put(csq.toString()) </pre>
	*
	* <p> Depending on the specification of <tt>toString</tt> for the
	* character sequence <tt>csq</tt>, the entire sequence may not be
	* appended.  For instance, invoking the {@link CharBuffer#toString()
	* toString} method of a character buffer will return a subsequence whose
	* content depends upon the buffer's position and limit.
	*
	* @param  csq
	*         The character sequence to append.  If <tt>csq</tt> is
	*         <tt>null</tt>, then the four characters <tt>"null"</tt> are
	*         appended to this character buffer.
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*
	* @since  1.5
	*/
	@:require(java5) @:overload @:public public function append(csq : java.lang.CharSequence) : java.nio.CharBuffer;
	
	/**
	* Appends a subsequence of the  specified character sequence  to this
	* buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> An invocation of this method of the form <tt>dst.append(csq, start,
	* end)</tt> when <tt>csq</tt> is not <tt>null</tt>, behaves in exactly the
	* same way as the invocation
	*
	* <pre>
	*     dst.put(csq.subSequence(start, end).toString()) </pre>
	*
	* @param  csq
	*         The character sequence from which a subsequence will be
	*         appended.  If <tt>csq</tt> is <tt>null</tt>, then characters
	*         will be appended as if <tt>csq</tt> contained the four
	*         characters <tt>"null"</tt>.
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>start</tt> or <tt>end</tt> are negative, <tt>start</tt>
	*          is greater than <tt>end</tt>, or <tt>end</tt> is greater than
	*          <tt>csq.length()</tt>
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*
	* @since  1.5
	*/
	@:require(java5) @:overload @:public public function append(csq : java.lang.CharSequence, start : Int, end : Int) : java.nio.CharBuffer;
	
	/**
	* Appends the specified char  to this
	* buffer&nbsp;&nbsp;<i>(optional operation)</i>.
	*
	* <p> An invocation of this method of the form <tt>dst.append(c)</tt>
	* behaves in exactly the same way as the invocation
	*
	* <pre>
	*     dst.put(c) </pre>
	*
	* @param  c
	*         The 16-bit char to append
	*
	* @return  This buffer
	*
	* @throws  BufferOverflowException
	*          If there is insufficient space in this buffer
	*
	* @throws  ReadOnlyBufferException
	*          If this buffer is read-only
	*
	* @since  1.5
	*/
	@:require(java5) @:overload @:public public function append(c : java.StdTypes.Char16) : java.nio.CharBuffer;
	
	/**
	* Retrieves this buffer's byte order.
	*
	* <p> The byte order of a char buffer created by allocation or by
	* wrapping an existing <tt>char</tt> array is the {@link
	* ByteOrder#nativeOrder </code>native order<code>} of the underlying
	* hardware.  The byte order of a char buffer created as a <a
	* href="ByteBuffer.html#views">view</a> of a byte buffer is that of the
	* byte buffer at the moment that the view is created.  </p>
	*
	* @return  This buffer's byte order
	*/
	@:overload @:public @:abstract public function order() : java.nio.ByteOrder;
	
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
	@:overload @:public public function compareTo(o : Dynamic) : Int;
	
	
}
