package javax.sql.rowset.serial;
/*
* Copyright (c) 2003, 2010, Oracle and/or its affiliates. All rights reserved.
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
* A serialized mapping in the Java programming language of an SQL
* <code>BLOB</code> value.
* <P>
* The <code>SerialBlob</code> class provides a constructor for creating
* an instance from a <code>Blob</code> object.  Note that the
* <code>Blob</code>
* object should have brought the SQL <code>BLOB</code> value's data over
* to the client before a <code>SerialBlob</code> object
* is constructed from it.  The data of an SQL <code>BLOB</code> value can
* be materialized on the client as an array of bytes (using the method
* <code>Blob.getBytes</code>) or as a stream of uninterpreted bytes
* (using the method <code>Blob.getBinaryStream</code>).
* <P>
* <code>SerialBlob</code> methods make it possible to make a copy of a
* <code>SerialBlob</code> object as an array of bytes or as a stream.
* They also make it possible to locate a given pattern of bytes or a
* <code>Blob</code> object within a <code>SerialBlob</code> object
* and to update or truncate a <code>Blob</code> object.
*
* @author Jonathan Bruce
*/
extern class SerialBlob implements java.sql.Blob implements java.io.Serializable implements java.lang.Cloneable
{
	/**
	* Constructs a <code>SerialBlob</code> object that is a serialized version of
	* the given <code>byte</code> array.
	* <p>
	* The new <code>SerialBlob</code> object is initialized with the data from the
	* <code>byte</code> array, thus allowing disconnected <code>RowSet</code>
	* objects to establish serialized <code>Blob</code> objects without
	* touching the data source.
	*
	* @param b the <code>byte</code> array containing the data for the
	*        <code>Blob</code> object to be serialized
	* @throws SerialException if an error occurs during serialization
	* @throws SQLException if a SQL errors occurs
	*/
	@:overload @:public public function new(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructs a <code>SerialBlob</code> object that is a serialized
	* version of the given <code>Blob</code> object.
	* <P>
	* The new <code>SerialBlob</code> object is initialized with the
	* data from the <code>Blob</code> object; therefore, the
	* <code>Blob</code> object should have previously brought the
	* SQL <code>BLOB</code> value's data over to the client from
	* the database. Otherwise, the new <code>SerialBlob</code> object
	* will contain no data.
	*
	* @param blob the <code>Blob</code> object from which this
	*     <code>SerialBlob</code> object is to be constructed;
	*     cannot be null.
	* @throws SerialException if an error occurs during serialization
	* @throws SQLException if the <code>Blob</code> passed to this
	*     to this constructor is a <code>null</code>.
	* @see java.sql.Blob
	*/
	@:overload @:public public function new(blob : java.sql.Blob) : Void;
	
	/**
	* Copies the specified number of bytes, starting at the given
	* position, from this <code>SerialBlob</code> object to
	* another array of bytes.
	* <P>
	* Note that if the given number of bytes to be copied is larger than
	* the length of this <code>SerialBlob</code> object's array of
	* bytes, the given number will be shortened to the array's length.
	*
	* @param pos the ordinal position of the first byte in this
	*            <code>SerialBlob</code> object to be copied;
	*            numbering starts at <code>1</code>; must not be less
	*            than <code>1</code> and must be less than or equal
	*            to the length of this <code>SerialBlob</code> object
	* @param length the number of bytes to be copied
	* @return an array of bytes that is a copy of a region of this
	*         <code>SerialBlob</code> object, starting at the given
	*         position and containing the given number of consecutive bytes
	* @throws SerialException if the given starting position is out of bounds
	*/
	@:overload @:public public function getBytes(pos : haxe.Int64, length : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the number of bytes in this <code>SerialBlob</code>
	* object's array of bytes.
	*
	* @return a <code>long</code> indicating the length in bytes of this
	*         <code>SerialBlob</code> object's array of bytes
	* @throws SerialException if an error occurs
	*/
	@:overload @:public public function length() : haxe.Int64;
	
	/**
	* Returns this <code>SerialBlob</code> object as an input stream.
	* Unlike the related method, <code>setBinaryStream</code>,
	* a stream is produced regardless of whether the <code>SerialBlob</code>
	* was created with a <code>Blob</code> object or a <code>byte</code> array.
	*
	* @return a <code>java.io.InputStream</code> object that contains
	*         this <code>SerialBlob</code> object's array of bytes
	* @throws SerialException if an error occurs
	* @see #setBinaryStream
	*/
	@:overload @:public public function getBinaryStream() : java.io.InputStream;
	
	/**
	* Returns the position in this <code>SerialBlob</code> object where
	* the given pattern of bytes begins, starting the search at the
	* specified position.
	*
	* @param pattern the pattern of bytes for which to search
	* @param start the position of the byte in this
	*              <code>SerialBlob</code> object from which to begin
	*              the search; the first position is <code>1</code>;
	*              must not be less than <code>1</code> nor greater than
	*              the length of this <code>SerialBlob</code> object
	* @return the position in this <code>SerialBlob</code> object
	*         where the given pattern begins, starting at the specified
	*         position; <code>-1</code> if the pattern is not found
	*         or the given starting position is out of bounds; position
	*         numbering for the return value starts at <code>1</code>
	* @throws SerialException if an error occurs when serializing the blob
	* @throws SQLException if there is an error accessing the <code>BLOB</code>
	*         value from the database
	*/
	@:overload @:public public function position(pattern : java.NativeArray<java.StdTypes.Int8>, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Returns the position in this <code>SerialBlob</code> object where
	* the given <code>Blob</code> object begins, starting the search at the
	* specified position.
	*
	* @param pattern the <code>Blob</code> object for which to search;
	* @param start the position of the byte in this
	*              <code>SerialBlob</code> object from which to begin
	*              the search; the first position is <code>1</code>;
	*              must not be less than <code>1</code> nor greater than
	*              the length of this <code>SerialBlob</code> object
	* @return the position in this <code>SerialBlob</code> object
	*         where the given <code>Blob</code> object begins, starting
	*         at the specified position; <code>-1</code> if the pattern is
	*         not found or the given starting position is out of bounds;
	*         position numbering for the return value starts at <code>1</code>
	* @throws SerialException if an error occurs when serializing the blob
	* @throws SQLException if there is an error accessing the <code>BLOB</code>
	*         value from the database
	*/
	@:overload @:public public function position(pattern : java.sql.Blob, start : haxe.Int64) : haxe.Int64;
	
	/**
	* Writes the given array of bytes to the <code>BLOB</code> value that
	* this <code>Blob</code> object represents, starting at position
	* <code>pos</code>, and returns the number of bytes written.
	*
	* @param pos the position in the SQL <code>BLOB</code> value at which
	*     to start writing. The first position is <code>1</code>;
	*     must not be less than <code>1</code> nor greater than
	*     the length of this <code>SerialBlob</code> object.
	* @param bytes the array of bytes to be written to the <code>BLOB</code>
	*        value that this <code>Blob</code> object represents
	* @return the number of bytes written
	* @throws SerialException if there is an error accessing the
	*     <code>BLOB</code> value; or if an invalid position is set; if an
	*     invalid offset value is set
	* @throws SQLException if there is an error accessing the <code>BLOB</code>
	*         value from the database
	* @see #getBytes
	*/
	@:overload @:public public function setBytes(pos : haxe.Int64, bytes : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	/**
	* Writes all or part of the given <code>byte</code> array to the
	* <code>BLOB</code> value that this <code>Blob</code> object represents
	* and returns the number of bytes written.
	* Writing starts at position <code>pos</code> in the <code>BLOB</code>
	* value; <i>len</i> bytes from the given byte array are written.
	*
	* @param pos the position in the <code>BLOB</code> object at which
	*     to start writing. The first position is <code>1</code>;
	*     must not be less than <code>1</code> nor greater than
	*     the length of this <code>SerialBlob</code> object.
	* @param bytes the array of bytes to be written to the <code>BLOB</code>
	*     value
	* @param offset the offset in the <code>byte</code> array at which
	*     to start reading the bytes. The first offset position is
	*     <code>0</code>; must not be less than <code>0</code> nor greater
	*     than the length of the <code>byte</code> array
	* @param length the number of bytes to be written to the
	*     <code>BLOB</code> value from the array of bytes <i>bytes</i>.
	*
	* @return the number of bytes written
	* @throws SerialException if there is an error accessing the
	*     <code>BLOB</code> value; if an invalid position is set; if an
	*     invalid offset value is set; if number of bytes to be written
	*     is greater than the <code>SerialBlob</code> length; or the combined
	*     values of the length and offset is greater than the Blob buffer
	* @throws SQLException if there is an error accessing the <code>BLOB</code>
	*         value from the database.
	* @see #getBytes
	*/
	@:overload @:public public function setBytes(pos : haxe.Int64, bytes : java.NativeArray<java.StdTypes.Int8>, offset : Int, length : Int) : Int;
	
	/**
	* Retrieves a stream that can be used to write to the <code>BLOB</code>
	* value that this <code>Blob</code> object represents.  The stream begins
	* at position <code>pos</code>. This method forwards the
	* <code>setBinaryStream()</code> call to the underlying <code>Blob</code> in
	* the event that this <code>SerialBlob</code> object is instantiated with a
	* <code>Blob</code>. If this <code>SerialBlob</code> is instantiated with
	* a <code>byte</code> array, a <code>SerialException</code> is thrown.
	*
	* @param pos the position in the <code>BLOB</code> value at which
	*        to start writing
	* @return a <code>java.io.OutputStream</code> object to which data can
	*         be written
	* @throws SQLException if there is an error accessing the
	*            <code>BLOB</code> value
	* @throws SerialException if the SerialBlob in not instantiated with a
	*     <code>Blob</code> object that supports <code>setBinaryStream()</code>
	* @see #getBinaryStream
	*/
	@:overload @:public public function setBinaryStream(pos : haxe.Int64) : java.io.OutputStream;
	
	/**
	* Truncates the <code>BLOB</code> value that this <code>Blob</code>
	* object represents to be <code>len</code> bytes in length.
	*
	* @param length the length, in bytes, to which the <code>BLOB</code>
	*        value that this <code>Blob</code> object represents should be
	*        truncated
	* @throws SerialException if there is an error accessing the Blob value;
	*     or the length to truncate is greater that the SerialBlob length
	*/
	@:overload @:public public function truncate(length : haxe.Int64) : Void;
	
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
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function getBinaryStream(pos : haxe.Int64, length : haxe.Int64) : java.io.InputStream;
	
	/**
	* This method frees the <code>Blob</code> object and releases the resources that it holds.
	* <code>Blob</code> object. The object is invalid once the <code>free</code>
	* method is called. If <code>free</code> is called multiple times, the subsequent
	* calls to <code>free</code> are treated as a no-op.
	*
	* @throws SQLException if an error occurs releasing
	* the Blob's resources
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function free() : Void;
	
	
}
