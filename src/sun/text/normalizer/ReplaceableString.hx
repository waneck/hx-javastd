package sun.text.normalizer;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/*
*******************************************************************************
* (C) Copyright IBM Corp. 1996-2005 - All Rights Reserved                     *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
/**
* <code>ReplaceableString</code> is an adapter class that implements the
* <code>Replaceable</code> API around an ordinary <code>StringBuffer</code>.
*
* <p><em>Note:</em> This class does not support attributes and is not
* intended for general use.  Most clients will need to implement
* {@link Replaceable} in their text representation class.
*
* <p>Copyright &copy; IBM Corporation 1999.  All rights reserved.
*
* @see Replaceable
* @author Alan Liu
* @stable ICU 2.0
*/
extern class ReplaceableString implements sun.text.normalizer.Replaceable
{
	/**
	* Construct a new object with the given initial contents.
	* @param str initial contents
	* @stable ICU 2.0
	*/
	@:overload public function new(str : String) : Void;
	
	/**
	* Construct a new object using <code>buf</code> for internal
	* storage.  The contents of <code>buf</code> at the time of
	* construction are used as the initial contents.  <em>Note!
	* Modifications to <code>buf</code> will modify this object, and
	* vice versa.</em>
	* @param buf object to be used as internal storage
	* @stable ICU 2.0
	*/
	@:overload public function new(buf : java.lang.StringBuffer) : Void;
	
	/**
	* Return the number of characters contained in this object.
	* <code>Replaceable</code> API.
	* @stable ICU 2.0
	*/
	@:overload public function length() : Int;
	
	/**
	* Return the character at the given position in this object.
	* <code>Replaceable</code> API.
	* @param offset offset into the contents, from 0 to
	* <code>length()</code> - 1
	* @stable ICU 2.0
	*/
	@:overload public function charAt(offset : Int) : java.StdTypes.Char16;
	
	/**
	* Copies characters from this object into the destination
	* character array.  The first character to be copied is at index
	* <code>srcStart</code>; the last character to be copied is at
	* index <code>srcLimit-1</code> (thus the total number of
	* characters to be copied is <code>srcLimit-srcStart</code>). The
	* characters are copied into the subarray of <code>dst</code>
	* starting at index <code>dstStart</code> and ending at index
	* <code>dstStart + (srcLimit-srcStart) - 1</code>.
	*
	* @param srcStart the beginning index to copy, inclusive; <code>0
	* <= start <= limit</code>.
	* @param srcLimit the ending index to copy, exclusive;
	* <code>start <= limit <= length()</code>.
	* @param dst the destination array.
	* @param dstStart the start offset in the destination array.
	* @stable ICU 2.0
	*/
	@:overload public function getChars(srcStart : Int, srcLimit : Int, dst : java.NativeArray<java.StdTypes.Char16>, dstStart : Int) : Void;
	
	
}