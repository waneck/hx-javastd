package sun.security.util;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class ByteArrayLexOrder implements java.util.Comparator<java.NativeArray<java.StdTypes.Int8>>
{
	/**
	* Perform lexicographical comparison of two byte arrays,
	* regarding each byte as unsigned.  That is, compare array entries
	* in order until they differ--the array with the smaller entry
	* is "smaller". If array entries are
	* equal till one array ends, then the longer array is "bigger".
	*
	* @param  bytes1 first byte array to compare.
	* @param  bytes2 second byte array to compare.
	* @return negative number if bytes1 < bytes2, 0 if bytes1 == bytes2,
	* positive number if bytes1 > bytes2.
	*
	* @exception <code>ClassCastException</code>
	* if either argument is not a byte array.
	*/
	@:overload @:final public function compare(bytes1 : java.NativeArray<java.StdTypes.Int8>, bytes2 : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	
}
