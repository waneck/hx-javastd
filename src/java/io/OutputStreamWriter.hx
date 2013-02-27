package java.io;
/*
* Copyright (c) 1996, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class OutputStreamWriter extends java.io.Writer
{
	/**
	* Creates an OutputStreamWriter that uses the named charset.
	*
	* @param  out
	*         An OutputStream
	*
	* @param  charsetName
	*         The name of a supported
	*         {@link java.nio.charset.Charset </code>charset<code>}
	*
	* @exception  UnsupportedEncodingException
	*             If the named encoding is not supported
	*/
	@:overload public function new(out : java.io.OutputStream, charsetName : String) : Void;
	
	/**
	* Creates an OutputStreamWriter that uses the default character encoding.
	*
	* @param  out  An OutputStream
	*/
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Creates an OutputStreamWriter that uses the given charset. </p>
	*
	* @param  out
	*         An OutputStream
	*
	* @param  cs
	*         A charset
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload public function new(out : java.io.OutputStream, cs : java.nio.charset.Charset) : Void;
	
	/**
	* Creates an OutputStreamWriter that uses the given charset encoder.  </p>
	*
	* @param  out
	*         An OutputStream
	*
	* @param  enc
	*         A charset encoder
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload public function new(out : java.io.OutputStream, enc : java.nio.charset.CharsetEncoder) : Void;
	
	/**
	* Returns the name of the character encoding being used by this stream.
	*
	* <p> If the encoding has an historical name then that name is returned;
	* otherwise the encoding's canonical name is returned.
	*
	* <p> If this instance was created with the {@link
	* #OutputStreamWriter(OutputStream, String)} constructor then the returned
	* name, being unique for the encoding, may differ from the name passed to
	* the constructor.  This method may return <tt>null</tt> if the stream has
	* been closed. </p>
	*
	* @return The historical name of this encoding, or possibly
	*         <code>null</code> if the stream has been closed
	*
	* @see java.nio.charset.Charset
	*
	* @revised 1.4
	* @spec JSR-51
	*/
	@:overload public function getEncoding() : String;
	
	/**
	* Writes a single character.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(c : Int) : Void;
	
	/**
	* Writes a portion of an array of characters.
	*
	* @param  cbuf  Buffer of characters
	* @param  off   Offset from which to start writing characters
	* @param  len   Number of characters to write
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(cbuf : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	/**
	* Writes a portion of a string.
	*
	* @param  str  A String
	* @param  off  Offset from which to start writing characters
	* @param  len  Number of characters to write
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function write(str : String, off : Int, len : Int) : Void;
	
	/**
	* Flushes the stream.
	*
	* @exception  IOException  If an I/O error occurs
	*/
	@:overload override public function flush() : Void;
	
	@:overload override public function close() : Void;
	
	
}
