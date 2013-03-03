package javax.imageio.stream;
/*
* Copyright (c) 2000, 2003, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class MemoryCache
{
	/**
	* Ensures that at least <code>pos</code> bytes are cached,
	* or the end of the source is reached.  The return value
	* is equal to the smaller of <code>pos</code> and the
	* length of the source.
	*/
	@:overload @:public public function loadFromStream(stream : java.io.InputStream, pos : haxe.Int64) : haxe.Int64;
	
	/**
	* Writes out a portion of the cache to an <code>OutputStream</code>.
	* This method preserves no state about the output stream, and does
	* not dispose of any blocks containing bytes written.  To dispose
	* blocks, use {@link #disposeBefore <code>disposeBefore()</code>}.
	*
	* @exception IndexOutOfBoundsException if any portion of
	* the requested data is not in the cache (including if <code>pos</code>
	* is in a block already disposed), or if either <code>pos</code> or
	* <code>len</code> is < 0.
	*/
	@:overload @:public public function writeToStream(stream : java.io.OutputStream, pos : haxe.Int64, len : haxe.Int64) : Void;
	
	/**
	* Overwrites and/or appends the cache from a byte array.
	* The length of the cache will be extended as needed to hold
	* the incoming data.
	*
	* @param b an array of bytes containing data to be written.
	* @param off the starting offset withing the data array.
	* @param len the number of bytes to be written.
	* @param pos the cache position at which to begin writing.
	*
	* @exception NullPointerException if <code>b</code> is <code>null</code>.
	* @exception IndexOutOfBoundsException if <code>off</code>,
	* <code>len</code>, or <code>pos</code> are negative,
	* or if <code>off+len > b.length</code>.
	*/
	@:overload @:public public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, pos : haxe.Int64) : Void;
	
	/**
	* Overwrites or appends a single byte to the cache.
	* The length of the cache will be extended as needed to hold
	* the incoming data.
	*
	* @param b an <code>int</code> whose 8 least significant bits
	* will be written.
	* @param pos the cache position at which to begin writing.
	*
	* @exception IndexOutOfBoundsException if <code>pos</code> is negative.
	*/
	@:overload @:public public function write(b : Int, pos : haxe.Int64) : Void;
	
	/**
	* Returns the total length of data that has been cached,
	* regardless of whether any early blocks have been disposed.
	* This value will only ever increase.
	*/
	@:overload @:public public function getLength() : haxe.Int64;
	
	/**
	* Returns the single byte at the given position, as an
	* <code>int</code>.  Returns -1 if this position has
	* not been cached or has been disposed.
	*/
	@:overload @:public public function read(pos : haxe.Int64) : Int;
	
	/**
	* Copy <code>len</code> bytes from the cache, starting
	* at cache position <code>pos</code>, into the array
	* <code>b</code> at offset <code>off</code>.
	*
	* @exception NullPointerException if b is <code>null</code>
	* @exception IndexOutOfBoundsException if <code>off</code>,
	* <code>len</code> or <code>pos</code> are negative or if
	* <code>off + len > b.length</code> or if any portion of the
	* requested data is not in the cache (including if
	* <code>pos</code> is in a block that has already been disposed).
	*/
	@:overload @:public public function read(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int, pos : haxe.Int64) : Void;
	
	/**
	* Free the blocks up to the position <code>pos</code>.
	* The byte at <code>pos</code> remains available.
	*
	* @exception IndexOutOfBoundsException if <code>pos</code>
	* is in a block that has already been disposed.
	*/
	@:overload @:public public function disposeBefore(pos : haxe.Int64) : Void;
	
	/**
	* Erase the entire cache contents and reset the length to 0.
	* The cache object may subsequently be reused as though it had just
	* been allocated.
	*/
	@:overload @:public public function reset() : Void;
	
	
}
