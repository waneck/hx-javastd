package java.lang;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractStringBuilder implements java.lang.Appendable implements java.lang.CharSequence
{
	/**
	* Returns the length (character count).
	*
	* @return  the length of the sequence of characters currently
	*          represented by this object
	*/
	@:overload @:public public function length() : Int;
	
	/**
	* Returns the current capacity. The capacity is the amount of storage
	* available for newly inserted characters, beyond which an allocation
	* will occur.
	*
	* @return  the current capacity
	*/
	@:overload @:public public function capacity() : Int;
	
	/**
	* Ensures that the capacity is at least equal to the specified minimum.
	* If the current capacity is less than the argument, then a new internal
	* array is allocated with greater capacity. The new capacity is the
	* larger of:
	* <ul>
	* <li>The <code>minimumCapacity</code> argument.
	* <li>Twice the old capacity, plus <code>2</code>.
	* </ul>
	* If the <code>minimumCapacity</code> argument is nonpositive, this
	* method takes no action and simply returns.
	*
	* @param   minimumCapacity   the minimum desired capacity.
	*/
	@:overload @:public public function ensureCapacity(minimumCapacity : Int) : Void;
	
	/**
	* Attempts to reduce storage used for the character sequence.
	* If the buffer is larger than necessary to hold its current sequence of
	* characters, then it may be resized to become more space efficient.
	* Calling this method may, but is not required to, affect the value
	* returned by a subsequent call to the {@link #capacity()} method.
	*/
	@:overload @:public public function trimToSize() : Void;
	
	/**
	* Sets the length of the character sequence.
	* The sequence is changed to a new character sequence
	* whose length is specified by the argument. For every nonnegative
	* index <i>k</i> less than <code>newLength</code>, the character at
	* index <i>k</i> in the new character sequence is the same as the
	* character at index <i>k</i> in the old sequence if <i>k</i> is less
	* than the length of the old character sequence; otherwise, it is the
	* null character <code>'&#92;u0000'</code>.
	*
	* In other words, if the <code>newLength</code> argument is less than
	* the current length, the length is changed to the specified length.
	* <p>
	* If the <code>newLength</code> argument is greater than or equal
	* to the current length, sufficient null characters
	* (<code>'&#92;u0000'</code>) are appended so that
	* length becomes the <code>newLength</code> argument.
	* <p>
	* The <code>newLength</code> argument must be greater than or equal
	* to <code>0</code>.
	*
	* @param      newLength   the new length
	* @throws     IndexOutOfBoundsException  if the
	*               <code>newLength</code> argument is negative.
	*/
	@:overload @:public public function setLength(newLength : Int) : Void;
	
	/**
	* Returns the <code>char</code> value in this sequence at the specified index.
	* The first <code>char</code> value is at index <code>0</code>, the next at index
	* <code>1</code>, and so on, as in array indexing.
	* <p>
	* The index argument must be greater than or equal to
	* <code>0</code>, and less than the length of this sequence.
	*
	* <p>If the <code>char</code> value specified by the index is a
	* <a href="Character.html#unicode">surrogate</a>, the surrogate
	* value is returned.
	*
	* @param      index   the index of the desired <code>char</code> value.
	* @return     the <code>char</code> value at the specified index.
	* @throws     IndexOutOfBoundsException  if <code>index</code> is
	*             negative or greater than or equal to <code>length()</code>.
	*/
	@:overload @:public public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Returns the character (Unicode code point) at the specified
	* index. The index refers to <code>char</code> values
	* (Unicode code units) and ranges from <code>0</code> to
	* {@link #length()}<code> - 1</code>.
	*
	* <p> If the <code>char</code> value specified at the given index
	* is in the high-surrogate range, the following index is less
	* than the length of this sequence, and the
	* <code>char</code> value at the following index is in the
	* low-surrogate range, then the supplementary code point
	* corresponding to this surrogate pair is returned. Otherwise,
	* the <code>char</code> value at the given index is returned.
	*
	* @param      index the index to the <code>char</code> values
	* @return     the code point value of the character at the
	*             <code>index</code>
	* @exception  IndexOutOfBoundsException  if the <code>index</code>
	*             argument is negative or not less than the length of this
	*             sequence.
	*/
	@:overload @:public public function codePointAt(index : Int) : Int;
	
	/**
	* Returns the character (Unicode code point) before the specified
	* index. The index refers to <code>char</code> values
	* (Unicode code units) and ranges from <code>1</code> to {@link
	* #length()}.
	*
	* <p> If the <code>char</code> value at <code>(index - 1)</code>
	* is in the low-surrogate range, <code>(index - 2)</code> is not
	* negative, and the <code>char</code> value at <code>(index -
	* 2)</code> is in the high-surrogate range, then the
	* supplementary code point value of the surrogate pair is
	* returned. If the <code>char</code> value at <code>index -
	* 1</code> is an unpaired low-surrogate or a high-surrogate, the
	* surrogate value is returned.
	*
	* @param     index the index following the code point that should be returned
	* @return    the Unicode code point value before the given index.
	* @exception IndexOutOfBoundsException if the <code>index</code>
	*            argument is less than 1 or greater than the length
	*            of this sequence.
	*/
	@:overload @:public public function codePointBefore(index : Int) : Int;
	
	/**
	* Returns the number of Unicode code points in the specified text
	* range of this sequence. The text range begins at the specified
	* <code>beginIndex</code> and extends to the <code>char</code> at
	* index <code>endIndex - 1</code>. Thus the length (in
	* <code>char</code>s) of the text range is
	* <code>endIndex-beginIndex</code>. Unpaired surrogates within
	* this sequence count as one code point each.
	*
	* @param beginIndex the index to the first <code>char</code> of
	* the text range.
	* @param endIndex the index after the last <code>char</code> of
	* the text range.
	* @return the number of Unicode code points in the specified text
	* range
	* @exception IndexOutOfBoundsException if the
	* <code>beginIndex</code> is negative, or <code>endIndex</code>
	* is larger than the length of this sequence, or
	* <code>beginIndex</code> is larger than <code>endIndex</code>.
	*/
	@:overload @:public public function codePointCount(beginIndex : Int, endIndex : Int) : Int;
	
	/**
	* Returns the index within this sequence that is offset from the
	* given <code>index</code> by <code>codePointOffset</code> code
	* points. Unpaired surrogates within the text range given by
	* <code>index</code> and <code>codePointOffset</code> count as
	* one code point each.
	*
	* @param index the index to be offset
	* @param codePointOffset the offset in code points
	* @return the index within this sequence
	* @exception IndexOutOfBoundsException if <code>index</code>
	*   is negative or larger then the length of this sequence,
	*   or if <code>codePointOffset</code> is positive and the subsequence
	*   starting with <code>index</code> has fewer than
	*   <code>codePointOffset</code> code points,
	*   or if <code>codePointOffset</code> is negative and the subsequence
	*   before <code>index</code> has fewer than the absolute value of
	*   <code>codePointOffset</code> code points.
	*/
	@:overload @:public public function offsetByCodePoints(index : Int, codePointOffset : Int) : Int;
	
	/**
	* Characters are copied from this sequence into the
	* destination character array <code>dst</code>. The first character to
	* be copied is at index <code>srcBegin</code>; the last character to
	* be copied is at index <code>srcEnd-1</code>. The total number of
	* characters to be copied is <code>srcEnd-srcBegin</code>. The
	* characters are copied into the subarray of <code>dst</code> starting
	* at index <code>dstBegin</code> and ending at index:
	* <p><blockquote><pre>
	* dstbegin + (srcEnd-srcBegin) - 1
	* </pre></blockquote>
	*
	* @param      srcBegin   start copying at this offset.
	* @param      srcEnd     stop copying at this offset.
	* @param      dst        the array to copy the data into.
	* @param      dstBegin   offset into <code>dst</code>.
	* @throws     NullPointerException if <code>dst</code> is
	*             <code>null</code>.
	* @throws     IndexOutOfBoundsException  if any of the following is true:
	*             <ul>
	*             <li><code>srcBegin</code> is negative
	*             <li><code>dstBegin</code> is negative
	*             <li>the <code>srcBegin</code> argument is greater than
	*             the <code>srcEnd</code> argument.
	*             <li><code>srcEnd</code> is greater than
	*             <code>this.length()</code>.
	*             <li><code>dstBegin+srcEnd-srcBegin</code> is greater than
	*             <code>dst.length</code>
	*             </ul>
	*/
	@:overload @:public public function getChars(srcBegin : Int, srcEnd : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstBegin : Int) : Void;
	
	/**
	* The character at the specified index is set to <code>ch</code>. This
	* sequence is altered to represent a new character sequence that is
	* identical to the old character sequence, except that it contains the
	* character <code>ch</code> at position <code>index</code>.
	* <p>
	* The index argument must be greater than or equal to
	* <code>0</code>, and less than the length of this sequence.
	*
	* @param      index   the index of the character to modify.
	* @param      ch      the new character.
	* @throws     IndexOutOfBoundsException  if <code>index</code> is
	*             negative or greater than or equal to <code>length()</code>.
	*/
	@:overload @:public public function setCharAt(index : Int, ch : java.StdTypes.Char16) : Void;
	
	/**
	* Appends the string representation of the {@code Object} argument.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(Object)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   obj   an {@code Object}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(obj : Dynamic) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the specified string to this character sequence.
	* <p>
	* The characters of the {@code String} argument are appended, in
	* order, increasing the length of this sequence by the length of the
	* argument. If {@code str} is {@code null}, then the four
	* characters {@code "null"} are appended.
	* <p>
	* Let <i>n</i> be the length of this character sequence just prior to
	* execution of the {@code append} method. Then the character at
	* index <i>k</i> in the new character sequence is equal to the character
	* at index <i>k</i> in the old character sequence, if <i>k</i> is less
	* than <i>n</i>; otherwise, it is equal to the character at index
	* <i>k-n</i> in the argument {@code str}.
	*
	* @param   str   a string.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(str : String) : java.lang.AbstractStringBuilder;
	
	@:overload @:public public function append(sb : java.lang.StringBuffer) : java.lang.AbstractStringBuilder;
	
	@:overload @:public public function append(s : java.lang.CharSequence) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends a subsequence of the specified {@code CharSequence} to this
	* sequence.
	* <p>
	* Characters of the argument {@code s}, starting at
	* index {@code start}, are appended, in order, to the contents of
	* this sequence up to the (exclusive) index {@code end}. The length
	* of this sequence is increased by the value of {@code end - start}.
	* <p>
	* Let <i>n</i> be the length of this character sequence just prior to
	* execution of the {@code append} method. Then the character at
	* index <i>k</i> in this character sequence becomes equal to the
	* character at index <i>k</i> in this sequence, if <i>k</i> is less than
	* <i>n</i>; otherwise, it is equal to the character at index
	* <i>k+start-n</i> in the argument {@code s}.
	* <p>
	* If {@code s} is {@code null}, then this method appends
	* characters as if the s parameter was a sequence containing the four
	* characters {@code "null"}.
	*
	* @param   s the sequence to append.
	* @param   start   the starting index of the subsequence to be appended.
	* @param   end     the end index of the subsequence to be appended.
	* @return  a reference to this object.
	* @throws     IndexOutOfBoundsException if
	*             {@code start} is negative, or
	*             {@code start} is greater than {@code end} or
	*             {@code end} is greater than {@code s.length()}
	*/
	@:overload @:public public function append(s : java.lang.CharSequence, start : Int, end : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code char} array
	* argument to this sequence.
	* <p>
	* The characters of the array argument are appended, in order, to
	* the contents of this sequence. The length of this sequence
	* increases by the length of the argument.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(char[])},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   str   the characters to be appended.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(str : java.NativeArray<java.StdTypes.Char16>) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of a subarray of the
	* {@code char} array argument to this sequence.
	* <p>
	* Characters of the {@code char} array {@code str}, starting at
	* index {@code offset}, are appended, in order, to the contents
	* of this sequence. The length of this sequence increases
	* by the value of {@code len}.
	* <p>
	* The overall effect is exactly as if the arguments were converted
	* to a string by the method {@link String#valueOf(char[],int,int)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   str      the characters to be appended.
	* @param   offset   the index of the first {@code char} to append.
	* @param   len      the number of {@code char}s to append.
	* @return  a reference to this object.
	* @throws IndexOutOfBoundsException
	*         if {@code offset < 0} or {@code len < 0}
	*         or {@code offset+len > str.length}
	*/
	@:overload @:public public function append(str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code boolean}
	* argument to the sequence.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(boolean)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   b   a {@code boolean}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(b : Bool) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code char}
	* argument to this sequence.
	* <p>
	* The argument is appended to the contents of this sequence.
	* The length of this sequence increases by {@code 1}.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(char)},
	* and the character in that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   c   a {@code char}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(c : java.StdTypes.Char16) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code int}
	* argument to this sequence.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(int)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   i   an {@code int}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(i : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code long}
	* argument to this sequence.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(long)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   l   a {@code long}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(l : haxe.Int64) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code float}
	* argument to this sequence.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(float)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   f   a {@code float}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(f : Single) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code double}
	* argument to this sequence.
	* <p>
	* The overall effect is exactly as if the argument were converted
	* to a string by the method {@link String#valueOf(double)},
	* and the characters of that string were then
	* {@link #append(String) appended} to this character sequence.
	*
	* @param   d   a {@code double}.
	* @return  a reference to this object.
	*/
	@:overload @:public public function append(d : Float) : java.lang.AbstractStringBuilder;
	
	/**
	* Removes the characters in a substring of this sequence.
	* The substring begins at the specified {@code start} and extends to
	* the character at index {@code end - 1} or to the end of the
	* sequence if no such character exists. If
	* {@code start} is equal to {@code end}, no changes are made.
	*
	* @param      start  The beginning index, inclusive.
	* @param      end    The ending index, exclusive.
	* @return     This object.
	* @throws     StringIndexOutOfBoundsException  if {@code start}
	*             is negative, greater than {@code length()}, or
	*             greater than {@code end}.
	*/
	@:overload @:public public function delete(start : Int, end : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Appends the string representation of the {@code codePoint}
	* argument to this sequence.
	*
	* <p> The argument is appended to the contents of this sequence.
	* The length of this sequence increases by
	* {@link Character#charCount(int) Character.charCount(codePoint)}.
	*
	* <p> The overall effect is exactly as if the argument were
	* converted to a {@code char} array by the method
	* {@link Character#toChars(int)} and the character in that array
	* were then {@link #append(char[]) appended} to this character
	* sequence.
	*
	* @param   codePoint   a Unicode code point
	* @return  a reference to this object.
	* @exception IllegalArgumentException if the specified
	* {@code codePoint} isn't a valid Unicode code point
	*/
	@:overload @:public public function appendCodePoint(codePoint : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Removes the <code>char</code> at the specified position in this
	* sequence. This sequence is shortened by one <code>char</code>.
	*
	* <p>Note: If the character at the given index is a supplementary
	* character, this method does not remove the entire character. If
	* correct handling of supplementary characters is required,
	* determine the number of <code>char</code>s to remove by calling
	* <code>Character.charCount(thisSequence.codePointAt(index))</code>,
	* where <code>thisSequence</code> is this sequence.
	*
	* @param       index  Index of <code>char</code> to remove
	* @return      This object.
	* @throws      StringIndexOutOfBoundsException  if the <code>index</code>
	*              is negative or greater than or equal to
	*              <code>length()</code>.
	*/
	@:overload @:public public function deleteCharAt(index : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Replaces the characters in a substring of this sequence
	* with characters in the specified <code>String</code>. The substring
	* begins at the specified <code>start</code> and extends to the character
	* at index <code>end - 1</code> or to the end of the
	* sequence if no such character exists. First the
	* characters in the substring are removed and then the specified
	* <code>String</code> is inserted at <code>start</code>. (This
	* sequence will be lengthened to accommodate the
	* specified String if necessary.)
	*
	* @param      start    The beginning index, inclusive.
	* @param      end      The ending index, exclusive.
	* @param      str   String that will replace previous contents.
	* @return     This object.
	* @throws     StringIndexOutOfBoundsException  if <code>start</code>
	*             is negative, greater than <code>length()</code>, or
	*             greater than <code>end</code>.
	*/
	@:overload @:public public function replace(start : Int, end : Int, str : String) : java.lang.AbstractStringBuilder;
	
	/**
	* Returns a new <code>String</code> that contains a subsequence of
	* characters currently contained in this character sequence. The
	* substring begins at the specified index and extends to the end of
	* this sequence.
	*
	* @param      start    The beginning index, inclusive.
	* @return     The new string.
	* @throws     StringIndexOutOfBoundsException  if <code>start</code> is
	*             less than zero, or greater than the length of this object.
	*/
	@:overload @:public public function substring(start : Int) : String;
	
	/**
	* Returns a new character sequence that is a subsequence of this sequence.
	*
	* <p> An invocation of this method of the form
	*
	* <blockquote><pre>
	* sb.subSequence(begin,&nbsp;end)</pre></blockquote>
	*
	* behaves in exactly the same way as the invocation
	*
	* <blockquote><pre>
	* sb.substring(begin,&nbsp;end)</pre></blockquote>
	*
	* This method is provided so that this class can
	* implement the {@link CharSequence} interface. </p>
	*
	* @param      start   the start index, inclusive.
	* @param      end     the end index, exclusive.
	* @return     the specified subsequence.
	*
	* @throws  IndexOutOfBoundsException
	*          if <tt>start</tt> or <tt>end</tt> are negative,
	*          if <tt>end</tt> is greater than <tt>length()</tt>,
	*          or if <tt>start</tt> is greater than <tt>end</tt>
	* @spec JSR-51
	*/
	@:overload @:public public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* Returns a new <code>String</code> that contains a subsequence of
	* characters currently contained in this sequence. The
	* substring begins at the specified <code>start</code> and
	* extends to the character at index <code>end - 1</code>.
	*
	* @param      start    The beginning index, inclusive.
	* @param      end      The ending index, exclusive.
	* @return     The new string.
	* @throws     StringIndexOutOfBoundsException  if <code>start</code>
	*             or <code>end</code> are negative or greater than
	*             <code>length()</code>, or <code>start</code> is
	*             greater than <code>end</code>.
	*/
	@:overload @:public public function substring(start : Int, end : Int) : String;
	
	/**
	* Inserts the string representation of a subarray of the {@code str}
	* array argument into this sequence. The subarray begins at the
	* specified {@code offset} and extends {@code len} {@code char}s.
	* The characters of the subarray are inserted into this sequence at
	* the position indicated by {@code index}. The length of this
	* sequence increases by {@code len} {@code char}s.
	*
	* @param      index    position at which to insert subarray.
	* @param      str       A {@code char} array.
	* @param      offset   the index of the first {@code char} in subarray to
	*             be inserted.
	* @param      len      the number of {@code char}s in the subarray to
	*             be inserted.
	* @return     This object
	* @throws     StringIndexOutOfBoundsException  if {@code index}
	*             is negative or greater than {@code length()}, or
	*             {@code offset} or {@code len} are negative, or
	*             {@code (offset+len)} is greater than
	*             {@code str.length}.
	*/
	@:overload @:public public function insert(index : Int, str : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code Object}
	* argument into this character sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(Object)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      obj      an {@code Object}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, obj : Dynamic) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string into this character sequence.
	* <p>
	* The characters of the {@code String} argument are inserted, in
	* order, into this sequence at the indicated offset, moving up any
	* characters originally above that position and increasing the length
	* of this sequence by the length of the argument. If
	* {@code str} is {@code null}, then the four characters
	* {@code "null"} are inserted into this sequence.
	* <p>
	* The character at index <i>k</i> in the new character sequence is
	* equal to:
	* <ul>
	* <li>the character at index <i>k</i> in the old character sequence, if
	* <i>k</i> is less than {@code offset}
	* <li>the character at index <i>k</i>{@code -offset} in the
	* argument {@code str}, if <i>k</i> is not less than
	* {@code offset} but is less than {@code offset+str.length()}
	* <li>the character at index <i>k</i>{@code -str.length()} in the
	* old character sequence, if <i>k</i> is not less than
	* {@code offset+str.length()}
	* </ul><p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      str      a string.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, str : String) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code char} array
	* argument into this sequence.
	* <p>
	* The characters of the array argument are inserted into the
	* contents of this sequence at the position indicated by
	* {@code offset}. The length of this sequence increases by
	* the length of the argument.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(char[])},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      str      a character array.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, str : java.NativeArray<java.StdTypes.Char16>) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the specified {@code CharSequence} into this sequence.
	* <p>
	* The characters of the {@code CharSequence} argument are inserted,
	* in order, into this sequence at the indicated offset, moving up
	* any characters originally above that position and increasing the length
	* of this sequence by the length of the argument s.
	* <p>
	* The result of this method is exactly the same as if it were an
	* invocation of this object's
	* {@link #insert(int,CharSequence,int,int) insert}(dstOffset, s, 0, s.length())
	* method.
	*
	* <p>If {@code s} is {@code null}, then the four characters
	* {@code "null"} are inserted into this sequence.
	*
	* @param      dstOffset   the offset.
	* @param      s the sequence to be inserted
	* @return     a reference to this object.
	* @throws     IndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(dstOffset : Int, s : java.lang.CharSequence) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts a subsequence of the specified {@code CharSequence} into
	* this sequence.
	* <p>
	* The subsequence of the argument {@code s} specified by
	* {@code start} and {@code end} are inserted,
	* in order, into this sequence at the specified destination offset, moving
	* up any characters originally above that position. The length of this
	* sequence is increased by {@code end - start}.
	* <p>
	* The character at index <i>k</i> in this sequence becomes equal to:
	* <ul>
	* <li>the character at index <i>k</i> in this sequence, if
	* <i>k</i> is less than {@code dstOffset}
	* <li>the character at index <i>k</i>{@code +start-dstOffset} in
	* the argument {@code s}, if <i>k</i> is greater than or equal to
	* {@code dstOffset} but is less than {@code dstOffset+end-start}
	* <li>the character at index <i>k</i>{@code -(end-start)} in this
	* sequence, if <i>k</i> is greater than or equal to
	* {@code dstOffset+end-start}
	* </ul><p>
	* The {@code dstOffset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	* <p>The start argument must be nonnegative, and not greater than
	* {@code end}.
	* <p>The end argument must be greater than or equal to
	* {@code start}, and less than or equal to the length of s.
	*
	* <p>If {@code s} is {@code null}, then this method inserts
	* characters as if the s parameter was a sequence containing the four
	* characters {@code "null"}.
	*
	* @param      dstOffset   the offset in this sequence.
	* @param      s       the sequence to be inserted.
	* @param      start   the starting index of the subsequence to be inserted.
	* @param      end     the end index of the subsequence to be inserted.
	* @return     a reference to this object.
	* @throws     IndexOutOfBoundsException  if {@code dstOffset}
	*             is negative or greater than {@code this.length()}, or
	*              {@code start} or {@code end} are negative, or
	*              {@code start} is greater than {@code end} or
	*              {@code end} is greater than {@code s.length()}
	*/
	@:overload @:public public function insert(dstOffset : Int, s : java.lang.CharSequence, start : Int, end : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code boolean}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(boolean)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      b        a {@code boolean}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, b : Bool) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code char}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(char)},
	* and the character in that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      c        a {@code char}.
	* @return     a reference to this object.
	* @throws     IndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, c : java.StdTypes.Char16) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the second {@code int}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(int)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      i        an {@code int}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, i : Int) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code long}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(long)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      l        a {@code long}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, l : haxe.Int64) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code float}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(float)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      f        a {@code float}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, f : Single) : java.lang.AbstractStringBuilder;
	
	/**
	* Inserts the string representation of the {@code double}
	* argument into this sequence.
	* <p>
	* The overall effect is exactly as if the second argument were
	* converted to a string by the method {@link String#valueOf(double)},
	* and the characters of that string were then
	* {@link #insert(int,String) inserted} into this character
	* sequence at the indicated offset.
	* <p>
	* The {@code offset} argument must be greater than or equal to
	* {@code 0}, and less than or equal to the {@linkplain #length() length}
	* of this sequence.
	*
	* @param      offset   the offset.
	* @param      d        a {@code double}.
	* @return     a reference to this object.
	* @throws     StringIndexOutOfBoundsException  if the offset is invalid.
	*/
	@:overload @:public public function insert(offset : Int, d : Float) : java.lang.AbstractStringBuilder;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified substring. The integer returned is the smallest value
	* <i>k</i> such that:
	* <blockquote><pre>
	* this.toString().startsWith(str, <i>k</i>)
	* </pre></blockquote>
	* is <code>true</code>.
	*
	* @param   str   any string.
	* @return  if the string argument occurs as a substring within this
	*          object, then the index of the first character of the first
	*          such substring is returned; if it does not occur as a
	*          substring, <code>-1</code> is returned.
	* @throws  java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload @:public public function indexOf(str : String) : Int;
	
	/**
	* Returns the index within this string of the first occurrence of the
	* specified substring, starting at the specified index.  The integer
	* returned is the smallest value <tt>k</tt> for which:
	* <blockquote><pre>
	*     k >= Math.min(fromIndex, str.length()) &&
	*                   this.toString().startsWith(str, k)
	* </pre></blockquote>
	* If no such value of <i>k</i> exists, then -1 is returned.
	*
	* @param   str         the substring for which to search.
	* @param   fromIndex   the index from which to start the search.
	* @return  the index within this string of the first occurrence of the
	*          specified substring, starting at the specified index.
	* @throws  java.lang.NullPointerException if <code>str</code> is
	*            <code>null</code>.
	*/
	@:overload @:public public function indexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* Returns the index within this string of the rightmost occurrence
	* of the specified substring.  The rightmost empty string "" is
	* considered to occur at the index value <code>this.length()</code>.
	* The returned index is the largest value <i>k</i> such that
	* <blockquote><pre>
	* this.toString().startsWith(str, k)
	* </pre></blockquote>
	* is true.
	*
	* @param   str   the substring to search for.
	* @return  if the string argument occurs one or more times as a substring
	*          within this object, then the index of the first character of
	*          the last such substring is returned. If it does not occur as
	*          a substring, <code>-1</code> is returned.
	* @throws  java.lang.NullPointerException  if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload @:public public function lastIndexOf(str : String) : Int;
	
	/**
	* Returns the index within this string of the last occurrence of the
	* specified substring. The integer returned is the largest value <i>k</i>
	* such that:
	* <blockquote><pre>
	*     k <= Math.min(fromIndex, str.length()) &&
	*                   this.toString().startsWith(str, k)
	* </pre></blockquote>
	* If no such value of <i>k</i> exists, then -1 is returned.
	*
	* @param   str         the substring to search for.
	* @param   fromIndex   the index to start the search from.
	* @return  the index within this sequence of the last occurrence of the
	*          specified substring.
	* @throws  java.lang.NullPointerException if <code>str</code> is
	*          <code>null</code>.
	*/
	@:overload @:public public function lastIndexOf(str : String, fromIndex : Int) : Int;
	
	/**
	* Causes this character sequence to be replaced by the reverse of
	* the sequence. If there are any surrogate pairs included in the
	* sequence, these are treated as single characters for the
	* reverse operation. Thus, the order of the high-low surrogates
	* is never reversed.
	*
	* Let <i>n</i> be the character length of this character sequence
	* (not the length in <code>char</code> values) just prior to
	* execution of the <code>reverse</code> method. Then the
	* character at index <i>k</i> in the new character sequence is
	* equal to the character at index <i>n-k-1</i> in the old
	* character sequence.
	*
	* <p>Note that the reverse operation may result in producing
	* surrogate pairs that were unpaired low-surrogates and
	* high-surrogates before the operation. For example, reversing
	* "&#92;uDC00&#92;uD800" produces "&#92;uD800&#92;uDC00" which is
	* a valid surrogate pair.
	*
	* @return  a reference to this object.
	*/
	@:overload @:public public function reverse() : java.lang.AbstractStringBuilder;
	
	/**
	* Returns a string representing the data in this sequence.
	* A new <code>String</code> object is allocated and initialized to
	* contain the character sequence currently represented by this
	* object. This <code>String</code> is then returned. Subsequent
	* changes to this sequence do not affect the contents of the
	* <code>String</code>.
	*
	* @return  a string representation of this sequence of characters.
	*/
	@:overload @:public @:abstract public function toString() : String;
	
	
}
