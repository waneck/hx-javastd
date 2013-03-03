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
extern class FileImageInputStream extends javax.imageio.stream.ImageInputStreamImpl
{
	/**
	* Constructs a <code>FileImageInputStream</code> that will read
	* from a given <code>File</code>.
	*
	* <p> The file contents must not change between the time this
	* object is constructed and the time of the last call to a read
	* method.
	*
	* @param f a <code>File</code> to read from.
	*
	* @exception IllegalArgumentException if <code>f</code> is
	* <code>null</code>.
	* @exception SecurityException if a security manager exists
	* and does not allow read access to the file.
	* @exception FileNotFoundException if <code>f</code> is a
	* directory or cannot be opened for reading for any other reason.
	* @exception IOException if an I/O error occurs.
	*/
	@:overload @:public public function new(f : java.io.File) : Void;
	
	/**
	* Constructs a <code>FileImageInputStream</code> that will read
	* from a given <code>RandomAccessFile</code>.
	*
	* <p> The file contents must not change between the time this
	* object is constructed and the time of the last call to a read
	* method.
	*
	* @param raf a <code>RandomAccessFile</code> to read from.
	*
	* @exception IllegalArgumentException if <code>raf</code> is
	* <code>null</code>.
	*/
	@:overload @:public public function new(raf : java.io.RandomAccessFile) : Void;
	
	@:overload @:public override public function read() : Int;
	
	@:overload @:public override public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	/**
	* Returns the length of the underlying file, or <code>-1</code>
	* if it is unknown.
	*
	* @return the file length as a <code>long</code>, or
	* <code>-1</code>.
	*/
	@:overload @:public override public function length() : haxe.Int64;
	
	@:overload @:public override public function seek(pos : haxe.Int64) : Void;
	
	@:overload @:public override public function close() : Void;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:protected override private function finalize() : Void;
	
	
}
