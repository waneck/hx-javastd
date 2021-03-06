package javax.sql.rowset.serial;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class SQLInputImpl implements java.sql.SQLInput
{
	/**
	* Creates an <code>SQLInputImpl</code> object initialized with the
	* given array of attributes and the given type map. If any of the
	* attributes is a UDT whose name is in an entry in the type map,
	* the attribute will be mapped according to the corresponding
	* <code>SQLData</code> implementation.
	*
	* @param attributes an array of <code>Object</code> instances in which
	*        each element is an attribute of a UDT. The order of the
	*        attributes in the array is the same order in which
	*        the attributes were defined in the UDT definition.
	* @param map a <code>java.util.Map</code> object containing zero or more
	*        entries, with each entry consisting of 1) a <code>String</code>
	*        giving the fully
	*        qualified name of the UDT and 2) the <code>Class</code> object
	*        for the <code>SQLData</code> implementation that defines how
	*        the UDT is to be mapped
	* @throws SQLException if the <code>attributes</code> or the <code>map</code>
	*        is a <code>null</code> value
	*/
	@:overload @:public public function new(attributes : java.NativeArray<Dynamic>, map : java.util.Map<String, Class<Dynamic>>) : Void;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object as
	* a <code>String</code> in the Java programming language.
	* <p>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code>
	* implementation.
	* <p>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*     if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*     position or if there are no further values in the stream.
	*/
	@:overload @:public public function readString() : String;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object as
	* a <code>boolean</code> in the Java programming language.
	* <p>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code>
	* implementation.
	* <p>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*     if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*     position or if there are no further values in the stream.
	*/
	@:overload @:public public function readBoolean() : Bool;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object as
	* a <code>byte</code> in the Java programming language.
	* <p>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code>
	* implementation.
	* <p>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*     if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*     position or if there are no further values in the stream
	*/
	@:overload @:public public function readByte() : java.StdTypes.Int8;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a <code>short</code> in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readShort() : java.StdTypes.Int16;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as an <code>int</code> in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readInt() : Int;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a <code>long</code> in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readLong() : haxe.Int64;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a <code>float</code> in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readFloat() : Single;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a <code>double</code> in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readDouble() : Float;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a <code>java.math.BigDecimal</code>.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readBigDecimal() : java.math.BigDecimal;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as an array of bytes.
	* <p>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> as
	* a <code>java.sql.Date</code> object.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type; this responsibility is delegated
	* to the UDT mapping as defined by a <code>SQLData</code> implementation.
	* <P>
	* @return the next attribute in this <code>SQLInputImpl</code> object;
	*       if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*       position or if there are no more values in the stream
	*/
	@:overload @:public public function readDate() : java.sql.Date;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object as
	* a <code>java.sql.Time</code> object.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return the attribute; if the value is <code>SQL NULL</code>, return
	* <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readTime() : java.sql.Time;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object as
	* a <code>java.sql.Timestamp</code> object.
	*
	* @return the attribute; if the value is <code>SQL NULL</code>, return
	* <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readTimestamp() : java.sql.Timestamp;
	
	/**
	* Retrieves the next attribute in this <code>SQLInputImpl</code> object
	* as a stream of Unicode characters.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return the attribute; if the value is <code>SQL NULL</code>, return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readCharacterStream() : java.io.Reader;
	
	/**
	* Returns the next attribute in this <code>SQLInputImpl</code> object
	* as a stream of ASCII characters.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return the attribute; if the value is <code>SQL NULL</code>,
	* return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readAsciiStream() : java.io.InputStream;
	
	/**
	* Returns the next attribute in this <code>SQLInputImpl</code> object
	* as a stream of uninterpreted bytes.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return the attribute; if the value is <code>SQL NULL</code>, return
	* <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readBinaryStream() : java.io.InputStream;
	
	/**
	* Retrieves the value at the head of this <code>SQLInputImpl</code>
	* object as an <code>Object</code> in the Java programming language.  The
	* actual type of the object returned is determined by the default
	* mapping of SQL types to types in the Java programming language unless
	* there is a custom mapping, in which case the type of the object
	* returned is determined by this stream's type map.
	* <P>
	* The JDBC technology-enabled driver registers a type map with the stream
	* before passing the stream to the application.
	* <P>
	* When the datum at the head of the stream is an SQL <code>NULL</code>,
	* this method returns <code>null</code>.  If the datum is an SQL
	* structured or distinct type with a custom mapping, this method
	* determines the SQL type of the datum at the head of the stream,
	* constructs an object of the appropriate class, and calls the method
	* <code>SQLData.readSQL</code> on that object. The <code>readSQL</code>
	* method then calls the appropriate <code>SQLInputImpl.readXXX</code>
	* methods to retrieve the attribute values from the stream.
	*
	* @return the value at the head of the stream as an <code>Object</code>
	*         in the Java programming language; <code>null</code> if
	*         the value is SQL <code>NULL</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readObject() : Dynamic;
	
	/**
	* Retrieves the value at the head of this <code>SQLInputImpl</code> object
	* as a <code>Ref</code> object in the Java programming language.
	*
	* @return a <code>Ref</code> object representing the SQL
	*         <code>REF</code> value at the head of the stream; if the value
	*         is <code>SQL NULL</code> return <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	*         position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readRef() : java.sql.Ref;
	
	/**
	* Retrieves the <code>BLOB</code> value at the head of this
	* <code>SQLInputImpl</code> object as a <code>Blob</code> object
	* in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return a <code>Blob</code> object representing the SQL
	*         <code>BLOB</code> value at the head of this stream;
	*         if the value is <code>SQL NULL</code>, return
	*         <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readBlob() : java.sql.Blob;
	
	/**
	* Retrieves the <code>CLOB</code> value at the head of this
	* <code>SQLInputImpl</code> object as a <code>Clob</code> object
	* in the Java programming language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return a <code>Clob</code> object representing the SQL
	*         <code>CLOB</code> value at the head of the stream;
	*         if the value is <code>SQL NULL</code>, return
	*         <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readClob() : java.sql.Clob;
	
	/**
	* Reads an SQL <code>ARRAY</code> value from the stream and
	* returns it as an <code>Array</code> object in the Java programming
	* language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return an <code>Array</code> object representing the SQL
	*         <code>ARRAY</code> value at the head of the stream; *
	*         if the value is <code>SQL NULL</code>, return
	*         <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.

	*/
	@:overload @:public public function readArray() : java.sql.Array;
	
	/**
	* Ascertains whether the last value read from this
	* <code>SQLInputImpl</code> object was <code>null</code>.
	*
	* @return <code>true</code> if the SQL value read most recently was
	*         <code>null</code>; otherwise, <code>false</code>; by default it
	*         will return false
	* @throws SQLException if an error occurs determining the last value
	*         read was a <code>null</code> value or not;
	*/
	@:overload @:public public function wasNull() : Bool;
	
	/**
	* Reads an SQL <code>DATALINK</code> value from the stream and
	* returns it as an <code>URL</code> object in the Java programming
	* language.
	* <P>
	* This method does not perform type-safe checking to determine if the
	* returned type is the expected type as this responsibility is delegated
	* to the UDT mapping as implemented by a <code>SQLData</code>
	* implementation.
	*
	* @return an <code>URL</code> object representing the SQL
	*         <code>DATALINK</code> value at the head of the stream; *
	*         if the value is <code>SQL NULL</code>, return
	*         <code>null</code>
	* @throws SQLException if the read position is located at an invalid
	* position; or if there are no further values in the stream.
	*/
	@:overload @:public public function readURL() : java.net.URL;
	
	/**
	* Reads an SQL <code>NCLOB</code> value from the stream and returns it as a
	* <code>Clob</code> object in the Java programming language.
	*
	* @return a <code>NClob</code> object representing data of the SQL <code>NCLOB</code> value
	* at the head of the stream; <code>null</code> if the value read is
	* SQL <code>NULL</code>
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:public public function readNClob() : java.sql.NClob;
	
	/**
	* Reads the next attribute in the stream and returns it as a <code>String</code>
	* in the Java programming language. It is intended for use when
	* accessing  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* @return the attribute; if the value is SQL <code>NULL</code>, returns <code>null</code>
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:public public function readNString() : String;
	
	/**
	* Reads an SQL <code>XML</code> value from the stream and returns it as a
	* <code>SQLXML</code> object in the Java programming language.
	*
	* @return a <code>SQLXML</code> object representing data of the SQL <code>XML</code> value
	* at the head of the stream; <code>null</code> if the value read is
	* SQL <code>NULL</code>
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:public public function readSQLXML() : java.sql.SQLXML;
	
	/**
	* Reads an SQL <code>ROWID</code> value from the stream and returns it as a
	* <code>RowId</code> object in the Java programming language.
	*
	* @return a <code>RowId</code> object representing data of the SQL <code>ROWID</code> value
	* at the head of the stream; <code>null</code> if the value read is
	* SQL <code>NULL</code>
	* @exception SQLException if a database access error occurs
	*/
	@:overload @:public public function readRowId() : java.sql.RowId;
	
	
}
