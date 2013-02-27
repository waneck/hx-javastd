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
/**
* The output stream for writing the attributes of a user-defined
* type back to the database.  This interface, used
* only for custom mapping, is used by the driver, and its
* methods are never directly invoked by a programmer.
* <p>When an object of a class implementing the interface
* <code>SQLData</code> is passed as an argument to an SQL statement, the
* JDBC driver calls the method <code>SQLData.getSQLType</code> to
* determine the  kind of SQL
* datum being passed to the database.
* The driver then creates an instance of <code>SQLOutput</code> and
* passes it to the method <code>SQLData.writeSQL</code>.
* The method <code>writeSQL</code> in turn calls the
* appropriate <code>SQLOutput</code> <i>writer</i> methods
* <code>writeBoolean</code>, <code>writeCharacterStream</code>, and so on)
* to write data from the <code>SQLData</code> object to
* the <code>SQLOutput</code> output stream as the
* representation of an SQL user-defined type.
* @since 1.2
*/
@:require(java2) extern interface SQLOutput
{
	/**
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeString(x : String) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java boolean.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeBoolean(x : Bool) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java byte.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeByte(x : java.StdTypes.Int8) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java short.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeShort(x : java.StdTypes.Int16) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java int.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeInt(x : Int) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java long.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeLong(x : haxe.Int64) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java float.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeFloat(x : Single) : Void;
	
	/**
	* Writes the next attribute to the stream as a Java double.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeDouble(x : Float) : Void;
	
	/**
	* Writes the next attribute to the stream as a java.math.BigDecimal object.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeBigDecimal(x : java.math.BigDecimal) : Void;
	
	/**
	* Writes the next attribute to the stream as an array of bytes.
	* Writes the next attribute to the stream as a <code>String</code>
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeBytes(x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Writes the next attribute to the stream as a java.sql.Date object.
	* Writes the next attribute to the stream as a <code>java.sql.Date</code> object
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeDate(x : java.sql.Date) : Void;
	
	/**
	* Writes the next attribute to the stream as a java.sql.Time object.
	* Writes the next attribute to the stream as a <code>java.sql.Date</code> object
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeTime(x : java.sql.Time) : Void;
	
	/**
	* Writes the next attribute to the stream as a java.sql.Timestamp object.
	* Writes the next attribute to the stream as a <code>java.sql.Date</code> object
	* in the Java programming language.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeTimestamp(x : java.sql.Timestamp) : Void;
	
	/**
	* Writes the next attribute to the stream as a stream of Unicode characters.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeCharacterStream(x : java.io.Reader) : Void;
	
	/**
	* Writes the next attribute to the stream as a stream of ASCII characters.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeAsciiStream(x : java.io.InputStream) : Void;
	
	/**
	* Writes the next attribute to the stream as a stream of uninterpreted
	* bytes.
	*
	* @param x the value to pass to the database
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeBinaryStream(x : java.io.InputStream) : Void;
	
	/**
	* Writes to the stream the data contained in the given
	* <code>SQLData</code> object.
	* When the <code>SQLData</code> object is <code>null</code>, this
	* method writes an SQL <code>NULL</code> to the stream.
	* Otherwise, it calls the <code>SQLData.writeSQL</code>
	* method of the given object, which
	* writes the object's attributes to the stream.
	* The implementation of the method <code>SQLData.writeSQ</code>
	* calls the appropriate <code>SQLOutput</code> writer method(s)
	* for writing each of the object's attributes in order.
	* The attributes must be read from an <code>SQLInput</code>
	* input stream and written to an <code>SQLOutput</code>
	* output stream in the same order in which they were
	* listed in the SQL definition of the user-defined type.
	*
	* @param x the object representing data of an SQL structured or
	* distinct type
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeObject(x : java.sql.SQLData) : Void;
	
	/**
	* Writes an SQL <code>REF</code> value to the stream.
	*
	* @param x a <code>Ref</code> object representing data of an SQL
	* <code>REF</code> value
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeRef(x : java.sql.Ref) : Void;
	
	/**
	* Writes an SQL <code>BLOB</code> value to the stream.
	*
	* @param x a <code>Blob</code> object representing data of an SQL
	* <code>BLOB</code> value
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeBlob(x : java.sql.Blob) : Void;
	
	/**
	* Writes an SQL <code>CLOB</code> value to the stream.
	*
	* @param x a <code>Clob</code> object representing data of an SQL
	* <code>CLOB</code> value
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeClob(x : java.sql.Clob) : Void;
	
	/**
	* Writes an SQL structured type value to the stream.
	*
	* @param x a <code>Struct</code> object representing data of an SQL
	* structured type
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeStruct(x : java.sql.Struct) : Void;
	
	/**
	* Writes an SQL <code>ARRAY</code> value to the stream.
	*
	* @param x an <code>Array</code> object representing data of an SQL
	* <code>ARRAY</code> type
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function writeArray(x : java.sql.Array) : Void;
	
	/**
	* Writes a SQL <code>DATALINK</code> value to the stream.
	*
	* @param x a <code>java.net.URL</code> object representing the data
	* of SQL DATALINK type
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function writeURL(x : java.net.URL) : Void;
	
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
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function writeNString(x : String) : Void;
	
	/**
	* Writes an SQL <code>NCLOB</code> value to the stream.
	*
	* @param x a <code>NClob</code> object representing data of an SQL
	* <code>NCLOB</code> value
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function writeNClob(x : java.sql.NClob) : Void;
	
	/**
	* Writes an SQL <code>ROWID</code> value to the stream.
	*
	* @param x a <code>RowId</code> object representing data of an SQL
	* <code>ROWID</code> value
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function writeRowId(x : java.sql.RowId) : Void;
	
	/**
	* Writes an SQL <code>XML</code> value to the stream.
	*
	* @param x a <code>SQLXML</code> object representing data of an SQL
	* <code>XML</code> value
	*
	* @throws SQLException if a database access error occurs,
	* the <code>java.xml.transform.Result</code>,
	*  <code>Writer</code> or <code>OutputStream</code> has not been closed for the <code>SQLXML</code> object or
	*  if there is an error processing the XML value.  The <code>getCause</code> method
	*  of the exception may provide a more detailed exception, for example, if the
	*  stream does not contain valid XML.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function writeSQLXML(x : java.sql.SQLXML) : Void;
	
	
}
