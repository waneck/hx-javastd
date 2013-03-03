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
extern class InputStreamReader extends java.io.Reader
{
	/**
	* Creates an InputStreamReader that uses the default charset.
	*
	* @param  in   An InputStream
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Creates an InputStreamReader that uses the named charset.
	*
	* @param  in
	*         An InputStream
	*
	* @param  charsetName
	*         The name of a supported
	*         {@link java.nio.charset.Charset </code>charset<code>}
	*
	* @exception  UnsupportedEncodingException
	*             If the named charset is not supported
	*/
	@:overload @:public public function new(_in : java.io.InputStream, charsetName : String) : Void;
	
	/**
	* Creates an InputStreamReader that uses the given charset. </p>
	*
	* @param  in       An InputStream
	* @param  cs       A charset
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload @:public public function new(_in : java.io.InputStream, cs : java.nio.charset.Charset) : Void;
	
	/**
	* Creates an InputStreamReader that uses the given charset decoder.  </p>
	*
	* @param  in       An InputStream
	* @param  dec      A charset decoder
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload @:public public function new(_in : java.io.InputStream, dec : java.nio.charset.CharsetDecoder) : Void;
	
	/**
	* Returns the name of the character encoding being used by this stream.
	*
	* <p> If the encoding has an historical name then that name is returned;
	* otherwise the encoding's canonical name is returned.
	*
	* <p> If this instance was created with the {@link
	* #InputStreamReader(InputStream, String)} constructor then the returned
	* name, being unique for the encoding, may differ from the name passed to
	* the constructor. This method will return <code>null</code> if the
	* stream has been closed.
	* </p>
	* @return The historical name of this encoding, or
	*         <code>null</code> if the stream has been closed
	*
	* @see java.nio.charset.Charset
	*
	* @revised 1.4
	* @spec JSR-51
	*/
	@:overload @:public public function getEncoding() : String;
	
	/**
	* Reads a single character.
	*
	* @return The character read, or -1 if the end of the stream has been
	*         reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read() : Int;
	
	/**
	* Reads characters into a portion of an array.
	*
	* @param      cbuf     Destination buffer
	* @param      offset   Offset at which to start storing characters
	* @param      length   Maximum number of characters to read
	*
	* @return     The number of characters read, or -1 if the end of the
	*             stream has been reached
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function read(cbuf : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Int;
	
	/**
	* Tells whether this stream is ready to be read.  An InputStreamReader is
	* ready if its input buffer is not empty, or if bytes are available to be
	* read from the underlying byte stream.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload @:public override public function ready() : Bool;
	
	@:overload @:public override public function close() : Void;
	
	
}
