package java.nio;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class MappedByteBuffer extends java.nio.ByteBuffer
{
	/**
	* Tells whether or not this buffer's content is resident in physical
	* memory.
	*
	* <p> A return value of <tt>true</tt> implies that it is highly likely
	* that all of the data in this buffer is resident in physical memory and
	* may therefore be accessed without incurring any virtual-memory page
	* faults or I/O operations.  A return value of <tt>false</tt> does not
	* necessarily imply that the buffer's content is not resident in physical
	* memory.
	*
	* <p> The returned value is a hint, rather than a guarantee, because the
	* underlying operating system may have paged out some of the buffer's data
	* by the time that an invocation of this method returns.  </p>
	*
	* @return  <tt>true</tt> if it is likely that this buffer's content
	*          is resident in physical memory
	*/
	@:overload @:public @:final public function isLoaded() : Bool;
	
	/**
	* Loads this buffer's content into physical memory.
	*
	* <p> This method makes a best effort to ensure that, when it returns,
	* this buffer's content is resident in physical memory.  Invoking this
	* method may cause some number of page faults and I/O operations to
	* occur. </p>
	*
	* @return  This buffer
	*/
	@:overload @:public @:final public function load() : java.nio.MappedByteBuffer;
	
	/**
	* Forces any changes made to this buffer's content to be written to the
	* storage device containing the mapped file.
	*
	* <p> If the file mapped into this buffer resides on a local storage
	* device then when this method returns it is guaranteed that all changes
	* made to the buffer since it was created, or since this method was last
	* invoked, will have been written to that device.
	*
	* <p> If the file does not reside on a local device then no such guarantee
	* is made.
	*
	* <p> If this buffer was not mapped in read/write mode ({@link
	* java.nio.channels.FileChannel.MapMode#READ_WRITE}) then invoking this
	* method has no effect. </p>
	*
	* @return  This buffer
	*/
	@:overload @:public @:final public function force() : java.nio.MappedByteBuffer;
	
	
}
