package com.sun.xml.internal.org.jvnet.staxex;
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
/**
* @author Kohsuke Kawaguchi
*/
@:internal extern class Base64Encoder
{
	@:overload @:public @:static public static function encode(i : Int) : java.StdTypes.Char16;
	
	@:overload @:public @:static public static function encodeByte(i : Int) : java.StdTypes.Int8;
	
	@:overload @:public @:static public static function print(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : String;
	
	/**
	* Encodes a byte array into a char array by doing base64 encoding.
	*
	* The caller must supply a big enough buffer.
	*
	* @return
	*      the value of {@code ptr+((len+2)/3)*4}, which is the new offset
	*      in the output buffer where the further bytes should be placed.
	*/
	@:overload @:public @:static public static function print(input : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int, buf : java.NativeArray<java.StdTypes.Char16>, ptr : Int) : Int;
	
	
}
