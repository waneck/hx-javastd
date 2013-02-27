package sun.nio.cs;
/*
* Copyright (c) 2001, 2005, Oracle and/or its affiliates. All rights reserved.
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
*/
extern class StreamEncoder extends java.io.Writer
{
	@:overload public static function forOutputStreamWriter(out : java.io.OutputStream, lock : Dynamic, charsetName : String) : StreamEncoder;
	
	@:overload public static function forOutputStreamWriter(out : java.io.OutputStream, lock : Dynamic, cs : java.nio.charset.Charset) : StreamEncoder;
	
	@:overload public static function forOutputStreamWriter(out : java.io.OutputStream, lock : Dynamic, enc : java.nio.charset.CharsetEncoder) : StreamEncoder;
	
	@:overload public static function forEncoder(ch : java.nio.channels.WritableByteChannel, enc : java.nio.charset.CharsetEncoder, minBufferCap : Int) : StreamEncoder;
	
	@:overload public function getEncoding() : String;
	
	@:overload public function flushBuffer() : Void;
	
	@:overload override public function write(c : Int) : Void;
	
	@:overload override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload override public function write(str : String, off : Int, len : Int) : Void;
	
	@:overload override public function flush() : Void;
	
	@:overload override public function close() : Void;
	
	
}
