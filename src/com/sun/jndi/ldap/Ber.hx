package com.sun.jndi.ldap;
/*
* Copyright (c) 1999, Oracle and/or its affiliates. All rights reserved.
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
extern class Ber
{
	/**
	* Base class that defines common fields, constants, and debug method.
	*
	* @author Jagane Sundar
	*/
	private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	private var offset : Int;
	
	private var bufsize : Int;
	
	@:overload private function new() : Void;
	
	@:overload public static function dumpBER(outStream : java.io.OutputStream, tag : String, bytes : java.NativeArray<java.StdTypes.Int8>, from : Int, to : Int) : Void;
	
	public static var ASN_BOOLEAN(default, null) : Int;
	
	public static var ASN_INTEGER(default, null) : Int;
	
	public static var ASN_BIT_STRING(default, null) : Int;
	
	public static var ASN_SIMPLE_STRING(default, null) : Int;
	
	public static var ASN_OCTET_STR(default, null) : Int;
	
	public static var ASN_NULL(default, null) : Int;
	
	public static var ASN_OBJECT_ID(default, null) : Int;
	
	public static var ASN_SEQUENCE(default, null) : Int;
	
	public static var ASN_SET(default, null) : Int;
	
	public static var ASN_PRIMITIVE(default, null) : Int;
	
	public static var ASN_UNIVERSAL(default, null) : Int;
	
	public static var ASN_CONSTRUCTOR(default, null) : Int;
	
	public static var ASN_APPLICATION(default, null) : Int;
	
	public static var ASN_CONTEXT(default, null) : Int;
	
	public static var ASN_PRIVATE(default, null) : Int;
	
	public static var ASN_ENUMERATED(default, null) : Int;
	
	
}
@:native('com$sun$jndi$ldap$Ber$EncodeException') @:internal extern class Ber_EncodeException extends java.io.IOException
{
	
}
@:native('com$sun$jndi$ldap$Ber$DecodeException') @:internal extern class Ber_DecodeException extends java.io.IOException
{
	
}
