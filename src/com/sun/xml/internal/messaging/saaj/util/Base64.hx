package com.sun.xml.internal.messaging.saaj.util;
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
//// Cut & paste from tomcat
/**
* This class provides encode/decode for RFC 2045 Base64 as
* defined by RFC 2045, N. Freed and N. Borenstein.
* RFC 2045: Multipurpose Internet Mail Extensions (MIME)
* Part One: Format of Internet Message Bodies. Reference
* 1996 Available at: http://www.ietf.org/rfc/rfc2045.txt
* This class is used by XML Schema binary format validation
*
* @author Jeffrey Rodriguez
* @version
*/
extern class Base64
{
	/**
	* Encodes hex octects into Base64
	*
	* @param binaryData Array containing binaryData
	* @return Encoded Base64 array
	*/
	@:overload public static function encode(binaryData : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Decodes Base64 data into octects
	*
	* @param binaryData Byte array containing Base64 data
	* @return Array containind decoded data.
	*/
	@:overload public function decode(base64Data : java.NativeArray<java.StdTypes.Int8>) : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public static function base64Decode(orig : String) : String;
	
	
}
