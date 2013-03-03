package java.nio.charset;
/*
* Copyright (c) 2011, Oracle and/or its affiliates. All rights reserved.
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
* Constant definitions for the standard {@link Charset Charsets}. These
* charsets are guaranteed to be available on every implementation of the Java
* platform.
*
* @see <a href="Charset#standard">Standard Charsets</a>
* @since 1.7
*/
@:require(java7) extern class StandardCharsets
{
	/**
	* Seven-bit ASCII, a.k.a. ISO646-US, a.k.a. the Basic Latin block of the
	* Unicode character set
	*/
	@:public @:static @:final public static var US_ASCII(default, null) : java.nio.charset.Charset;
	
	/**
	* ISO Latin Alphabet No. 1, a.k.a. ISO-LATIN-1
	*/
	@:public @:static @:final public static var ISO_8859_1(default, null) : java.nio.charset.Charset;
	
	/**
	* Eight-bit UCS Transformation Format
	*/
	@:public @:static @:final public static var UTF_8(default, null) : java.nio.charset.Charset;
	
	/**
	* Sixteen-bit UCS Transformation Format, big-endian byte order
	*/
	@:public @:static @:final public static var UTF_16BE(default, null) : java.nio.charset.Charset;
	
	/**
	* Sixteen-bit UCS Transformation Format, little-endian byte order
	*/
	@:public @:static @:final public static var UTF_16LE(default, null) : java.nio.charset.Charset;
	
	/**
	* Sixteen-bit UCS Transformation Format, byte order identified by an
	* optional byte-order mark
	*/
	@:public @:static @:final public static var UTF_16(default, null) : java.nio.charset.Charset;
	
	
}
