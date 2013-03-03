package java.util.zip;
/*
* Copyright (c) 1995, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ZipEntry implements java.util.zip.ZipConstants implements java.lang.Cloneable
{
	/**
	* Compression method for uncompressed entries.
	*/
	@:public @:static @:final public static var STORED(default, null) : Int;
	
	/**
	* Compression method for compressed (deflated) entries.
	*/
	@:public @:static @:final public static var DEFLATED(default, null) : Int;
	
	/**
	* Creates a new zip entry with the specified name.
	*
	* @param name the entry name
	* @exception NullPointerException if the entry name is null
	* @exception IllegalArgumentException if the entry name is longer than
	*            0xFFFF bytes
	*/
	@:overload @:public public function new(name : String) : Void;
	
	/**
	* Creates a new zip entry with fields taken from the specified
	* zip entry.
	* @param e a zip Entry object
	*/
	@:overload @:public public function new(e : java.util.zip.ZipEntry) : Void;
	
	/**
	* Returns the name of the entry.
	* @return the name of the entry
	*/
	@:overload @:public public function getName() : String;
	
	/**
	* Sets the modification time of the entry.
	* @param time the entry modification time in number of milliseconds
	*             since the epoch
	* @see #getTime()
	*/
	@:overload @:public public function setTime(time : haxe.Int64) : Void;
	
	/**
	* Returns the modification time of the entry, or -1 if not specified.
	* @return the modification time of the entry, or -1 if not specified
	* @see #setTime(long)
	*/
	@:overload @:public public function getTime() : haxe.Int64;
	
	/**
	* Sets the uncompressed size of the entry data.
	* @param size the uncompressed size in bytes
	* @exception IllegalArgumentException if the specified size is less
	*            than 0, is greater than 0xFFFFFFFF when
	*            <a href="package-summary.html#zip64">ZIP64 format</a> is not supported,
	*            or is less than 0 when ZIP64 is supported
	* @see #getSize()
	*/
	@:overload @:public public function setSize(size : haxe.Int64) : Void;
	
	/**
	* Returns the uncompressed size of the entry data, or -1 if not known.
	* @return the uncompressed size of the entry data, or -1 if not known
	* @see #setSize(long)
	*/
	@:overload @:public public function getSize() : haxe.Int64;
	
	/**
	* Returns the size of the compressed entry data, or -1 if not known.
	* In the case of a stored entry, the compressed size will be the same
	* as the uncompressed size of the entry.
	* @return the size of the compressed entry data, or -1 if not known
	* @see #setCompressedSize(long)
	*/
	@:overload @:public public function getCompressedSize() : haxe.Int64;
	
	/**
	* Sets the size of the compressed entry data.
	* @param csize the compressed size to set to
	* @see #getCompressedSize()
	*/
	@:overload @:public public function setCompressedSize(csize : haxe.Int64) : Void;
	
	/**
	* Sets the CRC-32 checksum of the uncompressed entry data.
	* @param crc the CRC-32 value
	* @exception IllegalArgumentException if the specified CRC-32 value is
	*            less than 0 or greater than 0xFFFFFFFF
	* @see #getCrc()
	*/
	@:overload @:public public function setCrc(crc : haxe.Int64) : Void;
	
	/**
	* Returns the CRC-32 checksum of the uncompressed entry data, or -1 if
	* not known.
	* @return the CRC-32 checksum of the uncompressed entry data, or -1 if
	* not known
	* @see #setCrc(long)
	*/
	@:overload @:public public function getCrc() : haxe.Int64;
	
	/**
	* Sets the compression method for the entry.
	* @param method the compression method, either STORED or DEFLATED
	* @exception IllegalArgumentException if the specified compression
	*            method is invalid
	* @see #getMethod()
	*/
	@:overload @:public public function setMethod(method : Int) : Void;
	
	/**
	* Returns the compression method of the entry, or -1 if not specified.
	* @return the compression method of the entry, or -1 if not specified
	* @see #setMethod(int)
	*/
	@:overload @:public public function getMethod() : Int;
	
	/**
	* Sets the optional extra field data for the entry.
	* @param extra the extra field data bytes
	* @exception IllegalArgumentException if the length of the specified
	*            extra field data is greater than 0xFFFF bytes
	* @see #getExtra()
	*/
	@:overload @:public public function setExtra(extra : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Returns the extra field data for the entry, or null if none.
	* @return the extra field data for the entry, or null if none
	* @see #setExtra(byte[])
	*/
	@:overload @:public public function getExtra() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Sets the optional comment string for the entry.
	*
	* <p>ZIP entry comments have maximum length of 0xffff. If the length of the
	* specified comment string is greater than 0xFFFF bytes after encoding, only
	* the first 0xFFFF bytes are output to the ZIP file entry.
	*
	* @param comment the comment string
	*
	* @see #getComment()
	*/
	@:overload @:public public function setComment(comment : String) : Void;
	
	/**
	* Returns the comment string for the entry, or null if none.
	* @return the comment string for the entry, or null if none
	* @see #setComment(String)
	*/
	@:overload @:public public function getComment() : String;
	
	/**
	* Returns true if this is a directory entry. A directory entry is
	* defined to be one whose name ends with a '/'.
	* @return true if this is a directory entry
	*/
	@:overload @:public public function isDirectory() : Bool;
	
	/**
	* Returns a string representation of the ZIP entry.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Returns the hash code value for this entry.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* Returns a copy of this entry.
	*/
	@:overload @:public public function clone() : Dynamic;
	
	
}
