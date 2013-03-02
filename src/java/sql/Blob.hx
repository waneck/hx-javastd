package java.sql;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface Blob
{
	/**
	* Returns the number of bytes in the <code>BLOB</code> value
	* designated by this <code>Blob</code> object.
	* @return length of the <code>BLOB</code> in bytes
	* @exception SQLException if there is an error accessing the
	* length of the <code>BLOB</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function length() : haxe.Int64;
	
	/**
	* Retrieves all or part of the <code>BLOB</code>
	* value that this <code>Blob</code> object represents, as an array of
	* bytes.  This <code>byte</code> array contains up to <code>length</code>
	* consecutive bytes starting at position <code>pos</code>.
	*
	* @param pos the ordinal position of the first byte in the
	*        <code>BLOB</code> value to be extracted; the first byte is at
	*        position 1
	* @param length the number of consecutive bytes to be copied; the value
	* for length must be 0 or greater
	* @return a byte array containing up to <code>length</code>
	*         consecutive bytes from the <code>BLOB</code> value designated
	*         by this <code>Blob</code> object, starting with the
	*         byte at position <code>pos</code>
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value; if pos is less than 1 or length is
	* less than 0
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #setBytes
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBytes(pos : haxe.Int64, length : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the <code>BLOB</code> value designated by this
	* <code>Blob</code> instance as a stream.
	*
	* @return a stream containing the <code>BLOB</code> data
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #setBinaryStream
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBinaryStream() : java.io.InputStream;
	
	/**
	* Retrieves the byte position at which the specified byte array
	* <code>pattern</code> begins within the <code>BLOB</code>
	* value that this <code>Blob</code> object represents.  The
	* search for <code>pattern</code> begins at position
	* <code>start</code>.
	*
	* @param pattern the byte array for which to search
	* @param start the position at which to begin searching; the
	*        first position is 1
	* @return the position at which the pattern appears, else -1
	* @exception SQLException if there is an error accessing the
	* <code>BLOB</code> or if start is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function position(pattern : java.NativeArray<java.StdTypes.Int8>, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Retrieves the byte position in the <code>BLOB</code> value
	* designated by this <code>Blob</code> object at which
	* <code>pattern</code> begins.  The search begins at position
	* <code>start</code>.
	*
	* @param pattern the <code>Blob</code> object designating
	* the <code>BLOB</code> value for which to search
	* @param start the position in the <code>BLOB</code> value
	*        at which to begin searching; the first position is 1
	* @return the position at which the pattern begins, else -1
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value or if start is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function position(pattern : java.sql.Blob, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Writes the given array of bytes to the <code>BLOB</code> value that
	* this <code>Blob</code> object represents, starting at position
	* <code>pos</code>, and returns the number of bytes written.
	* The array of bytes will overwrite the existing bytes
	* in the <code>Blob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Blob</code> value is reached
	* while writing the array of bytes, then the length of the <code>Blob</code>
	* value will be increased to accomodate the extra bytes.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>BLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position in the <code>BLOB</code> object at which
	*        to start writing; the first position is 1
	* @param bytes the array of bytes to be written to the <code>BLOB</code>
	*        value that this <code>Blob</code> object represents
	* @return the number of bytes written
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getBytes
	* @since 1.4
	*/
	@:require(java4) @:overload public function setBytes(pos : haxe.Int64, bytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Writes all or part of the given <code>byte</code> array to the
	* <code>BLOB</code> value that this <code>Blob</code> object represents
	* and returns the number of bytes written.
	* Writing starts at position <code>pos</code> in the <code>BLOB</code>
	* value; <code>len</code> bytes from the given byte array are written.
	* The array of bytes will overwrite the existing bytes
	* in the <code>Blob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Blob</code> value is reached
	* while writing the array of bytes, then the length of the <code>Blob</code>
	* value will be increased to accomodate the extra bytes.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>BLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position in the <code>BLOB</code> object at which
	*        to start writing; the first position is 1
	* @param bytes the array of bytes to be written to this <code>BLOB</code>
	*        object
	* @param offset the offset into the array <code>bytes</code> at which
	*        to start reading the bytes to be set
	* @param len the number of bytes to be written to the <code>BLOB</code>
	*        value from the array of bytes <code>bytes</code>
	* @return the number of bytes written
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getBytes
	* @since 1.4
	*/
	@:require(java4) @:overload public function setBytes(pos : haxe.Int64, bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, len : Int) : Int;
	
	/**
	* Retrieves a stream that can be used to write to the <code>BLOB</code>
	* value that this <code>Blob</code> object represents.  The stream begins
	* at position <code>pos</code>.
	* The  bytes written to the stream will overwrite the existing bytes
	* in the <code>Blob</code> object starting at the position
	* <code>pos</code>.  If the end of the <code>Blob</code> value is reached
	* while writing to the stream, then the length of the <code>Blob</code>
	* value will be increased to accomodate the extra bytes.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>BLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param pos the position in the <code>BLOB</code> value at which
	*        to start writing; the first position is 1
	* @return a <code>java.io.OutputStream</code> object to which data can
	*         be written
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value or if pos is less than 1
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getBinaryStream
	* @since 1.4
	*/
	@:require(java4) @:overload public function setBinaryStream(pos : haxe.Int64) : java.io.OutputStream;
	
	/**
	* Truncates the <code>BLOB</code> value that this <code>Blob</code>
	* object represents to be <code>len</code> bytes in length.
	* <p>
	* <b>Note:</b> If the value specified for <code>pos</code>
	* is greater then the length+1 of the <code>BLOB</code> value then the
	* behavior is undefined. Some JDBC drivers may throw a
	* <code>SQLException</code> while other drivers may support this
	* operation.
	*
	* @param len the length, in bytes, to which the <code>BLOB</code> value
	*        that this <code>Blob</code> object represents should be truncated
	* @exception SQLException if there is an error accessing the
	*            <code>BLOB</code> value or if len is less than 0
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function truncate(len : haxe.Int64) : Void;
	
	/**
	* This method frees the <code>Blob</code> object and releases the resources that
	* it holds. The object is invalid once the <code>free</code>
	* method is called.
	*<p>
	* After <code>free</code> has been called, any attempt to invoke a
	* method other than <code>free</code> will result in a <code>SQLException</code>
	* being thrown.  If <code>free</code> is called multiple times, the subsequent
	* calls to <code>free</code> are treated as a no-op.
	*<p>
	*
	* @throws SQLException if an error occurs releasing
	* the Blob's resources
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function free() : Void;
	
	/**
	* Returns an <code>InputStream</code> object that contains a partial <code>Blob</code> value,
	* starting  with the byte specified by pos, which is length bytes in length.
	*
	* @param pos the offset to the first byte of the partial value to be retrieved.
	*  The first byte in the <code>Blob</code> is at position 1
	* @param length the length in bytes of the partial value to be retrieved
	* @return <code>InputStream</code> through which the partial <code>Blob</code> value can be read.
	* @throws SQLException if pos is less than 1 or if pos is greater than the number of bytes
	* in the <code>Blob</code> or if pos + length is greater than the number of bytes
	* in the <code>Blob</code>
	*
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getBinaryStream(pos : haxe.Int64, length : haxe.Int64) : java.io.InputStream;
	
	
}
