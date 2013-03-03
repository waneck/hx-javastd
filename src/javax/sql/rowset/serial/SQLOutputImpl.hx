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
extern class SQLOutputImpl implements java.sql.SQLOutput
{
	/**
	* Creates a new <code>SQLOutputImpl</code> object
	* initialized with the given vector of attributes and
	* type map.  The driver will use the type map to determine
	* which <code>SQLData.writeSQL</code> method to invoke.
	* This method will then call the appropriate
	* <code>SQLOutputImpl</code> writer methods in order and
	* thereby write the attributes to the new output stream.
	*
	* @param attributes a <code>Vector</code> object containing the attributes of
	*        the UDT to be mapped to one or more objects in the Java
	*        programming language
	*
	* @param map a <code>java.util.Map</code> object containing zero or
	*        more entries, with each entry consisting of 1) a <code>String</code>
	*        giving the fully qualified name of a UDT and 2) the
	*        <code>Class</code> object for the <code>SQLData</code> implementation
	*        that defines how the UDT is to be mapped
	* @throws SQLException if the <code>attributes</code> or the <code>map</code>
	*        is a <code>null</code> value
	*/
	@:overload @:public public function new(attributes : java.util.Vector<Dynamic>, map : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Writes a <code>String</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>CHAR</code>, <code>VARCHAR</code>, or
	* <code>LONGVARCHAR</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeString(x : String) : Void;
	
	/**
	* Writes a <code>boolean</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>BIT</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeBoolean(x : Bool) : Void;
	
	/**
	* Writes a <code>byte</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>BIT</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeByte(x : java.StdTypes.Int8) : Void;
	
	/**
	* Writes a <code>short</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>SMALLINT</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeShort(x : java.StdTypes.Int16) : Void;
	
	/**
	* Writes an <code>int</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>INTEGER</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeInt(x : Int) : Void;
	
	/**
	* Writes a <code>long</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>BIGINT</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeLong(x : haxe.Int64) : Void;
	
	/**
	* Writes a <code>float</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>REAL</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeFloat(x : Single) : Void;
	
	/**
	* Writes a <code>double</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>DOUBLE</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeDouble(x : Float) : Void;
	
	/**
	* Writes a <code>java.math.BigDecimal</code> object in the Java programming
	* language to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>NUMERIC</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeBigDecimal(x : java.math.BigDecimal) : Void;
	
	/**
	* Writes an array of <code>bytes</code> in the Java programming language
	* to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>VARBINARY</code> or <code>LONGVARBINARY</code>
	* before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeBytes(x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes a <code>java.sql.Date</code> object in the Java programming
	* language to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>DATE</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeDate(x : java.sql.Date) : Void;
	
	/**
	* Writes a <code>java.sql.Time</code> object in the Java programming
	* language to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>TIME</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeTime(x : java.sql.Time) : Void;
	
	/**
	* Writes a <code>java.sql.Timestamp</code> object in the Java programming
	* language to this <code>SQLOutputImpl</code> object. The driver converts
	* it to an SQL <code>TIMESTAMP</code> before returning it to the database.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeTimestamp(x : java.sql.Timestamp) : Void;
	
	/**
	* Writes a stream of Unicode characters to this
	* <code>SQLOutputImpl</code> object. The driver will do any necessary
	* conversion from Unicode to the database <code>CHAR</code> format.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeCharacterStream(x : java.io.Reader) : Void;
	
	/**
	* Writes a stream of ASCII characters to this
	* <code>SQLOutputImpl</code> object. The driver will do any necessary
	* conversion from ASCII to the database <code>CHAR</code> format.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeAsciiStream(x : java.io.InputStream) : Void;
	
	/**
	* Writes a stream of uninterpreted bytes to this <code>SQLOutputImpl</code>
	* object.
	*
	* @param x the value to pass to the database
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeBinaryStream(x : java.io.InputStream) : Void;
	
	/**
	* Writes to the stream the data contained in the given
	* <code>SQLData</code> object.
	* When the <code>SQLData</code> object is <code>null</code>, this
	* method writes an SQL <code>NULL</code> to the stream.
	* Otherwise, it calls the <code>SQLData.writeSQL</code>
	* method of the given object, which
	* writes the object's attributes to the stream.
	* <P>
	* The implementation of the method <code>SQLData.writeSQ</code>
	* calls the appropriate <code>SQLOutputImpl.writeXXX</code> method(s)
	* for writing each of the object's attributes in order.
	* The attributes must be read from an <code>SQLInput</code>
	* input stream and written to an <code>SQLOutputImpl</code>
	* output stream in the same order in which they were
	* listed in the SQL definition of the user-defined type.
	*
	* @param x the object representing data of an SQL structured or
	*          distinct type
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeObject(x : java.sql.SQLData) : Void;
	
	/**
	* Writes a <code>Ref</code> object in the Java programming language
	* to this <code>SQLOutputImpl</code> object.  The driver converts
	* it to a serializable <code>SerialRef</code> SQL <code>REF</code> value
	* before returning it to the database.
	*
	* @param x an object representing an SQL <code>REF</code> value
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeRef(x : java.sql.Ref) : Void;
	
	/**
	* Writes a <code>Blob</code> object in the Java programming language
	* to this <code>SQLOutputImpl</code> object.  The driver converts
	* it to a serializable <code>SerialBlob</code> SQL <code>BLOB</code> value
	* before returning it to the database.
	*
	* @param x an object representing an SQL <code>BLOB</code> value
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeBlob(x : java.sql.Blob) : Void;
	
	/**
	* Writes a <code>Clob</code> object in the Java programming language
	* to this <code>SQLOutputImpl</code> object.  The driver converts
	* it to a serializable <code>SerialClob</code> SQL <code>CLOB</code> value
	* before returning it to the database.
	*
	* @param x an object representing an SQL <code>CLOB</code> value
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeClob(x : java.sql.Clob) : Void;
	
	/**
	* Writes a <code>Struct</code> object in the Java
	* programming language to this <code>SQLOutputImpl</code>
	* object. The driver converts this value to an SQL structured type
	* before returning it to the database.
	* <P>
	* This method should be used when an SQL structured type has been
	* mapped to a <code>Struct</code> object in the Java programming
	* language (the standard mapping).  The method
	* <code>writeObject</code> should be used if an SQL structured type
	* has been custom mapped to a class in the Java programming language.
	*
	* @param x an object representing the attributes of an SQL structured type
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeStruct(x : java.sql.Struct) : Void;
	
	/**
	* Writes an <code>Array</code> object in the Java
	* programming language to this <code>SQLOutputImpl</code>
	* object. The driver converts this value to a serializable
	* <code>SerialArray</code> SQL <code>ARRAY</code>
	* value before returning it to the database.
	*
	* @param x an object representing an SQL <code>ARRAY</code> value
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeArray(x : java.sql.Array) : Void;
	
	/**
	* Writes an <code>java.sql.Type.DATALINK</code> object in the Java
	* programming language to this <code>SQLOutputImpl</code> object. The
	* driver converts this value to a serializable <code>SerialDatalink</code>
	* SQL <code>DATALINK</code> value before return it to the database.
	*
	* @param url an object representing a SQL <code>DATALINK</code> value
	* @throws SQLException if the <code>SQLOutputImpl</code> object is in
	*        use by a <code>SQLData</code> object attempting to write the attribute
	*        values of a UDT to the database.
	*/
	@:overload @:public public function writeURL(url : java.net.URL) : Void;
	
	/**
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language. The driver converts this to a
	* SQL <code>NCHAR</code> or
	* <code>NVARCHAR</code> or <code>LONGNVARCHAR</code> value
	* (depending on the argument's
	* size relative to the driver's limits on <code>NVARCHAR</code> values)
	* when it sends it to the stream.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function writeNString(x : String) : Void;
	
	/**
	* Writes an SQL <code>NCLOB</code> value to the stream.
	*
	* @param x a <code>NClob</code> object representing data of an SQL
	* <code>NCLOB</code> value
	*
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function writeNClob(x : java.sql.NClob) : Void;
	
	/**
	* Writes an SQL <code>ROWID</code> value to the stream.
	*
	* @param x a <code>RowId</code> object representing data of an SQL
	* <code>ROWID</code> value
	*
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function writeRowId(x : java.sql.RowId) : Void;
	
	/**
	* Writes an SQL <code>XML</code> value to the stream.
	*
	* @param x a <code>SQLXML</code> object representing data of an SQL
	* <code>XML</code> value
	*
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function writeSQLXML(x : java.sql.SQLXML) : Void;
	
	
}
