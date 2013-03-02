package java.lang;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
* A mutable sequence of characters.  This class provides an API compatible
* with <code>StringBuffer</code>, but with no guarantee of synchronization.
* This class is designed for use as a drop-in replacement for
* <code>StringBuffer</code> in places where the string buffer was being
* used by a single thread (as is generally the case).   Where possible,
* it is recommended that this class be used in preference to
* <code>StringBuffer</code> as it will be faster under most implementations.
*
* <p>The principal operations on a <code>StringBuilder</code> are the
* <code>append</code> and <code>insert</code> methods, which are
* overloaded so as to accept data of any type. Each effectively
* converts a given datum to a string and then appends or inserts the
* characters of that string to the string builder. The
* <code>append</code> method always adds these characters at the end
* of the builder; the <code>insert</code> method adds the characters at
* a specified point.
* <p>
* For example, if <code>z</code> refers to a string builder object
* whose current contents are "<code>start</code>", then
* the method call <code>z.append("le")</code> would cause the string
* builder to contain "<code>startle</code>", whereas
* <code>z.insert(4, "le")</code> would alter the string builder to
* contain "<code>starlet</code>".
* <p>
* In general, if sb refers to an instance of a <code>StringBuilder</code>,
* then <code>sb.append(x)</code> has the same effect as
* <code>sb.insert(sb.length(),&nbsp;x)</code>.
*
* Every string builder has a capacity. As long as the length of the
* character sequence contained in the string builder does not exceed
* the capacity, it is not necessary to allocate a new internal
* buffer. If the internal buffer overflows, it is automatically made larger.
*
* <p>Instances of <code>StringBuilder</code> are not safe for
* use by multiple threads. If such synchronization is required then it is
* recommended that {@link java.lang.StringBuffer} be used.
*
* @author      Michael McCloskey
* @see         java.lang.StringBuffer
* @see         java.lang.String
* @since       1.5
*/
@:require(java5) extern class StringBuilder extends java.lang.AbstractStringBuilder implements java.io.Serializable implements java.lang.CharSequence
{
	/**
	* Constructs a string builder with no characters in it and an
	* initial capacity of 16 characters.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a string builder with no characters in it and an
	* initial capacity specified by the <code>capacity</code> argument.
	*
	* @param      capacity  the initial capacity.
	* @throws     NegativeArraySizeException  if the <code>capacity</code>
	*               argument is less than <code>0</code>.
	*/
	@:overload public function new(capacity : Int) : Void;
	
	/**
	* Constructs a string builder initialized to the contents of the
	* specified string. The initial capacity of the string builder is
	* <code>16</code> plus the length of the string argument.
	*
	* @param   str   the initial contents of the buffer.
	* @throws    NullPointerException if <code>str</code> is <code>null</code>
	*/
	@:overload public function new(str : String) : Void;
	
	/**
	* Constructs a string builder that contains the same characters
	* as the specified <code>CharSequence</code>. The initial capacity of
	* the string builder is <code>16</code> plus the length of the
	* <code>CharSequence</code> argument.
	*
	* @param      seq   the sequence to copy.
	* @throws    NullPointerException if <code>seq</code> is <code>null</code>
	*/
	@:overload public function new(seq : java.lang.CharSequence) : Void;
	
	@:overload public function append(obj : Dynamic) : java.lang.StringBuilder;
	
	@:overload public function append(str : String) : java.lang.StringBuilder;
	
	/**
	* Appends the specified <tt>StringBuffer</tt> to this sequence.
	* <p>
	* The characters of the <tt>StringBuffer</tt> argument are appended,
	* in order, to this sequence, increasing the
	* length of this sequence by the length of the argument.
	* If <tt>sb</tt> is <tt>null</tt>, then the four characters
	* <tt>"null"</tt> are appended to this sequence.
	* <p>
	* Let <i>n</i> be the length of this character sequence just prior to
	* execution of the <tt>append</tt> method. Then the character at index
	* <i>k</i> in the new character sequence is equal to the character at
	* index <i>k</i> in the old character sequence, if <i>k</i> is less than
	* <i>n</i>; otherwise, it is equal to the character at index <i>k-n</i>
	* in the argument <code>sb</code>.
	*
	* @param   sb   the <tt>StringBuffer</tt> to append.
	* @return  a reference to this object.
	*/
	@:overload public function append(sb : java.lang.StringBuffer) : java.lang.StringBuilder;
	
	/**
	*/
	@:overload public function append(s : java.lang.CharSequence) : java.lang.StringBuilder;
	
	/**
	* @throws     IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function append(s : java.lang.CharSequence, start : Int, end : Int) : java.lang.StringBuilder;
	
	@:overload public function append(str : java.NativeArray<java.StdTypes.Char16>) : java.lang.StringBuilder;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function append(str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : java.lang.StringBuilder;
	
	@:overload public function append(b : Bool) : java.lang.StringBuilder;
	
	@:overload public function append(c : java.StdTypes.Char16) : java.lang.StringBuilder;
	
	@:overload public function append(i : Int) : java.lang.StringBuilder;
	
	@:overload public function append(lng : haxe.Int64) : java.lang.StringBuilder;
	
	@:overload public function append(f : Single) : java.lang.StringBuilder;
	
	@:overload public function append(d : Float) : java.lang.StringBuilder;
	
	/**
	* @since 1.5
	*/
	@:require(java5) @:overload public function appendCodePoint(codePoint : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function delete(start : Int, end : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function deleteCharAt(index : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function replace(start : Int, end : Int, str : String) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(index : Int, str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, obj : Dynamic) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, str : String) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, str : java.NativeArray<java.StdTypes.Char16>) : java.lang.StringBuilder;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(dstOffset : Int, s : java.lang.CharSequence) : java.lang.StringBuilder;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(dstOffset : Int, s : java.lang.CharSequence, start : Int, end : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, b : Bool) : java.lang.StringBuilder;
	
	/**
	* @throws IndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, c : java.StdTypes.Char16) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, i : Int) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, l : haxe.Int64) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, f : Single) : java.lang.StringBuilder;
	
	/**
	* @throws StringIndexOutOfBoundsException {@inheritDoc}
	*/
	@:overload public function insert(offset : Int, d : Float) : java.lang.StringBuilder;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function indexOf(str : String) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function indexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function lastIndexOf(str : String) : Int;
	
	/**
	* @throws NullPointerException {@inheritDoc}
	*/
	@:overload public function lastIndexOf(str : String, fromIndex : Int) : Int;
	
	@:overload public function reverse() : java.lang.StringBuilder;
	
	@:overload public function toString() : String;
	
	
}
