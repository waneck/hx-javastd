package java.io;
/*
* Copyright (c) 1994, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class ByteArrayOutputStream extends java.io.OutputStream
{
	/**
	* The buffer where data is stored.
	*/
	@:protected private var buf : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* The number of valid bytes in the buffer.
	*/
	@:protected private var count : Int;
	
	/**
	* Creates a new byte array output stream. The buffer capacity is
	* initially 32 bytes, though its size increases if necessary.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new byte array output stream, with a buffer capacity of
	* the specified size, in bytes.
	*
	* @param   size   the initial size.
	* @exception  IllegalArgumentException if size is negative.
	*/
	@:overload @:public public function new(size : Int) : Void;
	
	/**
	* Writes the specified byte to this byte array output stream.
	*
	* @param   b   the byte to be written.
	*/
	@:overload @:public @:synchronized override public function write(b : Int) : Void;
	
	/**
	* Writes <code>len</code> bytes from the specified byte array
	* starting at offset <code>off</code> to this byte array output stream.
	*
	* @param   b     the data.
	* @param   off   the start offset in the data.
	* @param   len   the number of bytes to write.
	*/
	@:overload @:public @:synchronized override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Writes the complete contents of this byte array output stream to
	* the specified output stream argument, as if by calling the output
	* stream's write method using <code>out.write(buf, 0, count)</code>.
	*
	* @param      out   the output stream to which to write the data.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public @:synchronized public function writeTo(out : java.io.OutputStream) : Void;
	
	/**
	* Resets the <code>count</code> field of this byte array output
	* stream to zero, so that all currently accumulated output in the
	* output stream is discarded. The output stream can be used again,
	* reusing the already allocated buffer space.
	*
	* @see     java.io.ByteArrayInputStream#count
	*/
	@:overload @:public @:synchronized public function reset() : Void;
	
	/**
	* Creates a newly allocated byte array. Its size is the current
	* size of this output stream and the valid contents of the buffer
	* have been copied into it.
	*
	* @return  the current contents of this output stream, as a byte array.
	* @see     java.io.ByteArrayOutputStream#size()
	*/
	@:overload @:public @:synchronized public function toByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the current size of the buffer.
	*
	* @return  the value of the <code>count</code> field, which is the number
	*          of valid bytes in this output stream.
	* @see     java.io.ByteArrayOutputStream#count
	*/
	@:overload @:public @:synchronized public function size() : Int;
	
	/**
	* Converts the buffer's contents into a string decoding bytes using the
	* platform's default character set. The length of the new <tt>String</tt>
	* is a function of the character set, and hence may not be equal to the
	* size of the buffer.
	*
	* <p> This method always replaces malformed-input and unmappable-character
	* sequences with the default replacement string for the platform's
	* default character set. The {@linkplain java.nio.charset.CharsetDecoder}
	* class should be used when more control over the decoding process is
	* required.
	*
	* @return String decoded from the buffer's contents.
	* @since  JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function toString() : String;
	
	/**
	* Converts the buffer's contents into a string by decoding the bytes using
	* the specified {@link java.nio.charset.Charset charsetName}. The length of
	* the new <tt>String</tt> is a function of the charset, and hence may not be
	* equal to the length of the byte array.
	*
	* <p> This method always replaces malformed-input and unmappable-character
	* sequences with this charset's default replacement string. The {@link
	* java.nio.charset.CharsetDecoder} class should be used when more control
	* over the decoding process is required.
	*
	* @param  charsetName  the name of a supported
	*              {@linkplain java.nio.charset.Charset </code>charset<code>}
	* @return String decoded from the buffer's contents.
	* @exception  UnsupportedEncodingException
	*             If the named charset is not supported
	* @since   JDK1.1
	*/
	@:require(java1) @:overload @:public @:synchronized public function toString(charsetName : String) : String;
	
	/**
	* Creates a newly allocated string. Its size is the current size of
	* the output stream and the valid contents of the buffer have been
	* copied into it. Each character <i>c</i> in the resulting string is
	* constructed from the corresponding element <i>b</i> in the byte
	* array such that:
	* <blockquote><pre>
	*     c == (char)(((hibyte &amp; 0xff) &lt;&lt; 8) | (b &amp; 0xff))
	* </pre></blockquote>
	*
	* @deprecated This method does not properly convert bytes into characters.
	* As of JDK&nbsp;1.1, the preferred way to do this is via the
	* <code>toString(String enc)</code> method, which takes an encoding-name
	* argument, or the <code>toString()</code> method, which uses the
	* platform's default character encoding.
	*
	* @param      hibyte    the high byte of each resulting Unicode character.
	* @return     the current contents of the output stream, as a string.
	* @see        java.io.ByteArrayOutputStream#size()
	* @see        java.io.ByteArrayOutputStream#toString(String)
	* @see        java.io.ByteArrayOutputStream#toString()
	*/
	@:overload @:public @:synchronized public function toString(hibyte : Int) : String;
	
	/**
	* Closing a <tt>ByteArrayOutputStream</tt> has no effect. The methods in
	* this class can be called after the stream has been closed without
	* generating an <tt>IOException</tt>.
	* <p>
	*
	*/
	@:overload @:public override public function close() : Void;
	
	
}
