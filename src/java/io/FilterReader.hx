package java.io;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Abstract class for reading filtered character streams.
* The abstract class <code>FilterReader</code> itself
* provides default methods that pass all requests to
* the contained stream. Subclasses of <code>FilterReader</code>
* should override some of these methods and may also provide
* additional methods and fields.
*
* @author      Mark Reinhold
* @since       JDK1.1
*/
@:require(java1) extern class FilterReader extends java.io.Reader
{
	/**
	* The underlying character-input stream.
	*/
	//@:protected private var _in : java.io.Reader;
	
	/**
	* Creates a new filtered reader.
	*
	* @param in  a Reader object providing the underlying stream.
	* @throws NullPointerException if <code>in</code> is <code>null</code>
	*/
	@:overload @:protected private function new(_in : java.io.Reader) : Void;
	
	/**
	* Reads a single character.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads characters into a portion of an array.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Int;
	
	/**
	* Skips characters.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function skip(n : haxe.Int64) : haxe.Int64;
	
	/**
	* Tells whether this stream is ready to be read.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function ready() : Bool;
	
	/**
	* Tells whether this stream supports the mark() operation.
	*/
	@:overload @:public override public function markSupported() : Bool;
	
	/**
	* Marks the present position in the stream.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function mark(readAheadLimit : Int) : Void;
	
	/**
	* Resets the stream.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function reset() : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
