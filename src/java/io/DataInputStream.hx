package java.io;
/*
* Copyright (c) 1994, 2006, Oracle and/or its affiliates. All rights reserved.
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
* A data input stream lets an application read primitive Java data
* types from an underlying input stream in a machine-independent
* way. An application uses a data output stream to write data that
* can later be read by a data input stream.
* <p>
* DataInputStream is not necessarily safe for multithreaded access.
* Thread safety is optional and is the responsibility of users of
* methods in this class.
*
* @author  Arthur van Hoff
* @see     java.io.DataOutputStream
* @since   JDK1.0
*/
@:require(java0) extern class DataInputStream extends java.io.FilterInputStream implements java.io.DataInput
{
	/**
	* Creates a DataInputStream that uses the specified
	* underlying InputStream.
	*
	* @param  in   the specified input stream
	*/
	@:overload @:public public function new(_in : java.io.InputStream) : Void;
	
	/**
	* Reads some number of bytes from the contained input stream and
	* stores them into the buffer array <code>b</code>. The number of
	* bytes actually read is returned as an integer. This method blocks
	* until input data is available, end of file is detected, or an
	* exception is thrown.
	*
	* <p>If <code>b</code> is null, a <code>NullPointerException</code> is
	* thrown. If the length of <code>b</code> is zero, then no bytes are
	* read and <code>0</code> is returned; otherwise, there is an attempt
	* to read at least one byte. If no byte is available because the
	* stream is at end of file, the value <code>-1</code> is returned;
	* otherwise, at least one byte is read and stored into <code>b</code>.
	*
	* <p>The first byte read is stored into element <code>b[0]</code>, the
	* next one into <code>b[1]</code>, and so on. The number of bytes read
	* is, at most, equal to the length of <code>b</code>. Let <code>k</code>
	* be the number of bytes actually read; these bytes will be stored in
	* elements <code>b[0]</code> through <code>b[k-1]</code>, leaving
	* elements <code>b[k]</code> through <code>b[b.length-1]</code>
	* unaffected.
	*
	* <p>The <code>read(b)</code> method has the same effect as:
	* <blockquote><pre>
	* read(b, 0, b.length)
	* </pre></blockquote>
	*
	* @param      b   the buffer into which the data is read.
	* @return     the total number of bytes read into the buffer, or
	*             <code>-1</code> if there is no more data because the end
	*             of the stream has been reached.
	* @exception  IOException if the first byte cannot be read for any reason
	* other than end of file, the stream has been closed and the underlying
	* input stream does not support reading after close, or another I/O
	* error occurs.
	* @see        java.io.FilterInputStream#in
	* @see        java.io.InputStream#read(byte[], int, int)
	*/
	@:overload @:public @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Reads up to <code>len</code> bytes of data from the contained
	* input stream into an array of bytes.  An attempt is made to read
	* as many as <code>len</code> bytes, but a smaller number may be read,
	* possibly zero. The number of bytes actually read is returned as an
	* integer.
	*
	* <p> This method blocks until input data is available, end of file is
	* detected, or an exception is thrown.
	*
	* <p> If <code>len</code> is zero, then no bytes are read and
	* <code>0</code> is returned; otherwise, there is an attempt to read at
	* least one byte. If no byte is available because the stream is at end of
	* file, the value <code>-1</code> is returned; otherwise, at least one
	* byte is read and stored into <code>b</code>.
	*
	* <p> The first byte read is stored into element <code>b[off]</code>, the
	* next one into <code>b[off+1]</code>, and so on. The number of bytes read
	* is, at most, equal to <code>len</code>. Let <i>k</i> be the number of
	* bytes actually read; these bytes will be stored in elements
	* <code>b[off]</code> through <code>b[off+</code><i>k</i><code>-1]</code>,
	* leaving elements <code>b[off+</code><i>k</i><code>]</code> through
	* <code>b[off+len-1]</code> unaffected.
	*
	* <p> In every case, elements <code>b[0]</code> through
	* <code>b[off]</code> and elements <code>b[off+len]</code> through
	* <code>b[b.length-1]</code> are unaffected.
	*
	* @param      b     the buffer into which the data is read.
	* @param off the start offset in the destination array <code>b</code>
	* @param      len   the maximum number of bytes read.
	* @return     the total number of bytes read into the buffer, or
	*             <code>-1</code> if there is no more data because the end
	*             of the stream has been reached.
	* @exception  NullPointerException If <code>b</code> is <code>null</code>.
	* @exception  IndexOutOfBoundsException If <code>off</code> is negative,
	* <code>len</code> is negative, or <code>len</code> is greater than
	* <code>b.length - off</code>
	* @exception  IOException if the first byte cannot be read for any reason
	* other than end of file, the stream has been closed and the underlying
	* input stream does not support reading after close, or another I/O
	* error occurs.
	* @see        java.io.FilterInputStream#in
	* @see        java.io.InputStream#read(byte[], int, int)
	*/
	@:overload @:public @:final override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* See the general contract of the <code>readFully</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @param      b   the buffer into which the data is read.
	* @exception  EOFException  if this input stream reaches the end before
	*             reading all the bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readFully(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* See the general contract of the <code>readFully</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @param      b     the buffer into which the data is read.
	* @param      off   the start offset of the data.
	* @param      len   the number of bytes to read.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading all the bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readFully(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* See the general contract of the <code>skipBytes</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes for this operation are read from the contained
	* input stream.
	*
	* @param      n   the number of bytes to be skipped.
	* @return     the actual number of bytes skipped.
	* @exception  IOException  if the contained input stream does not support
	*             seek, or the stream has been closed and
	*             the contained input stream does not support
	*             reading after close, or another I/O error occurs.
	*/
	@:overload @:public @:final public function skipBytes(n : Int) : Int;
	
	/**
	* See the general contract of the <code>readBoolean</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes for this operation are read from the contained
	* input stream.
	*
	* @return     the <code>boolean</code> value read.
	* @exception  EOFException  if this input stream has reached the end.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readBoolean() : Bool;
	
	/**
	* See the general contract of the <code>readByte</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next byte of this input stream as a signed 8-bit
	*             <code>byte</code>.
	* @exception  EOFException  if this input stream has reached the end.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readByte() : java.StdTypes.Int8;
	
	/**
	* See the general contract of the <code>readUnsignedByte</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next byte of this input stream, interpreted as an
	*             unsigned 8-bit number.
	* @exception  EOFException  if this input stream has reached the end.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see         java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readUnsignedByte() : Int;
	
	/**
	* See the general contract of the <code>readShort</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next two bytes of this input stream, interpreted as a
	*             signed 16-bit number.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading two bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readShort() : java.StdTypes.Int16;
	
	/**
	* See the general contract of the <code>readUnsignedShort</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next two bytes of this input stream, interpreted as an
	*             unsigned 16-bit integer.
	* @exception  EOFException  if this input stream reaches the end before
	*             reading two bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readUnsignedShort() : Int;
	
	/**
	* See the general contract of the <code>readChar</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next two bytes of this input stream, interpreted as a
	*             <code>char</code>.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading two bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readChar() : java.StdTypes.Char16;
	
	/**
	* See the general contract of the <code>readInt</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next four bytes of this input stream, interpreted as an
	*             <code>int</code>.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading four bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readInt() : Int;
	
	/**
	* See the general contract of the <code>readLong</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next eight bytes of this input stream, interpreted as a
	*             <code>long</code>.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading eight bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readLong() : haxe.Int64;
	
	/**
	* See the general contract of the <code>readFloat</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next four bytes of this input stream, interpreted as a
	*             <code>float</code>.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading four bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.DataInputStream#readInt()
	* @see        java.lang.Float#intBitsToFloat(int)
	*/
	@:overload @:public @:final public function readFloat() : Single;
	
	/**
	* See the general contract of the <code>readDouble</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     the next eight bytes of this input stream, interpreted as a
	*             <code>double</code>.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading eight bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @see        java.io.DataInputStream#readLong()
	* @see        java.lang.Double#longBitsToDouble(long)
	*/
	@:overload @:public @:final public function readDouble() : Float;
	
	/**
	* See the general contract of the <code>readLine</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @deprecated This method does not properly convert bytes to characters.
	* As of JDK&nbsp;1.1, the preferred way to read lines of text is via the
	* <code>BufferedReader.readLine()</code> method.  Programs that use the
	* <code>DataInputStream</code> class to read lines can be converted to use
	* the <code>BufferedReader</code> class by replacing code of the form:
	* <blockquote><pre>
	*     DataInputStream d =&nbsp;new&nbsp;DataInputStream(in);
	* </pre></blockquote>
	* with:
	* <blockquote><pre>
	*     BufferedReader d
	*          =&nbsp;new&nbsp;BufferedReader(new&nbsp;InputStreamReader(in));
	* </pre></blockquote>
	*
	* @return     the next line of text from this input stream.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.BufferedReader#readLine()
	* @see        java.io.FilterInputStream#in
	*/
	@:overload @:public @:final public function readLine() : String;
	
	/**
	* See the general contract of the <code>readUTF</code>
	* method of <code>DataInput</code>.
	* <p>
	* Bytes
	* for this operation are read from the contained
	* input stream.
	*
	* @return     a Unicode string.
	* @exception  EOFException  if this input stream reaches the end before
	*               reading all the bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @exception  UTFDataFormatException if the bytes do not represent a valid
	*             modified UTF-8 encoding of a string.
	* @see        java.io.DataInputStream#readUTF(java.io.DataInput)
	*/
	@:overload @:public @:final public function readUTF() : String;
	
	/**
	* Reads from the
	* stream <code>in</code> a representation
	* of a Unicode  character string encoded in
	* <a href="DataInput.html#modified-utf-8">modified UTF-8</a> format;
	* this string of characters is then returned as a <code>String</code>.
	* The details of the modified UTF-8 representation
	* are  exactly the same as for the <code>readUTF</code>
	* method of <code>DataInput</code>.
	*
	* @param      in   a data input stream.
	* @return     a Unicode string.
	* @exception  EOFException            if the input stream reaches the end
	*               before all the bytes.
	* @exception  IOException   the stream has been closed and the contained
	*             input stream does not support reading after close, or
	*             another I/O error occurs.
	* @exception  UTFDataFormatException  if the bytes do not represent a
	*               valid modified UTF-8 encoding of a Unicode string.
	* @see        java.io.DataInputStream#readUnsignedShort()
	*/
	@:native('readUTF') @:overload @:public @:final @:static public static function _readUTF(_in : java.io.DataInput) : String;
	
	
}
