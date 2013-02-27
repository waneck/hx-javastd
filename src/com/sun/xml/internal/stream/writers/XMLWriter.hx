package com.sun.xml.internal.stream.writers;
/*
* Copyright (c) 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class XMLWriter extends java.io.Writer
{
	/** Creates the instance of <code>XMLWriter</code>
	*/
	@:overload public function new(writer : java.io.Writer) : Void;
	
	/**
	* Creates the instnace of <code>XMLWriter</code>.
	*
	* atleast buffers the input to the
	* <code>size</code> specified.
	*/
	@:overload public function new(writer : java.io.Writer, size : Int) : Void;
	
	/**
	* Write a single character.  The character to be written is contained in
	* the 16 low-order bits of the given integer value; the 16 high-order bits
	* are ignored.
	*
	* <p> Subclasses that intend to support efficient single-character output
	* should override this method.
	*
	* @param c  int specifying a character to be written.
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(c : Int) : Void;
	
	/**
	* Write an array of characters.
	*
	* @param  cbuf  Array of characters to be written
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>) : Void;
	
	/**
	* Write a portion of an array of characters.
	*
	* @param  cbuf  Array of characters
	* @param  off   Offset from which to start writing characters
	* @param  len   Number of characters to write
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Write a portion of a string.
	*
	* @param  str  A String
	* @param  off  Offset from which to start writing characters
	* @param  len  Number of characters to write
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(str : String, off : Int, len : Int) : Void;
	
	/**
	* Write a string.
	*
	* @param  str  String to be written
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(str : String) : Void;
	
	/**
	* Close the stream, flushing it first.  Once a stream has been closed,
	* further write() or flush() invocations will cause an IOException to be
	* thrown.  Closing a previously-closed stream, however, has no effect.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function close() : Void;
	
	/**
	* Flush the stream.  If the stream has saved any characters from the
	* various write() methods in a buffer, write them immediately to their
	* intended destination.  Then, if that destination is another character or
	* byte stream, flush it.  Thus one flush() invocation will flush all the
	* buffers in a chain of Writers and OutputStreams.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function flush() : Void;
	
	/** Reset this Writer.
	*
	* see @setWriter()
	*/
	@:overload public function reset() : Void;
	
	/**
	* Set the given <code>Writer</code>.
	*
	* @param Writer Writer.
	*/
	@:overload public function setWriter(writer : java.io.Writer) : Void;
	
	/** Set the given <code>Writer</code>
	*
	* @param Writer Writer.
	* @param int    Writer will buffer the character data size, after that data is written to stream.
	*/
	@:overload public function setWriter(writer : java.io.Writer, size : Int) : Void;
	
	/**
	* Returns underlying <code>Writer</code>
	*/
	@:overload private function getWriter() : java.io.Writer;
	
	
}
