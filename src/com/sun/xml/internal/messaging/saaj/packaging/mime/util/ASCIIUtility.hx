package com.sun.xml.internal.messaging.saaj.packaging.mime.util;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
* @(#)ASCIIUtility.java      1.9 02/03/27
*/
extern class ASCIIUtility
{
	/**
	* Convert the bytes within the specified range of the given byte
	* array into a signed integer in the given radix . The range extends
	* from <code>start</code> till, but not including <code>end</code>. <p>
	*
	* Based on java.lang.Integer.parseInt()
	*/
	@:overload @:public @:static public static function parseInt(b : java.NativeArray<java.StdTypes.Int8>, start : Int, end : Int, radix : Int) : Int;
	
	/**
	* Convert the bytes within the specified range of the given byte
	* array into a String. The range extends from <code>start</code>
	* till, but not including <code>end</code>. <p>
	*/
	@:overload @:public @:static public static function toString(b : java.NativeArray<java.StdTypes.Int8>, start : Int, end : Int) : String;
	
	@:overload @:public @:static public static function getBytes(s : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	*
	* @deprecated
	*      this is an expensive operation that require an additional
	*      buffer reallocation just to get the array of an exact size.
	*      Unless you absolutely need the exact size array, don't use this.
	*      Use {@link ByteOutputStream} and {@link ByteOutputStream#write(InputStream)}.
	*/
	@:overload @:public @:static public static function getBytes(is : java.io.InputStream) : java.NativeArray<java.StdTypes.Int8>;
	
	
}
