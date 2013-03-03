package java.io;
/*
* Copyright (c) 1994, 2011, Oracle and/or its affiliates. All rights reserved.
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
* This class is the superclass of all classes that filter output
* streams. These streams sit on top of an already existing output
* stream (the <i>underlying</i> output stream) which it uses as its
* basic sink of data, but possibly transforming the data along the
* way or providing additional functionality.
* <p>
* The class <code>FilterOutputStream</code> itself simply overrides
* all methods of <code>OutputStream</code> with versions that pass
* all requests to the underlying output stream. Subclasses of
* <code>FilterOutputStream</code> may further override some of these
* methods as well as provide additional methods and fields.
*
* @author  Jonathan Payne
* @since   JDK1.0
*/
@:require(java0) extern class FilterOutputStream extends java.io.OutputStream
{
	/**
	* The underlying output stream to be filtered.
	*/
	@:protected private var out : java.io.OutputStream;
	
	/**
	* Creates an output stream filter built on top of the specified
	* underlying output stream.
	*
	* @param   out   the underlying output stream to be assigned to
	*                the field <tt>this.out</tt> for later use, or
	*                <code>null</code> if this instance is to be
	*                created without an underlying stream.
	*/
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	/**
	* Writes the specified <code>byte</code> to this output stream.
	* <p>
	* The <code>write</code> method of <code>FilterOutputStream</code>
	* calls the <code>write</code> method of its underlying output stream,
	* that is, it performs <tt>out.write(b)</tt>.
	* <p>
	* Implements the abstract <tt>write</tt> method of <tt>OutputStream</tt>.
	*
	* @param      b   the <code>byte</code>.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes <code>b.length</code> bytes to this output stream.
	* <p>
	* The <code>write</code> method of <code>FilterOutputStream</code>
	* calls its <code>write</code> method of three arguments with the
	* arguments <code>b</code>, <code>0</code>, and
	* <code>b.length</code>.
	* <p>
	* Note that this method does not call the one-argument
	* <code>write</code> method of its underlying stream with the single
	* argument <code>b</code>.
	*
	* @param      b   the data to be written.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterOutputStream#write(byte[], int, int)
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes <code>len</code> bytes from the specified
	* <code>byte</code> array starting at offset <code>off</code> to
	* this output stream.
	* <p>
	* The <code>write</code> method of <code>FilterOutputStream</code>
	* calls the <code>write</code> method of one argument on each
	* <code>byte</code> to output.
	* <p>
	* Note that this method does not call the <code>write</code> method
	* of its underlying input stream with the same arguments. Subclasses
	* of <code>FilterOutputStream</code> should provide a more efficient
	* implementation of this method.
	*
	* @param      b     the data.
	* @param      off   the start offset in the data.
	* @param      len   the number of bytes to write.
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterOutputStream#write(int)
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Flushes this output stream and forces any buffered output bytes
	* to be written out to the stream.
	* <p>
	* The <code>flush</code> method of <code>FilterOutputStream</code>
	* calls the <code>flush</code> method of its underlying output stream.
	*
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterOutputStream#out
	*/
	@:overload @:public override public function flush() : Void;
	
	/**
	* Closes this output stream and releases any system resources
	* associated with the stream.
	* <p>
	* The <code>close</code> method of <code>FilterOutputStream</code>
	* calls its <code>flush</code> method, and then calls the
	* <code>close</code> method of its underlying output stream.
	*
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FilterOutputStream#flush()
	* @see        java.io.FilterOutputStream#out
	*/
	@:overload @:public override public function close() : Void;
	
	
}
