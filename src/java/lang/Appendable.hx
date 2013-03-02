package java.lang;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface Appendable
{
	/**
	* Appends the specified character sequence to this <tt>Appendable</tt>.
	*
	* <p> Depending on which class implements the character sequence
	* <tt>csq</tt>, the entire sequence may not be appended.  For
	* instance, if <tt>csq</tt> is a {@link java.nio.CharBuffer} then
	* the subsequence to append is defined by the buffer's position and limit.
	*
	* @param  csq
	*         The character sequence to append.  If <tt>csq</tt> is
	*         <tt>null</tt>, then the four characters <tt>"null"</tt> are
	*         appended to this Appendable.
	*
	* @return  A reference to this <tt>Appendable</tt>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public function append(csq : java.lang.CharSequence) : java.lang.Appendable;
	
	/**
	* Appends a subsequence of the specified character sequence to this
	* <tt>Appendable</tt>.
	*
	* <p> An invocation of this method of the form <tt>out.append(csq, start,
	* end)</tt> when <tt>csq</tt> is not <tt>null</tt>, behaves in
	* exactly the same way as the invocation
	*
	* <pre>
	*     out.append(csq.subSequence(start, end)) </pre>
	*
	* @param  csq
	*         The character sequence from which a subsequence will be
	*         appended.  If <tt>csq</tt> is <tt>null</tt>, then characters
	*         will be appended as if <tt>csq</tt> contained the four
	*         characters <tt>"null"</tt>.
	*
	* @param  start
	*         The index of the first character in the subsequence
	*
	* @param  end
	*         The index of the character following the last character in the
	*         subsequence
	*
	* @return  A reference to this <tt>Appendable</tt>
	*
	* @throws  IndexOutOfBoundsException
	*          If <tt>start</tt> or <tt>end</tt> are negative, <tt>start</tt>
	*          is greater than <tt>end</tt>, or <tt>end</tt> is greater than
	*          <tt>csq.length()</tt>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public function append(csq : java.lang.CharSequence, start : Int, end : Int) : java.lang.Appendable;
	
	/**
	* Appends the specified character to this <tt>Appendable</tt>.
	*
	* @param  c
	*         The character to append
	*
	* @return  A reference to this <tt>Appendable</tt>
	*
	* @throws  IOException
	*          If an I/O error occurs
	*/
	@:overload public function append(c : java.StdTypes.Char16) : java.lang.Appendable;
	
	
}
