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
extern class StreamDecoder extends java.io.Reader
{
	@:overload @:public @:static public static function forInputStreamReader(_in : java.io.InputStream, lock : Dynamic, charsetName : String) : sun.nio.cs.StreamDecoder;
	
	@:overload @:public @:static public static function forInputStreamReader(_in : java.io.InputStream, lock : Dynamic, cs : java.nio.charset.Charset) : sun.nio.cs.StreamDecoder;
	
	@:overload @:public @:static public static function forInputStreamReader(_in : java.io.InputStream, lock : Dynamic, dec : java.nio.charset.CharsetDecoder) : sun.nio.cs.StreamDecoder;
	
	@:overload @:public @:static public static function forDecoder(ch : java.nio.channels.ReadableByteChannel, dec : java.nio.charset.CharsetDecoder, minBufferCap : Int) : sun.nio.cs.StreamDecoder;
	
	@:overload @:public public function getEncoding() : String;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	@:overload @:public override public function ready() : Bool;
	
	@:overload @:public override public function close() : Void;
	
	
}
