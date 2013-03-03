package javax.imageio.stream;
/*
* Copyright (c) 2000, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern class FileImageOutputStream extends javax.imageio.stream.ImageOutputStreamImpl
{
	/**
	* Constructs a <code>FileImageOutputStream</code> that will write
	* to a given <code>File</code>.
	*
	* @param f a <code>File</code> to write to.
	*
	* @exception IllegalArgumentException if <code>f</code> is
	* <code>null</code>.
	* @exception SecurityException if a security manager exists
	* and does not allow write access to the file.
	* @exception FileNotFoundException if <code>f</code> does not denote
	* a regular file or it cannot be opened for reading and writing for any
	* other reason.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public public function new(f : java.io.File) : Void;
	
	/**
	* Constructs a <code>FileImageOutputStream</code> that will write
	* to a given <code>RandomAccessFile</code>.
	*
	* @param raf a <code>RandomAccessFile</code> to write to.
	*
	* @exception IllegalArgumentException if <code>raf</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(raf : java.io.RandomAccessFile) : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function length() : haxe.Int64;
	
	/**
	* Sets the current stream position and resets the bit offset to
	* 0.  It is legal to seeking past the end of the file; an
	* <code>EOFException</code> will be thrown only if a read is
	* performed.  The file length will not be increased until a write
	* is performed.
	*
	* @exception IndexOutOfBoundsException if <code>pos</code> is smaller
	* than the flushed position.
	* @exception IOException if any other I/O error occurs.
	*/
	@:overload @:public override public function seek(pos : haxe.Int64) : Void;
	
	@:overload @:public override public function close() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function finalize() : Void;
	
	
}
