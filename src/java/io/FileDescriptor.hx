package java.io;
/*
* Copyright (c) 1995, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class FileDescriptor
{
	/**
	* Constructs an (invalid) FileDescriptor
	* object.
	*/
	/**/
	@:overload public function new() : Void;
	
	/**
	* A handle to the standard input stream. Usually, this file
	* descriptor is not used directly, but rather via the input stream
	* known as <code>System.in</code>.
	*
	* @see     java.lang.System#in
	*/
	@:native('in') public static var _in(default, null) : FileDescriptor;
	
	/**
	* A handle to the standard output stream. Usually, this file
	* descriptor is not used directly, but rather via the output stream
	* known as <code>System.out</code>.
	* @see     java.lang.System#out
	*/
	public static var out(default, null) : FileDescriptor;
	
	/**
	* A handle to the standard error stream. Usually, this file
	* descriptor is not used directly, but rather via the output stream
	* known as <code>System.err</code>.
	*
	* @see     java.lang.System#err
	*/
	public static var err(default, null) : FileDescriptor;
	
	/**
	* Tests if this file descriptor object is valid.
	*
	* @return  <code>true</code> if the file descriptor object represents a
	*          valid, open file, socket, or other active I/O connection;
	*          <code>false</code> otherwise.
	*/
	@:overload public function valid() : Bool;
	
	/**
	* Force all system buffers to synchronize with the underlying
	* device.  This method returns after all modified data and
	* attributes of this FileDescriptor have been written to the
	* relevant device(s).  In particular, if this FileDescriptor
	* refers to a physical storage medium, such as a file in a file
	* system, sync will not return until all in-memory modified copies
	* of buffers associated with this FileDescriptor have been
	* written to the physical medium.
	*
	* sync is meant to be used by code that requires physical
	* storage (such as a file) to be in a known state  For
	* example, a class that provided a simple transaction facility
	* might use sync to ensure that all changes to a file caused
	* by a given transaction were recorded on a storage medium.
	*
	* sync only affects buffers downstream of this FileDescriptor.  If
	* any in-memory buffering is being done by the application (for
	* example, by a BufferedOutputStream object), those buffers must
	* be flushed into the FileDescriptor (for example, by invoking
	* OutputStream.flush) before that data will be affected by sync.
	*
	* @exception SyncFailedException
	*        Thrown when the buffers cannot be flushed,
	*        or because the system cannot guarantee that all the
	*        buffers have been synchronized with physical media.
	* @since     JDK1.1
	*/
	@:require(java1) @:overload @:native public function sync() : Void;
	
	
}
