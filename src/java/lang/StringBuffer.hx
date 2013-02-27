package java.lang;
/*
* Copyright (c) 1994, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A thread-safe, mutable sequence of characters.
* A string buffer is like a {@link String}, but can be modified. At any
* point in time it contains some particular sequence of characters, but
* the length and content of the sequence can be changed through certain
* method calls.
* <p>
* String buffers are safe for use by multiple threads. The methods
* are synchronized where necessary so that all the operations on any
* particular instance behave as if they occur in some serial order
* that is consistent with the order of the method calls made by each of
* the individual threads involved.
* <p>
* The principal operations on a <code>StringBuffer</code> are the
* <code>append</code> and <code>insert</code> methods, which are
* overloaded so as to accept data of any type. Each effectively
* converts a given datum to a string and then appends or inserts the
* characters of that string to the string buffer. The
* <code>append</code> method always adds these characters at the end
* of the buffer; the <code>insert</code> method adds the characters at
* a specified point.
* <p>
* For example, if <code>z</code> refers to a string buffer object
* whose current contents are "<code>start</code>", then
* the method call <code>z.append("le")</code> would cause the string
* buffer to contain "<code>startle</code>", whereas
* <code>z.insert(4, "le")</code> would alter the string buffer to
* contain "<code>starlet</code>".
* <p>
* In general, if sb refers to an instance of a <code>StringBuffer</code>,
* then <code>sb.append(x)</code> has the same effect as
* <code>sb.insert(sb.length(),&nbsp;x)</code>.
* <p>
* Whenever an operation occurs involving a source sequence (such as
* appending or inserting from a source sequence) this class synchronizes
* only on the string buffer performing the operation, not on the source.
* <p>
* Every string buffer has a capacity. As long as the length of the
* character sequence contained in the string buffer does not exceed
* the capacity, it is not necessary to allocate a new internal
* buffer array. If the internal buffer overflows, it is
* automatically made larger.
*
* As of  release JDK 5, this class has been supplemented with an equivalent
* class designed for use by a single thread, {@link StringBuilder}.  The
* <tt>StringBuilder</tt> class should generally be used in preference to
* this one, as it supports all of the same operations but it is faster, as
* it performs no synchronization.
*
* @author      Arthur van Hoff
* @see     java.lang.StringBuilder
* @see     java.lang.String
* @since   JDK1.0
*/
@:require(java0) extern class StringBuffer extends java.lang.AbstractStringBuilder implements java.io.Serializable implements java.lang.CharSequence
{
	/**
	* Constructs a string buffer with no characters in it and an
	* initial capacity of 16 characters.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a string buffer with no characters in it and
	* the specified initial capacity.
	*
	* @param      capacity  the initial capacity.
	* @exception  NegativeArraySizeException  if the <code>capacity</code>
	*               argument is less than <code>0</code>.
	*/
	@:overload public function new(capacity : Int) : Void;
	
	/**
	* Constructs a string buffer initialized to the contents of the
	* specified string. The initial capacity of the string buffer is
	* <code>16</code> plus the length of the string argument.
	*
	* @param   str   the initial contents of the buffer.
	* @exception NullPointerException if <code>str</code> is <code>null</code>
	*/
	@:overload public function new(str : String) : Void;
	
	/**
	* Constructs a string buffer that contains the same characters
	* as the specified <code>CharSequence</code>. The initial capacity of
	* the string buffer is <code>16</code> plus the length of the
	* <code>CharSequence</code> argument.
	* <p>
	* If the length of the specified <code>CharSequence</code> is
	* less than or equal to zero, then an empty buffer of capacity
	* <code>16</code> is returned.
	*
	* @param      seq   the sequence to copy.
	* @exception NullPointerException if <code>seq</code> is <code>null</code>
	* @since 1.5
	*/
	@:require(java5) @:overload public function new(seq : java.lang.CharSequence) : Void;
	
	@:overload @:synchronized override public function length() : Int;
	
	@:overload @:synchronized override public function capacity() : Int;
	
	@:overload @:synchronized override public function ensureCapacity(minimumCapacity : Int) : Void;
	
	/**
	* @since      1.5
	*/
	@:require(java5) @:overload @:synchronized override public function trimToSize() : Void;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @see        #length()
	*/
	@:overload @:synchronized override public function setLength(newLength : Int) : Void;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @see        #length()
	*/
	@:overload @:synchronized override public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* @since      1.5
	*/
	@:require(java5) @:overload @:synchronized override public function codePointAt(index : Int) : Int;
	
	/**
	* @since     1.5
	*/
	@:require(java5) @:overload @:synchronized override public function codePointBefore(index : Int) : Int;
	
	/**
	* @since     1.5
	*/
	@:require(java5) @:overload @:synchronized override public function codePointCount(beginIndex : Int, endIndex : Int) : Int;
	
	/**
	* @since     1.5
	*/
	@:require(java5) @:overload @:synchronized override public function offsetByCodePoints(index : Int, codePointOffset : Int) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function getChars(srcBegin : Int, srcEnd : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstBegin : Int) : Void;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @see        #length()
	*/
	@:overload @:synchronized override public function setCharAt(index : Int, ch : java.StdTypes.Char16) : Void;
	
	@:overload @:synchronized override public function append(obj : Dynamic) : StringBuffer;
	
	@:overload @:synchronized override public function append(str : String) : StringBuffer;
	
	/**
	* Appends the specified <tt>StringBuffer</tt> to this sequence.
	* <p>
	* The characters of the <tt>StringBuffer</tt> argument are appended,
	* in order, to the contents of this <tt>StringBuffer</tt>, increasing the
	* length of this <tt>StringBuffer</tt> by the length of the argument.
	* If <tt>sb</tt> is <tt>null</tt>, then the four characters
	* <tt>"null"</tt> are appended to this <tt>StringBuffer</tt>.
	* <p>
	* Let <i>n</i> be the length of the old character sequence, the one
	* contained in the <tt>StringBuffer</tt> just prior to execution of the
	* <tt>append</tt> method. Then the character at index <i>k</i> in
	* the new character sequence is equal to the character at index <i>k</i>
	* in the old character sequence, if <i>k</i> is less than <i>n</i>;
	* otherwise, it is equal to the character at index <i>k-n</i> in the
	* argument <code>sb</code>.
	* <p>
	* This method synchronizes on <code>this</code> (the destination)
	* object but does not synchronize on the source (<code>sb</code>).
	*
	* @param   sb   the <tt>StringBuffer</tt> to append.
	* @return  a reference to this object.
	* @since 1.4
	*/
	@:require(java4) @:overload @:synchronized override public function append(sb : StringBuffer) : StringBuffer;
	
	/**
	* Appends the specified <code>CharSequence</code> to this
	* sequence.
	* <p>
	* The characters of the <code>CharSequence</code> argument are appended,
	* in order, increasing the length of this sequence by the length of the
	* argument.
	*
	* <p>The result of this method is exactly the same as if it were an
	* invocation of this.append(s, 0, s.length());
	*
	* <p>This method synchronizes on this (the destination)
	* object but does not synchronize on the source (<code>s</code>).
	*
	* <p>If <code>s</code> is <code>null</code>, then the four characters
	* <code>"null"</code> are appended.
	*
	* @param   s the <code>CharSequence</code> to append.
	* @return  a reference to this object.
	* @since 1.5
	*/
	@:require(java5) @:overload override public function append(s : java.lang.CharSequence) : StringBuffer;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @since      1.5
	*/
	@:require(java5) @:overload @:synchronized override public function append(s : java.lang.CharSequence, start : Int, end : Int) : StringBuffer;
	
	@:overload @:synchronized override public function append(str : java.NativeArray<java.StdTypes.Char16>) : StringBuffer;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function append(str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : StringBuffer;
	
	@:overload @:synchronized override public function append(b : Bool) : StringBuffer;
	
	@:overload @:synchronized override public function append(c : java.StdTypes.Char16) : StringBuffer;
	
	@:overload @:synchronized override public function append(i : Int) : StringBuffer;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload @:synchronized override public function appendCodePoint(codePoint : Int) : StringBuffer;
	
	@:overload @:synchronized override public function append(lng : haxe.Int64) : StringBuffer;
	
	@:overload @:synchronized override public function append(f : Single) : StringBuffer;
	
	@:overload @:synchronized override public function append(d : Float) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function delete(start : Int, end : Int) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function deleteCharAt(index : Int) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function replace(start : Int, end : Int, str : String) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function substring(start : Int) : String;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @since      1.4
	*/
	@:require(java4) @:overload @:synchronized override public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function substring(start : Int, end : Int) : String;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	* @since      1.2
	*/
	@:require(java2) @:overload @:synchronized override public function insert(index : Int, str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function insert(offset : Int, obj : Dynamic) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function insert(offset : Int, str : String) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function insert(offset : Int, str : java.NativeArray<java.StdTypes.Char16>) : StringBuffer;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @since      1.5
	*/
	@:require(java5) @:overload override public function insert(dstOffset : Int, s : java.lang.CharSequence) : StringBuffer;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	* @since      1.5
	*/
	@:require(java5) @:overload @:synchronized override public function insert(dstOffset : Int, s : java.lang.CharSequence, start : Int, end : Int) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function insert(offset : Int, b : Bool) : StringBuffer;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload @:synchronized override public function insert(offset : Int, c : java.StdTypes.Char16) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function insert(offset : Int, i : Int) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function insert(offset : Int, l : haxe.Int64) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function insert(offset : Int, f : Single) : StringBuffer;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload override public function insert(offset : Int, d : Float) : StringBuffer;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since      1.4
	*/
	@:require(java4) @:overload override public function indexOf(str : String) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since      1.4
	*/
	@:require(java4) @:overload @:synchronized override public function indexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since      1.4
	*/
	@:require(java4) @:overload override public function lastIndexOf(str : String) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	* @since      1.4
	*/
	@:require(java4) @:overload @:synchronized override public function lastIndexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* @since   JDK1.0.2
	*/
	@:require(java0) @:overload @:synchronized override public function reverse() : StringBuffer;
	
	@:overload @:synchronized override public function toString() : String;
	
	
}
