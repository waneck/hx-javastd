package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class XmlReader extends java.io.Reader
{
	/**
	* Constructs the reader from an input stream, auto-detecting
	* the encoding to use according to the heuristic specified
	* in the XML 1.0 recommendation.
	*
	* @param in the input stream from which the reader is constructed
	* @throws IOException on error, such as unrecognized encoding
	*/
	@:overload @:public @:static public static function createReader(_in : java.io.InputStream) : java.io.Reader;
	
	/**
	* Creates a reader supporting the given encoding, mapping
	* from standard encoding names to ones that understood by
	* Java where necessary.
	*
	* @param in       the input stream from which the reader is constructed
	* @param encoding the IETF standard name of the encoding to use;
	*                 if null, auto-detection is used.
	* @throws IOException on error, including unrecognized encoding
	*/
	@:overload @:public @:static public static function createReader(_in : java.io.InputStream, encoding : String) : java.io.Reader;
	
	/**
	* Returns the standard name of the encoding in use
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Reads the number of characters read into the buffer, or -1 on EOF.
	*/
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Reads a single character.
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Returns true iff the reader supports mark/reset.
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	/**
	* Sets a mark allowing a limited number of characters to
	* be "peeked", by reading and then resetting.
	*
	* @param value how many characters may be "peeked".
	*/
	@:overload @:public override public function mark(value : Int) : Void;
	
	/**
	* Resets the current position to the last marked position.
	*/
	@:overload @:public override public function reset() : Void;
	
	/**
	* Skips a specified number of characters.
	*/
	@:overload @:public override public function skip(value : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns true iff input characters are known to be ready.
	*/
	@:overload @:public override public function ready() : Bool;
	
	/**
	* Closes the reader.
	*/
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$dtdparser$XmlReader$BaseReader') @:internal extern class XmlReader_BaseReader extends java.io.Reader
{
	@:protected private var instream : java.io.InputStream;
	
	@:protected private var buffer : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var start : Int;
	
	@:protected private var finish : Int;
	
	@:overload @:public override public function ready() : Bool;
	
	@:overload @:public override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$dtdparser$XmlReader$Utf8Reader') @:internal extern class XmlReader_Utf8Reader extends com.sun.xml.internal.dtdparser.XmlReader.XmlReader_BaseReader
{
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Int;
	
	
}
@:native('com$sun$xml$internal$dtdparser$XmlReader$AsciiReader') @:internal extern class XmlReader_AsciiReader extends com.sun.xml.internal.dtdparser.XmlReader.XmlReader_BaseReader
{
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Int;
	
	
}
@:native('com$sun$xml$internal$dtdparser$XmlReader$Iso8859_1Reader') @:internal extern class XmlReader_Iso8859_1Reader extends com.sun.xml.internal.dtdparser.XmlReader.XmlReader_BaseReader
{
	@:overload @:public override public function read(buf : java.NativeArray<java.StdTypes.Char16>, offset : Int, len : Int) : Int;
	
	
}
