package com.sun.xml.internal.bind.v2.runtime.output;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Pcdata implements java.lang.CharSequence
{
	/**
	* Writes itself to {@link UTF8XmlOutput}.
	*
	* <p>
	* This is the most performance critical path for the marshaller,
	* so it warrants its own method.
	*/
	@:overload @:public @:abstract public function writeTo(output : com.sun.xml.internal.bind.v2.runtime.output.UTF8XmlOutput) : Void;
	
	/**
	* Writes itself to the character array.
	*
	* <p>
	* This method is used by most other {@link XmlOutput}.
	* The default implementation involves in one extra char[] copying.
	*
	* <p>
	* The caller must provide a big enough buffer that can hold
	* enough characters returned by the {@link #length()} method.
	*/
	@:overload @:public public function writeTo(buf : java.NativeArray<java.StdTypes.Char16>, start : Int) : Void;
	
	@:overload @:public @:abstract public function toString() : String;
	
	/**
	* Returns the <code>char</code> value at the specified index.  An index ranges from zero
	* to <tt>length() - 1</tt>.  The first <code>char</code> value of the sequence is at
	* index zero, the next at index one, and so on, as for array
	* indexing. </p>
	*
	* <p>If the <code>char</code> value specified by the index is a
	* <a href="{@docRoot}/java/lang/Character.html#unicode">surrogate</a>, the surrogate
	* value is returned.
	*
	* @param   index   the index of the <code>char</code> value to be returned
	*
	* @return  the specified <code>char</code> value
	*
	* @throws  IndexOutOfBoundsException
	*          if the <tt>index</tt> argument is negative or not less than
	*          <tt>length()</tt>
	*/
	@:overload @:public public function charAt(index : Int) : java.StdTypes.Char16;
	
	/**
	* Returns a new <code>CharSequence</code> that is a subsequence of this sequence.
	* The subsequence starts with the <code>char</code> value at the specified index and
	* ends with the <code>char</code> value at index <tt>end - 1</tt>.  The length
	* (in <code>char</code>s) of the
	* returned sequence is <tt>end - start</tt>, so if <tt>start == end</tt>
	* then an empty sequence is returned. </p>
	*
	* @param   start   the start index, inclusive
	* @param   end     the end index, exclusive
	*
	* @return  the specified subsequence
	*
	* @throws  IndexOutOfBoundsException
	*          if <tt>start</tt> or <tt>end</tt> are negative,
	*          if <tt>end</tt> is greater than <tt>length()</tt>,
	*          or if <tt>start</tt> is greater than <tt>end</tt>
	*/
	@:overload @:public public function subSequence(start : Int, end : Int) : java.lang.CharSequence;
	
	/**
	* Returns the length of this character sequence.  The length is the number
	* of 16-bit <code>char</code>s in the sequence.</p>
	*
	* @return  the number of <code>char</code>s in this sequence
	*/
	@:overload @:public public function length() : Int;
	
	
}
