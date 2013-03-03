package java.io;
/*
* Copyright (c) 1994, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class FileOutputStream extends java.io.OutputStream
{
	/**
	* Creates a file output stream to write to the file with the
	* specified name. A new <code>FileDescriptor</code> object is
	* created to represent this file connection.
	* <p>
	* First, if there is a security manager, its <code>checkWrite</code>
	* method is called with <code>name</code> as its argument.
	* <p>
	* If the file exists but is a directory rather than a regular file, does
	* not exist but cannot be created, or cannot be opened for any other
	* reason then a <code>FileNotFoundException</code> is thrown.
	*
	* @param      name   the system-dependent filename
	* @exception  FileNotFoundException  if the file exists but is a directory
	*                   rather than a regular file, does not exist but cannot
	*                   be created, or cannot be opened for any other reason
	* @exception  SecurityException  if a security manager exists and its
	*               <code>checkWrite</code> method denies write access
	*               to the file.
	* @see        java.lang.SecurityManager#checkWrite(java.lang.String)
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a file output stream to write to the file with the specified
	* name.  If the second argument is <code>true</code>, then
	* bytes will be written to the end of the file rather than the beginning.
	* A new <code>FileDescriptor</code> object is created to represent this
	* file connection.
	* <p>
	* First, if there is a security manager, its <code>checkWrite</code>
	* method is called with <code>name</code> as its argument.
	* <p>
	* If the file exists but is a directory rather than a regular file, does
	* not exist but cannot be created, or cannot be opened for any other
	* reason then a <code>FileNotFoundException</code> is thrown.
	*
	* @param     name        the system-dependent file name
	* @param     append      if <code>true</code>, then bytes will be written
	*                   to the end of the file rather than the beginning
	* @exception  FileNotFoundException  if the file exists but is a directory
	*                   rather than a regular file, does not exist but cannot
	*                   be created, or cannot be opened for any other reason.
	* @exception  SecurityException  if a security manager exists and its
	*               <code>checkWrite</code> method denies write access
	*               to the file.
	* @see        java.lang.SecurityManager#checkWrite(java.lang.String)
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:public public function new(name : String, append : Bool) : Void;
	
	/**
	* Creates a file output stream to write to the file represented by
	* the specified <code>File</code> object. A new
	* <code>FileDescriptor</code> object is created to represent this
	* file connection.
	* <p>
	* First, if there is a security manager, its <code>checkWrite</code>
	* method is called with the path represented by the <code>file</code>
	* argument as its argument.
	* <p>
	* If the file exists but is a directory rather than a regular file, does
	* not exist but cannot be created, or cannot be opened for any other
	* reason then a <code>FileNotFoundException</code> is thrown.
	*
	* @param      file               the file to be opened for writing.
	* @exception  FileNotFoundException  if the file exists but is a directory
	*                   rather than a regular file, does not exist but cannot
	*                   be created, or cannot be opened for any other reason
	* @exception  SecurityException  if a security manager exists and its
	*               <code>checkWrite</code> method denies write access
	*               to the file.
	* @see        java.io.File#getPath()
	* @see        java.lang.SecurityException
	* @see        java.lang.SecurityManager#checkWrite(java.lang.String)
	*/
	@:overload @:public public function new(file : java.io.File) : Void;
	
	/**
	* Creates a file output stream to write to the file represented by
	* the specified <code>File</code> object. If the second argument is
	* <code>true</code>, then bytes will be written to the end of the file
	* rather than the beginning. A new <code>FileDescriptor</code> object is
	* created to represent this file connection.
	* <p>
	* First, if there is a security manager, its <code>checkWrite</code>
	* method is called with the path represented by the <code>file</code>
	* argument as its argument.
	* <p>
	* If the file exists but is a directory rather than a regular file, does
	* not exist but cannot be created, or cannot be opened for any other
	* reason then a <code>FileNotFoundException</code> is thrown.
	*
	* @param      file               the file to be opened for writing.
	* @param     append      if <code>true</code>, then bytes will be written
	*                   to the end of the file rather than the beginning
	* @exception  FileNotFoundException  if the file exists but is a directory
	*                   rather than a regular file, does not exist but cannot
	*                   be created, or cannot be opened for any other reason
	* @exception  SecurityException  if a security manager exists and its
	*               <code>checkWrite</code> method denies write access
	*               to the file.
	* @see        java.io.File#getPath()
	* @see        java.lang.SecurityException
	* @see        java.lang.SecurityManager#checkWrite(java.lang.String)
	* @since 1.4
	*/
	@:require(java4) @:overload @:public public function new(file : java.io.File, append : Bool) : Void;
	
	/**
	* Creates a file output stream to write to the specified file
	* descriptor, which represents an existing connection to an actual
	* file in the file system.
	* <p>
	* First, if there is a security manager, its <code>checkWrite</code>
	* method is called with the file descriptor <code>fdObj</code>
	* argument as its argument.
	* <p>
	* If <code>fdObj</code> is null then a <code>NullPointerException</code>
	* is thrown.
	* <p>
	* This constructor does not throw an exception if <code>fdObj</code>
	* is {@link java.io.FileDescriptor#valid() invalid}.
	* However, if the methods are invoked on the resulting stream to attempt
	* I/O on the stream, an <code>IOException</code> is thrown.
	*
	* @param      fdObj   the file descriptor to be opened for writing
	* @exception  SecurityException  if a security manager exists and its
	*               <code>checkWrite</code> method denies
	*               write access to the file descriptor
	* @see        java.lang.SecurityManager#checkWrite(java.io.FileDescriptor)
	*/
	@:overload @:public public function new(fdObj : java.io.FileDescriptor) : Void;
	
	/**
	* Writes the specified byte to this file output stream. Implements
	* the <code>write</code> method of <code>OutputStream</code>.
	*
	* @param      b   the byte to be written.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function write(b : Int) : Void;
	
	/**
	* Writes <code>b.length</code> bytes from the specified byte array
	* to this file output stream.
	*
	* @param      b   the data.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes <code>len</code> bytes from the specified byte array
	* starting at offset <code>off</code> to this file output stream.
	*
	* @param      b     the data.
	* @param      off   the start offset in the data.
	* @param      len   the number of bytes to write.
	* @exception  IOException  if an I/O error occurs.
	*/
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	/**
	* Closes this file output stream and releases any system resources
	* associated with this stream. This file output stream may no longer
	* be used for writing bytes.
	*
	* <p> If this stream has an associated channel then the channel is closed
	* as well.
	*
	* @exception  IOException  if an I/O error occurs.
	*
	* @revised 1.4
	* @spec JSR-51
	*/
	@:overload @:public override public function close() : Void;
	
	/**
	* Returns the file descriptor associated with this stream.
	*
	* @return  the <code>FileDescriptor</code> object that represents
	*          the connection to the file in the file system being used
	*          by this <code>FileOutputStream</code> object.
	*
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FileDescriptor
	*/
	@:overload @:public @:final public function getFD() : java.io.FileDescriptor;
	
	/**
	* Returns the unique {@link java.nio.channels.FileChannel FileChannel}
	* object associated with this file output stream. </p>
	*
	* <p> The initial {@link java.nio.channels.FileChannel#position()
	* </code>position<code>} of the returned channel will be equal to the
	* number of bytes written to the file so far unless this stream is in
	* append mode, in which case it will be equal to the size of the file.
	* Writing bytes to this stream will increment the channel's position
	* accordingly.  Changing the channel's position, either explicitly or by
	* writing, will change this stream's file position.
	*
	* @return  the file channel associated with this file output stream
	*
	* @since 1.4
	* @spec JSR-51
	*/
	@:require(java4) @:overload @:public public function getChannel() : java.nio.channels.FileChannel;
	
	/**
	* Cleans up the connection to the file, and ensures that the
	* <code>close</code> method of this file output stream is
	* called when there are no more references to this stream.
	*
	* @exception  IOException  if an I/O error occurs.
	* @see        java.io.FileInputStream#close()
	*/
	@:overload @:protected private function finalize() : Void;
	
	
}
