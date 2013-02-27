package java.sql;
/*
* Copyright (c) 1996, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface ResultSet extends java.sql.Wrapper extends java.lang.AutoCloseable
{
	/**
	* Moves the cursor froward one row from its current position.
	* A <code>ResultSet</code> cursor is initially positioned
	* before the first row; the first call to the method
	* <code>next</code> makes the first row the current row; the
	* second call makes the second row the current row, and so on.
	* <p>
	* When a call to the <code>next</code> method returns <code>false</code>,
	* the cursor is positioned after the last row. Any
	* invocation of a <code>ResultSet</code> method which requires a
	* current row will result in a <code>SQLException</code> being thrown.
	*  If the result set type is <code>TYPE_FORWARD_ONLY</code>, it is vendor specified
	* whether their JDBC driver implementation will return <code>false</code> or
	*  throw an <code>SQLException</code> on a
	* subsequent call to <code>next</code>.
	*
	* <P>If an input stream is open for the current row, a call
	* to the method <code>next</code> will
	* implicitly close it. A <code>ResultSet</code> object's
	* warning chain is cleared when a new row is read.
	*
	* @return <code>true</code> if the new current row is valid;
	* <code>false</code> if there are no more rows
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function next() : Bool;
	
	/**
	* Releases this <code>ResultSet</code> object's database and
	* JDBC resources immediately instead of waiting for
	* this to happen when it is automatically closed.
	*
	* <P>The closing of a <code>ResultSet</code> object does <strong>not</strong> close the <code>Blob</code>,
	* <code>Clob</code> or <code>NClob</code> objects created by the <code>ResultSet</code>. <code>Blob</code>,
	* <code>Clob</code> or <code>NClob</code> objects remain valid for at least the duration of the
	* transaction in which they are creataed, unless their <code>free</code> method is invoked.
	*<p>
	* When a <code>ResultSet</code> is closed, any <code>ResultSetMetaData</code>
	* instances that were created by calling the  <code>getMetaData</code>
	* method remain accessible.
	*
	* <P><B>Note:</B> A <code>ResultSet</code> object
	* is automatically closed by the
	* <code>Statement</code> object that generated it when
	* that <code>Statement</code> object is closed,
	* re-executed, or is used to retrieve the next result from a
	* sequence of multiple results.
	*<p>
	* Calling the method <code>close</code> on a <code>ResultSet</code>
	* object that is already closed is a no-op.
	* <P>
	* <p>
	*
	* @exception SQLException if a database access error occurs
	*/
	@:overload public function close() : Void;
	
	/**
	* Reports whether
	* the last column read had a value of SQL <code>NULL</code>.
	* Note that you must first call one of the getter methods
	* on a column to try to read its value and then call
	* the method <code>wasNull</code> to see if the value read was
	* SQL <code>NULL</code>.
	*
	* @return <code>true</code> if the last column value read was SQL
	*         <code>NULL</code> and <code>false</code> otherwise
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function wasNull() : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>String</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getString(columnIndex : Int) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>boolean</code> in the Java programming language.
	*
	* <P>If the designated column has a datatype of CHAR or VARCHAR
	* and contains a "0" or has a datatype of BIT, TINYINT, SMALLINT, INTEGER or BIGINT
	* and contains  a 0, a value of <code>false</code> is returned.  If the designated column has a datatype
	* of CHAR or VARCHAR
	* and contains a "1" or has a datatype of BIT, TINYINT, SMALLINT, INTEGER or BIGINT
	* and contains  a 1, a value of <code>true</code> is returned.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>false</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBoolean(columnIndex : Int) : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>byte</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getByte(columnIndex : Int) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>short</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getShort(columnIndex : Int) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* an <code>int</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getInt(columnIndex : Int) : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>long</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getLong(columnIndex : Int) : haxe.Int64;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>float</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getFloat(columnIndex : Int) : Single;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>double</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getDouble(columnIndex : Int) : Float;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.BigDecimal</code> in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param scale the number of digits to the right of the decimal point
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @deprecated
	*/
	@:overload public function getBigDecimal(columnIndex : Int, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>byte</code> array in the Java programming language.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBytes(columnIndex : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Date</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getDate(columnIndex : Int) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Time</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getTime(columnIndex : Int) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Timestamp</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getTimestamp(columnIndex : Int) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a stream of ASCII characters. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will
	* do any necessary conversion from the database format into ASCII.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream.  Also, a
	* stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a Java input stream that delivers the database column value
	* as a stream of one-byte ASCII characters;
	* if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getAsciiStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* as a stream of two-byte 3 characters. The first byte is
	* the high byte; the second byte is the low byte.
	*
	* The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code>values.  The
	* JDBC driver will do any necessary conversion from the database
	* format into Unicode.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream.
	* Also, a stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called, whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters;
	*         if the value is SQL <code>NULL</code>, the value returned is
	*         <code>null</code>
	*
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @deprecated use <code>getCharacterStream</code> in place of
	*              <code>getUnicodeStream</code>
	*/
	@:overload public function getUnicodeStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a  stream of
	* uninterpreted bytes. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code> values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream.  Also, a
	* stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a Java input stream that delivers the database column value
	*         as a stream of uninterpreted bytes;
	*         if the value is SQL <code>NULL</code>, the value returned is
	*         <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBinaryStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>String</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getString(columnLabel : String) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>boolean</code> in the Java programming language.
	*
	* <P>If the designated column has a datatype of CHAR or VARCHAR
	* and contains a "0" or has a datatype of BIT, TINYINT, SMALLINT, INTEGER or BIGINT
	* and contains  a 0, a value of <code>false</code> is returned.  If the designated column has a datatype
	* of CHAR or VARCHAR
	* and contains a "1" or has a datatype of BIT, TINYINT, SMALLINT, INTEGER or BIGINT
	* and contains  a 1, a value of <code>true</code> is returned.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>false</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBoolean(columnLabel : String) : Bool;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>byte</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getByte(columnLabel : String) : java.StdTypes.Int8;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>short</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getShort(columnLabel : String) : java.StdTypes.Int16;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* an <code>int</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getInt(columnLabel : String) : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>long</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getLong(columnLabel : String) : haxe.Int64;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>float</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getFloat(columnLabel : String) : Single;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>double</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getDouble(columnLabel : String) : Float;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.math.BigDecimal</code> in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param scale the number of digits to the right of the decimal point
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @deprecated
	*/
	@:overload public function getBigDecimal(columnLabel : String, scale : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>byte</code> array in the Java programming language.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBytes(columnLabel : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Date</code> object in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getDate(columnLabel : String) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Time</code> object in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getTime(columnLabel : String) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>java.sql.Timestamp</code> object in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getTimestamp(columnLabel : String) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a stream of
	* ASCII characters. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will
	* do any necessary conversion from the database format into ASCII.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream. Also, a
	* stream may return <code>0</code> when the method <code>available</code>
	* is called whether there is data available or not.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a Java input stream that delivers the database column value
	* as a stream of one-byte ASCII characters.
	* If the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code>.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getAsciiStream(columnLabel : String) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a stream of two-byte
	* Unicode characters. The first byte is the high byte; the second
	* byte is the low byte.
	*
	* The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC technology-enabled driver will
	* do any necessary conversion from the database format into Unicode.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream.
	* Also, a stream may return <code>0</code> when the method
	* <code>InputStream.available</code> is called, whether there
	* is data available or not.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a Java input stream that delivers the database column value
	*         as a stream of two-byte Unicode characters.
	*         If the value is SQL <code>NULL</code>, the value returned
	*         is <code>null</code>.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @deprecated use <code>getCharacterStream</code> instead
	*/
	@:overload public function getUnicodeStream(columnLabel : String) : java.io.InputStream;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a stream of uninterpreted
	* <code>byte</code>s.
	* The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code>
	* values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a getter method implicitly closes the stream. Also, a
	* stream may return <code>0</code> when the method <code>available</code>
	* is called whether there is data available or not.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a Java input stream that delivers the database column value
	* as a stream of uninterpreted bytes;
	* if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getBinaryStream(columnLabel : String) : java.io.InputStream;
	
	/**
	* Retrieves the first warning reported by calls on this
	* <code>ResultSet</code> object.
	* Subsequent warnings on this <code>ResultSet</code> object
	* will be chained to the <code>SQLWarning</code> object that
	* this method returns.
	*
	* <P>The warning chain is automatically cleared each time a new
	* row is read.  This method may not be called on a <code>ResultSet</code>
	* object that has been closed; doing so will cause an
	* <code>SQLException</code> to be thrown.
	* <P>
	* <B>Note:</B> This warning chain only covers warnings caused
	* by <code>ResultSet</code> methods.  Any warning caused by
	* <code>Statement</code> methods
	* (such as reading OUT parameters) will be chained on the
	* <code>Statement</code> object.
	*
	* @return the first <code>SQLWarning</code> object reported or
	*         <code>null</code> if there are none
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getWarnings() : java.sql.SQLWarning;
	
	/**
	* Clears all warnings reported on this <code>ResultSet</code> object.
	* After this method is called, the method <code>getWarnings</code>
	* returns <code>null</code> until a new warning is
	* reported for this <code>ResultSet</code> object.
	*
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function clearWarnings() : Void;
	
	/**
	* Retrieves the name of the SQL cursor used by this <code>ResultSet</code>
	* object.
	*
	* <P>In SQL, a result table is retrieved through a cursor that is
	* named. The current row of a result set can be updated or deleted
	* using a positioned update/delete statement that references the
	* cursor name. To insure that the cursor has the proper isolation
	* level to support update, the cursor's <code>SELECT</code> statement
	* should be of the form <code>SELECT FOR UPDATE</code>. If
	* <code>FOR UPDATE</code> is omitted, the positioned updates may fail.
	*
	* <P>The JDBC API supports this SQL feature by providing the name of the
	* SQL cursor used by a <code>ResultSet</code> object.
	* The current row of a <code>ResultSet</code> object
	* is also the current row of this SQL cursor.
	*
	* @return the SQL name for this <code>ResultSet</code> object's cursor
	* @exception SQLException if a database access error occurs or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	*/
	@:overload public function getCursorName() : String;
	
	/**
	* Retrieves the  number, types and properties of
	* this <code>ResultSet</code> object's columns.
	*
	* @return the description of this <code>ResultSet</code> object's columns
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getMetaData() : java.sql.ResultSetMetaData;
	
	/**
	* <p>Gets the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* an <code>Object</code> in the Java programming language.
	*
	* <p>This method will return the value of the given column as a
	* Java object.  The type of the Java object will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification. If the value is an SQL <code>NULL</code>,
	* the driver returns a Java <code>null</code>.
	*
	* <p>This method may also be used to read database-specific
	* abstract data types.
	*
	* In the JDBC 2.0 API, the behavior of method
	* <code>getObject</code> is extended to materialize
	* data of SQL user-defined types.
	* <p>
	* If <code>Connection.getTypeMap</code> does not throw a
	* <code>SQLFeatureNotSupportedException</code>,
	* then when a column contains a structured or distinct value,
	* the behavior of this method is as
	* if it were a call to: <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* If <code>Connection.getTypeMap</code> does throw a
	* <code>SQLFeatureNotSupportedException</code>,
	* then structured values are not supported, and distinct values
	* are mapped to the default Java class as determined by the
	* underlying SQL type of the DISTINCT type.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>java.lang.Object</code> holding the column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getObject(columnIndex : Int) : Dynamic;
	
	/**
	* <p>Gets the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* an <code>Object</code> in the Java programming language.
	*
	* <p>This method will return the value of the given column as a
	* Java object.  The type of the Java object will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification. If the value is an SQL <code>NULL</code>,
	* the driver returns a Java <code>null</code>.
	* <P>
	* This method may also be used to read database-specific
	* abstract data types.
	* <P>
	* In the JDBC 2.0 API, the behavior of the method
	* <code>getObject</code> is extended to materialize
	* data of SQL user-defined types.  When a column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to: <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>java.lang.Object</code> holding the column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	*/
	@:overload public function getObject(columnLabel : String) : Dynamic;
	
	/**
	* Maps the given <code>ResultSet</code> column label to its
	* <code>ResultSet</code> column index.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column index of the given column name
	* @exception SQLException if the <code>ResultSet</code> object
	* does not contain a column labeled <code>columnLabel</code>, a database access error occurs
	*  or this method is called on a closed result set
	*/
	@:overload public function findColumn(columnLabel : String) : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language.
	* @param columnIndex the first column is 1, the second is 2, ...
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCharacterStream(columnIndex : Int) : java.io.Reader;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getCharacterStream(columnLabel : String) : java.io.Reader;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.math.BigDecimal</code> with full precision.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value (full precision);
	* if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language.
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBigDecimal(columnIndex : Int) : java.math.BigDecimal;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.math.BigDecimal</code> with full precision.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value (full precision);
	* if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs or this method is
	*            called on a closed result set
	* @since 1.2
	*
	*/
	@:require(java2) @:overload public function getBigDecimal(columnLabel : String) : java.math.BigDecimal;
	
	/**
	* Retrieves whether the cursor is before the first row in
	* this <code>ResultSet</code> object.
	* <p>
	* <strong>Note:</strong>Support for the <code>isBeforeFirst</code> method
	* is optional for <code>ResultSet</code>s with a result
	* set type of <code>TYPE_FORWARD_ONLY</code>
	*
	* @return <code>true</code> if the cursor is before the first row;
	* <code>false</code> if the cursor is at any other position or the
	* result set contains no rows
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function isBeforeFirst() : Bool;
	
	/**
	* Retrieves whether the cursor is after the last row in
	* this <code>ResultSet</code> object.
	* <p>
	* <strong>Note:</strong>Support for the <code>isAfterLast</code> method
	* is optional for <code>ResultSet</code>s with a result
	* set type of <code>TYPE_FORWARD_ONLY</code>
	*
	* @return <code>true</code> if the cursor is after the last row;
	* <code>false</code> if the cursor is at any other position or the
	* result set contains no rows
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function isAfterLast() : Bool;
	
	/**
	* Retrieves whether the cursor is on the first row of
	* this <code>ResultSet</code> object.
	* <p>
	* <strong>Note:</strong>Support for the <code>isFirst</code> method
	* is optional for <code>ResultSet</code>s with a result
	* set type of <code>TYPE_FORWARD_ONLY</code>
	*
	* @return <code>true</code> if the cursor is on the first row;
	* <code>false</code> otherwise
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function isFirst() : Bool;
	
	/**
	* Retrieves whether the cursor is on the last row of
	* this <code>ResultSet</code> object.
	*  <strong>Note:</strong> Calling the method <code>isLast</code> may be expensive
	* because the JDBC driver
	* might need to fetch ahead one row in order to determine
	* whether the current row is the last row in the result set.
	* <p>
	* <strong>Note:</strong> Support for the <code>isLast</code> method
	* is optional for <code>ResultSet</code>s with a result
	* set type of <code>TYPE_FORWARD_ONLY</code>
	* @return <code>true</code> if the cursor is on the last row;
	* <code>false</code> otherwise
	* @exception SQLException if a database access error occurs or this method is
	*            called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function isLast() : Bool;
	
	/**
	* Moves the cursor to the front of
	* this <code>ResultSet</code> object, just before the
	* first row. This method has no effect if the result set contains no rows.
	*
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set or the
	* result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function beforeFirst() : Void;
	
	/**
	* Moves the cursor to the end of
	* this <code>ResultSet</code> object, just after the
	* last row. This method has no effect if the result set contains no rows.
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set
	* or the result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function afterLast() : Void;
	
	/**
	* Moves the cursor to the first row in
	* this <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	* <code>false</code> if there are no rows in the result set
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set
	* or the result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function first() : Bool;
	
	/**
	* Moves the cursor to the last row in
	* this <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	* <code>false</code> if there are no rows in the result set
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set
	* or the result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function last() : Bool;
	
	/**
	* Retrieves the current row number.  The first row is number 1, the
	* second number 2, and so on.
	* <p>
	* <strong>Note:</strong>Support for the <code>getRow</code> method
	* is optional for <code>ResultSet</code>s with a result
	* set type of <code>TYPE_FORWARD_ONLY</code>
	*
	* @return the current row number; <code>0</code> if there is no current row
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getRow() : Int;
	
	/**
	* Moves the cursor to the given row number in
	* this <code>ResultSet</code> object.
	*
	* <p>If the row number is positive, the cursor moves to
	* the given row number with respect to the
	* beginning of the result set.  The first row is row 1, the second
	* is row 2, and so on.
	*
	* <p>If the given row number is negative, the cursor moves to
	* an absolute row position with respect to
	* the end of the result set.  For example, calling the method
	* <code>absolute(-1)</code> positions the
	* cursor on the last row; calling the method <code>absolute(-2)</code>
	* moves the cursor to the next-to-last row, and so on.
	*
	* <p>If the row number specified is zero, the cursor is moved to
	* before the first row.
	*
	* <p>An attempt to position the cursor beyond the first/last row in
	* the result set leaves the cursor before the first row or after
	* the last row.
	*
	* <p><B>Note:</B> Calling <code>absolute(1)</code> is the same
	* as calling <code>first()</code>. Calling <code>absolute(-1)</code>
	* is the same as calling <code>last()</code>.
	*
	* @param row the number of the row to which the cursor should move.
	*        A value of zero indicates that the cursor will be positioned
	*        before the first row; a positive number indicates the row number
	*        counting from the beginning of the result set; a negative number
	*        indicates the row number counting from the end of the result set
	* @return <code>true</code> if the cursor is moved to a position in this
	* <code>ResultSet</code> object;
	* <code>false</code> if the cursor is before the first row or after the
	* last row
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set
	* or the result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function absolute(row : Int) : Bool;
	
	/**
	* Moves the cursor a relative number of rows, either positive or negative.
	* Attempting to move beyond the first/last row in the
	* result set positions the cursor before/after the
	* the first/last row. Calling <code>relative(0)</code> is valid, but does
	* not change the cursor position.
	*
	* <p>Note: Calling the method <code>relative(1)</code>
	* is identical to calling the method <code>next()</code> and
	* calling the method <code>relative(-1)</code> is identical
	* to calling the method <code>previous()</code>.
	*
	* @param rows an <code>int</code> specifying the number of rows to
	*        move from the current row; a positive number moves the cursor
	*        forward; a negative number moves the cursor backward
	* @return <code>true</code> if the cursor is on a row;
	*         <code>false</code> otherwise
	* @exception SQLException if a database access error occurs;  this method
	* is called on a closed result set or the result set type is
	*            <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function relative(rows : Int) : Bool;
	
	/**
	* Moves the cursor to the previous row in this
	* <code>ResultSet</code> object.
	*<p>
	* When a call to the <code>previous</code> method returns <code>false</code>,
	* the cursor is positioned before the first row.  Any invocation of a
	* <code>ResultSet</code> method which requires a current row will result in a
	* <code>SQLException</code> being thrown.
	*<p>
	* If an input stream is open for the current row, a call to the method
	* <code>previous</code> will implicitly close it.  A <code>ResultSet</code>
	*  object's warning change is cleared when a new row is read.
	*<p>
	*
	* @return <code>true</code> if the cursor is now positioned on a valid row;
	* <code>false</code> if the cursor is positioned before the first row
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set
	* or the result set type is <code>TYPE_FORWARD_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function previous() : Bool;
	
	/**
	* The constant indicating that the rows in a result set will be
	* processed in a forward direction; first-to-last.
	* This constant is used by the method <code>setFetchDirection</code>
	* as a hint to the driver, which the driver may ignore.
	* @since 1.2
	*/
	@:require(java2) public var FETCH_FORWARD : Int;
	
	/**
	* The constant indicating that the rows in a result set will be
	* processed in a reverse direction; last-to-first.
	* This constant is used by the method <code>setFetchDirection</code>
	* as a hint to the driver, which the driver may ignore.
	* @since 1.2
	*/
	@:require(java2) public var FETCH_REVERSE : Int;
	
	/**
	* The constant indicating that the order in which rows in a
	* result set will be processed is unknown.
	* This constant is used by the method <code>setFetchDirection</code>
	* as a hint to the driver, which the driver may ignore.
	*/
	public var FETCH_UNKNOWN : Int;
	
	/**
	* Gives a hint as to the direction in which the rows in this
	* <code>ResultSet</code> object will be processed.
	* The initial value is determined by the
	* <code>Statement</code> object
	* that produced this <code>ResultSet</code> object.
	* The fetch direction may be changed at any time.
	*
	* @param direction an <code>int</code> specifying the suggested
	*        fetch direction; one of <code>ResultSet.FETCH_FORWARD</code>,
	*        <code>ResultSet.FETCH_REVERSE</code>, or
	*        <code>ResultSet.FETCH_UNKNOWN</code>
	* @exception SQLException if a database access error occurs; this
	* method is called on a closed result set or
	* the result set type is <code>TYPE_FORWARD_ONLY</code> and the fetch
	* direction is not <code>FETCH_FORWARD</code>
	* @since 1.2
	* @see Statement#setFetchDirection
	* @see #getFetchDirection
	*/
	@:require(java2) @:overload public function setFetchDirection(direction : Int) : Void;
	
	/**
	* Retrieves the fetch direction for this
	* <code>ResultSet</code> object.
	*
	* @return the current fetch direction for this <code>ResultSet</code> object
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	* @see #setFetchDirection
	*/
	@:require(java2) @:overload public function getFetchDirection() : Int;
	
	/**
	* Gives the JDBC driver a hint as to the number of rows that should
	* be fetched from the database when more rows are needed for this
	* <code>ResultSet</code> object.
	* If the fetch size specified is zero, the JDBC driver
	* ignores the value and is free to make its own best guess as to what
	* the fetch size should be.  The default value is set by the
	* <code>Statement</code> object
	* that created the result set.  The fetch size may be changed at any time.
	*
	* @param rows the number of rows to fetch
	* @exception SQLException if a database access error occurs; this method
	* is called on a closed result set or the
	* condition <code>rows >= 0 </code> is not satisfied
	* @since 1.2
	* @see #getFetchSize
	*/
	@:require(java2) @:overload public function setFetchSize(rows : Int) : Void;
	
	/**
	* Retrieves the fetch size for this
	* <code>ResultSet</code> object.
	*
	* @return the current fetch size for this <code>ResultSet</code> object
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	* @see #setFetchSize
	*/
	@:require(java2) @:overload public function getFetchSize() : Int;
	
	/**
	* The constant indicating the type for a <code>ResultSet</code> object
	* whose cursor may move only forward.
	* @since 1.2
	*/
	@:require(java2) public var TYPE_FORWARD_ONLY : Int;
	
	/**
	* The constant indicating the type for a <code>ResultSet</code> object
	* that is scrollable but generally not sensitive to changes to the data
	* that underlies the <code>ResultSet</code>.
	* @since 1.2
	*/
	@:require(java2) public var TYPE_SCROLL_INSENSITIVE : Int;
	
	/**
	* The constant indicating the type for a <code>ResultSet</code> object
	* that is scrollable and generally sensitive to changes to the data
	* that underlies the <code>ResultSet</code>.
	* @since 1.2
	*/
	@:require(java2) public var TYPE_SCROLL_SENSITIVE : Int;
	
	/**
	* Retrieves the type of this <code>ResultSet</code> object.
	* The type is determined by the <code>Statement</code> object
	* that created the result set.
	*
	* @return <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*         <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>,
	*         or <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getType() : Int;
	
	/**
	* The constant indicating the concurrency mode for a
	* <code>ResultSet</code> object that may NOT be updated.
	* @since 1.2
	*/
	@:require(java2) public var CONCUR_READ_ONLY : Int;
	
	/**
	* The constant indicating the concurrency mode for a
	* <code>ResultSet</code> object that may be updated.
	* @since 1.2
	*/
	@:require(java2) public var CONCUR_UPDATABLE : Int;
	
	/**
	* Retrieves the concurrency mode of this <code>ResultSet</code> object.
	* The concurrency used is determined by the
	* <code>Statement</code> object that created the result set.
	*
	* @return the concurrency type, either
	*         <code>ResultSet.CONCUR_READ_ONLY</code>
	*         or <code>ResultSet.CONCUR_UPDATABLE</code>
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getConcurrency() : Int;
	
	/**
	* Retrieves whether the current row has been updated.  The value returned
	* depends on whether or not the result set can detect updates.
	* <p>
	* <strong>Note:</strong> Support for the <code>rowUpdated</code> method is optional with a result set
	* concurrency of <code>CONCUR_READ_ONLY</code>
	* @return <code>true</code> if the current row is detected to
	* have been visibly updated by the owner or another; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see DatabaseMetaData#updatesAreDetected
	* @since 1.2
	*/
	@:require(java2) @:overload public function rowUpdated() : Bool;
	
	/**
	* Retrieves whether the current row has had an insertion.
	* The value returned depends on whether or not this
	* <code>ResultSet</code> object can detect visible inserts.
	* <p>
	* <strong>Note:</strong> Support for the <code>rowInserted</code> method is optional with a result set
	* concurrency of <code>CONCUR_READ_ONLY</code>
	* @return <code>true</code> if the current row is detected to
	* have been inserted; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	*
	* @see DatabaseMetaData#insertsAreDetected
	* @since 1.2
	*/
	@:require(java2) @:overload public function rowInserted() : Bool;
	
	/**
	* Retrieves whether a row has been deleted.  A deleted row may leave
	* a visible "hole" in a result set.  This method can be used to
	* detect holes in a result set.  The value returned depends on whether
	* or not this <code>ResultSet</code> object can detect deletions.
	* <p>
	* <strong>Note:</strong> Support for the <code>rowDeleted</code> method is optional with a result set
	* concurrency of <code>CONCUR_READ_ONLY</code>
	* @return <code>true</code> if the current row is detected to
	* have been deleted by the owner or another; <code>false</code> otherwise
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	*
	* @see DatabaseMetaData#deletesAreDetected
	* @since 1.2
	*/
	@:require(java2) @:overload public function rowDeleted() : Bool;
	
	/**
	* Updates the designated column with a <code>null</code> value.
	*
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code>
	* or <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateNull(columnIndex : Int) : Void;
	
	/**
	* Updates the designated column with a <code>boolean</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBoolean(columnIndex : Int, x : Bool) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateByte(columnIndex : Int, x : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the designated column with a <code>short</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateShort(columnIndex : Int, x : java.StdTypes.Int16) : Void;
	
	/**
	* Updates the designated column with an <code>int</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateInt(columnIndex : Int, x : Int) : Void;
	
	/**
	* Updates the designated column with a <code>long</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateLong(columnIndex : Int, x : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a <code>float</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateFloat(columnIndex : Int, x : Single) : Void;
	
	/**
	* Updates the designated column with a <code>double</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateDouble(columnIndex : Int, x : Float) : Void;
	
	/**
	* Updates the designated column with a <code>java.math.BigDecimal</code>
	* value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBigDecimal(columnIndex : Int, x : java.math.BigDecimal) : Void;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateString(columnIndex : Int, x : String) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> array value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBytes(columnIndex : Int, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Date</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateDate(columnIndex : Int, x : java.sql.Date) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Time</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateTime(columnIndex : Int, x : java.sql.Time) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Timestamp</code>
	* value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateTimestamp(columnIndex : Int, x : java.sql.Timestamp) : Void;
	
	/**
	* Updates the designated column with an ascii stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a binary stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*<p>
	* If the second argument is an <code>InputStream</code> then the stream must contain
	* the number of bytes specified by scaleOrLength.  If the second argument is a
	* <code>Reader</code> then the reader must contain the number of characters specified
	* by scaleOrLength. If these conditions are not true the driver will generate a
	* <code>SQLException</code> when the statement is executed.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param scaleOrLength for an object of <code>java.math.BigDecimal</code> ,
	*          this is the number of digits after the decimal point. For
	*          Java Object types <code>InputStream</code> and <code>Reader</code>,
	*          this is the length
	*          of the data in the stream or reader.  For all other types,
	*          this value will be ignored.
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateObject(columnIndex : Int, x : Dynamic, scaleOrLength : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateObject(columnIndex : Int, x : Dynamic) : Void;
	
	/**
	* Updates the designated column with a <code>null</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateNull(columnLabel : String) : Void;
	
	/**
	* Updates the designated column with a <code>boolean</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBoolean(columnLabel : String, x : Bool) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateByte(columnLabel : String, x : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the designated column with a <code>short</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateShort(columnLabel : String, x : java.StdTypes.Int16) : Void;
	
	/**
	* Updates the designated column with an <code>int</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateInt(columnLabel : String, x : Int) : Void;
	
	/**
	* Updates the designated column with a <code>long</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateLong(columnLabel : String, x : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a <code>float </code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateFloat(columnLabel : String, x : Single) : Void;
	
	/**
	* Updates the designated column with a <code>double</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateDouble(columnLabel : String, x : Float) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.BigDecimal</code>
	* value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBigDecimal(columnLabel : String, x : java.math.BigDecimal) : Void;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateString(columnLabel : String, x : String) : Void;
	
	/**
	* Updates the designated column with a byte array value.
	*
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code>
	* or <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBytes(columnLabel : String, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Date</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateDate(columnLabel : String, x : java.sql.Date) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Time</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateTime(columnLabel : String, x : java.sql.Time) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Timestamp</code>
	* value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateTimestamp(columnLabel : String, x : java.sql.Timestamp) : Void;
	
	/**
	* Updates the designated column with an ascii stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateAsciiStream(columnLabel : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a binary stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateBinaryStream(columnLabel : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateCharacterStream(columnLabel : String, reader : java.io.Reader, length : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*<p>
	* If the second argument is an <code>InputStream</code> then the stream must contain
	* the number of bytes specified by scaleOrLength.  If the second argument is a
	* <code>Reader</code> then the reader must contain the number of characters specified
	* by scaleOrLength. If these conditions are not true the driver will generate a
	* <code>SQLException</code> when the statement is executed.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param scaleOrLength for an object of <code>java.math.BigDecimal</code> ,
	*          this is the number of digits after the decimal point. For
	*          Java Object types <code>InputStream</code> and <code>Reader</code>,
	*          this is the length
	*          of the data in the stream or reader.  For all other types,
	*          this value will be ignored.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateObject(columnLabel : String, x : Dynamic, scaleOrLength : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateObject(columnLabel : String, x : Dynamic) : Void;
	
	/**
	* Inserts the contents of the insert row into this
	* <code>ResultSet</code> object and into the database.
	* The cursor must be on the insert row when this method is called.
	*
	* @exception SQLException if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>,
	* this method is called on a closed result set,
	* if this method is called when the cursor is not on the insert row,
	* or if not all of non-nullable columns in
	* the insert row have been given a non-null value
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function insertRow() : Void;
	
	/**
	* Updates the underlying database with the new contents of the
	* current row of this <code>ResultSet</code> object.
	* This method cannot be called when the cursor is on the insert row.
	*
	* @exception SQLException if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>;
	*  this method is called on a closed result set or
	* if this method is called when the cursor is on the insert row
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function updateRow() : Void;
	
	/**
	* Deletes the current row from this <code>ResultSet</code> object
	* and from the underlying database.  This method cannot be called when
	* the cursor is on the insert row.
	*
	* @exception SQLException if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>;
	* this method is called on a closed result set
	* or if this method is called when the cursor is on the insert row
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function deleteRow() : Void;
	
	/**
	* Refreshes the current row with its most recent value in
	* the database.  This method cannot be called when
	* the cursor is on the insert row.
	*
	* <P>The <code>refreshRow</code> method provides a way for an
	* application to
	* explicitly tell the JDBC driver to refetch a row(s) from the
	* database.  An application may want to call <code>refreshRow</code> when
	* caching or prefetching is being done by the JDBC driver to
	* fetch the latest value of a row from the database.  The JDBC driver
	* may actually refresh multiple rows at once if the fetch size is
	* greater than one.
	*
	* <P> All values are refetched subject to the transaction isolation
	* level and cursor sensitivity.  If <code>refreshRow</code> is called after
	* calling an updater method, but before calling
	* the method <code>updateRow</code>, then the
	* updates made to the row are lost.  Calling the method
	* <code>refreshRow</code> frequently will likely slow performance.
	*
	* @exception SQLException if a database access error
	* occurs; this method is called on a closed result set;
	* the result set type is <code>TYPE_FORWARD_ONLY</code> or if this
	* method is called when the cursor is on the insert row
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method or this method is not supported for the specified result
	* set type and result set concurrency.
	* @since 1.2
	*/
	@:require(java2) @:overload public function refreshRow() : Void;
	
	/**
	* Cancels the updates made to the current row in this
	* <code>ResultSet</code> object.
	* This method may be called after calling an
	* updater method(s) and before calling
	* the method <code>updateRow</code> to roll back
	* the updates made to a row.  If no updates have been made or
	* <code>updateRow</code> has already been called, this method has no
	* effect.
	*
	* @exception SQLException if a database access error
	*            occurs; this method is called on a closed result set;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or if this method is called when the cursor is
	*            on the insert row
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function cancelRowUpdates() : Void;
	
	/**
	* Moves the cursor to the insert row.  The current cursor position is
	* remembered while the cursor is positioned on the insert row.
	*
	* The insert row is a special row associated with an updatable
	* result set.  It is essentially a buffer where a new row may
	* be constructed by calling the updater methods prior to
	* inserting the row into the result set.
	*
	* Only the updater, getter,
	* and <code>insertRow</code> methods may be
	* called when the cursor is on the insert row.  All of the columns in
	* a result set must be given a value each time this method is
	* called before calling <code>insertRow</code>.
	* An updater method must be called before a
	* getter method can be called on a column value.
	*
	* @exception SQLException if a database access error occurs; this
	* method is called on a closed result set
	* or the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function moveToInsertRow() : Void;
	
	/**
	* Moves the cursor to the remembered cursor position, usually the
	* current row.  This method has no effect if the cursor is not on
	* the insert row.
	*
	* @exception SQLException if a database access error occurs; this
	* method is called on a closed result set
	*  or the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function moveToCurrentRow() : Void;
	
	/**
	* Retrieves the <code>Statement</code> object that produced this
	* <code>ResultSet</code> object.
	* If the result set was generated some other way, such as by a
	* <code>DatabaseMetaData</code> method, this method  may return
	* <code>null</code>.
	*
	* @return the <code>Statment</code> object that produced
	* this <code>ResultSet</code> object or <code>null</code>
	* if the result set was produced some other way
	* @exception SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getStatement() : java.sql.Statement;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as an <code>Object</code>
	* in the Java programming language.
	* If the value is an SQL <code>NULL</code>,
	* the driver returns a Java <code>null</code>.
	* This method uses the given <code>Map</code> object
	* for the custom mapping of the
	* SQL structured or distinct type that is being retrieved.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param map a <code>java.util.Map</code> object that contains the mapping
	* from SQL type names to classes in the Java programming language
	* @return an <code>Object</code> in the Java programming language
	* representing the SQL value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getObject(columnIndex : Int, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Ref</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>Ref</code> object representing an SQL <code>REF</code>
	*         value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getRef(columnIndex : Int) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Blob</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>Blob</code> object representing the SQL
	*         <code>BLOB</code> value in the specified column
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBlob(columnIndex : Int) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Clob</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>Clob</code> object representing the SQL
	*         <code>CLOB</code> value in the specified column
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getClob(columnIndex : Int) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as an <code>Array</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return an <code>Array</code> object representing the SQL
	*         <code>ARRAY</code> value in the specified column
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getArray(columnIndex : Int) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as an <code>Object</code>
	* in the Java programming language.
	* If the value is an SQL <code>NULL</code>,
	* the driver returns a Java <code>null</code>.
	* This method uses the specified <code>Map</code> object for
	* custom mapping if appropriate.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param map a <code>java.util.Map</code> object that contains the mapping
	* from SQL type names to classes in the Java programming language
	* @return an <code>Object</code> representing the SQL value in the
	*         specified column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getObject(columnLabel : String, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Ref</code> object
	* in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>Ref</code> object representing the SQL <code>REF</code>
	*         value in the specified column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getRef(columnLabel : String) : java.sql.Ref;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Blob</code> object
	* in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>Blob</code> object representing the SQL <code>BLOB</code>
	*         value in the specified column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getBlob(columnLabel : String) : java.sql.Blob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>Clob</code> object
	* in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>Clob</code> object representing the SQL <code>CLOB</code>
	* value in the specified column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getClob(columnLabel : String) : java.sql.Clob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as an <code>Array</code> object
	* in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return an <code>Array</code> object representing the SQL <code>ARRAY</code> value in
	*         the specified column
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.2
	*/
	@:require(java2) @:overload public function getArray(columnLabel : String) : java.sql.Array;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Date</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the date
	* @return the column value as a <code>java.sql.Date</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getDate(columnIndex : Int, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Date</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the date
	* @return the column value as a <code>java.sql.Date</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getDate(columnLabel : String, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Time</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the time if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the time
	* @return the column value as a <code>java.sql.Time</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getTime(columnIndex : Int, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Time</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the time if the underlying database does not store
	* timezone information.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the time
	* @return the column value as a <code>java.sql.Time</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getTime(columnLabel : String, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Timestamp</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the timestamp if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the timestamp
	* @return the column value as a <code>java.sql.Timestamp</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getTimestamp(columnIndex : Int, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.sql.Timestamp</code> object
	* in the Java programming language.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the timestamp if the underlying database does not store
	* timezone information.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param cal the <code>java.util.Calendar</code> object
	* to use in constructing the date
	* @return the column value as a <code>java.sql.Timestamp</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid or
	* if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.2
	*/
	@:require(java2) @:overload public function getTimestamp(columnLabel : String, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* The constant indicating that open <code>ResultSet</code> objects with this
	* holdability will remain open when the current transaction is commited.
	*
	* @since 1.4
	*/
	@:require(java4) public var HOLD_CURSORS_OVER_COMMIT : Int;
	
	/**
	* The constant indicating that open <code>ResultSet</code> objects with this
	* holdability will be closed when the current transaction is commited.
	*
	* @since 1.4
	*/
	@:require(java4) public var CLOSE_CURSORS_AT_COMMIT : Int;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.net.URL</code>
	* object in the Java programming language.
	*
	* @param columnIndex the index of the column 1 is the first, 2 is the second,...
	* @return the column value as a <code>java.net.URL</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs; this method
	* is called on a closed result set or if a URL is malformed
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function getURL(columnIndex : Int) : java.net.URL;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>java.net.URL</code>
	* object in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value as a <code>java.net.URL</code> object;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs; this method
	* is called on a closed result set or if a URL is malformed
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function getURL(columnLabel : String) : java.net.URL;
	
	/**
	* Updates the designated column with a <code>java.sql.Ref</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateRef(columnIndex : Int, x : java.sql.Ref) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Ref</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateRef(columnLabel : String, x : java.sql.Ref) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Blob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateBlob(columnIndex : Int, x : java.sql.Blob) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Blob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateBlob(columnLabel : String, x : java.sql.Blob) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Clob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateClob(columnIndex : Int, x : java.sql.Clob) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Clob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateClob(columnLabel : String, x : java.sql.Clob) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Array</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateArray(columnIndex : Int, x : java.sql.Array) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Array</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function updateArray(columnLabel : String, x : java.sql.Array) : Void;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>ResultSet</code> object as a <code>java.sql.RowId</code> object in the Java
	* programming language.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @return the column value; if the value is a SQL <code>NULL</code> the
	*     value returned is <code>null</code>
	* @throws SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getRowId(columnIndex : Int) : java.sql.RowId;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>ResultSet</code> object as a <code>java.sql.RowId</code> object in the Java
	* programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value ; if the value is a SQL <code>NULL</code> the
	*     value returned is <code>null</code>
	* @throws SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getRowId(columnLabel : String) : java.sql.RowId;
	
	/**
	* Updates the designated column with a <code>RowId</code> value. The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param x the column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateRowId(columnIndex : Int, x : java.sql.RowId) : Void;
	
	/**
	* Updates the designated column with a <code>RowId</code> value. The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateRowId(columnLabel : String, x : java.sql.RowId) : Void;
	
	/**
	* Retrieves the holdability of this <code>ResultSet</code> object
	* @return  either <code>ResultSet.HOLD_CURSORS_OVER_COMMIT</code> or <code>ResultSet.CLOSE_CURSORS_AT_COMMIT</code>
	* @throws SQLException if a database access error occurs
	* or this method is called on a closed result set
	* @since 1.6
	*/
	@:require(java6) @:overload public function getHoldability() : Int;
	
	/**
	* Retrieves whether this <code>ResultSet</code> object has been closed. A <code>ResultSet</code> is closed if the
	* method close has been called on it, or if it is automatically closed.
	*
	* @return true if this <code>ResultSet</code> object is closed; false if it is still open
	* @throws SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function isClosed() : Bool;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* It is intended for use when updating <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param nString the value for the column to be updated
	* @throws SQLException if the columnIndex is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNString(columnIndex : Int, nString : String) : Void;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* It is intended for use when updating <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param nString the value for the column to be updated
	* @throws SQLException if the columnLabel is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	* the result set concurrency is <CODE>CONCUR_READ_ONLY</code>
	*  or if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNString(columnLabel : String, nString : String) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.NClob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param nClob the value for the column to be updated
	* @throws SQLException if the columnIndex is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	* if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnIndex : Int, nClob : java.sql.NClob) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.NClob</code> value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param nClob the value for the column to be updated
	* @throws SQLException if the columnLabel is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	*  if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnLabel : String, nClob : java.sql.NClob) : Void;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>NClob</code> object
	* in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>NClob</code> object representing the SQL
	*         <code>NCLOB</code> value in the specified column
	* @exception SQLException if the columnIndex is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set
	* or if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNClob(columnIndex : Int) : java.sql.NClob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>NClob</code> object
	* in the Java programming language.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>NClob</code> object representing the SQL <code>NCLOB</code>
	* value in the specified column
	* @exception SQLException if the columnLabel is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set
	* or if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNClob(columnLabel : String) : java.sql.NClob;
	
	/**
	* Retrieves the value of the designated column in  the current row of
	*  this <code>ResultSet</code> as a
	* <code>java.sql.SQLXML</code> object in the Java programming language.
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a <code>SQLXML</code> object that maps an <code>SQL XML</code> value
	* @throws SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSQLXML(columnIndex : Int) : java.sql.SQLXML;
	
	/**
	* Retrieves the value of the designated column in  the current row of
	*  this <code>ResultSet</code> as a
	* <code>java.sql.SQLXML</code> object in the Java programming language.
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>SQLXML</code> object that maps an <code>SQL XML</code> value
	* @throws SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getSQLXML(columnLabel : String) : java.sql.SQLXML;
	
	/**
	* Updates the designated column with a <code>java.sql.SQLXML</code> value.
	* The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	* <p>
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param xmlObject the value for the column to be updated
	* @throws SQLException if the columnIndex is not valid;
	* if a database access error occurs; this method
	*  is called on a closed result set;
	* the <code>java.xml.transform.Result</code>,
	*  <code>Writer</code> or <code>OutputStream</code> has not been closed
	* for the <code>SQLXML</code> object;
	*  if there is an error processing the XML value or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>.  The <code>getCause</code> method
	*  of the exception may provide a more detailed exception, for example, if the
	*  stream does not contain valid XML.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateSQLXML(columnIndex : Int, xmlObject : java.sql.SQLXML) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.SQLXML</code> value.
	* The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	* <p>
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param xmlObject the column value
	* @throws SQLException if the columnLabel is not valid;
	* if a database access error occurs; this method
	*  is called on a closed result set;
	* the <code>java.xml.transform.Result</code>,
	*  <code>Writer</code> or <code>OutputStream</code> has not been closed
	* for the <code>SQLXML</code> object;
	*  if there is an error processing the XML value or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>.  The <code>getCause</code> method
	*  of the exception may provide a more detailed exception, for example, if the
	*  stream does not contain valid XML.
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateSQLXML(columnLabel : String, xmlObject : java.sql.SQLXML) : Void;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>String</code> in the Java programming language.
	* It is intended for use when
	* accessing  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNString(columnIndex : Int) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as
	* a <code>String</code> in the Java programming language.
	* It is intended for use when
	* accessing  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNString(columnLabel : String) : String;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	* It is intended for use when
	* accessing  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language.
	* @param columnIndex the first column is 1, the second is 2, ...
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNCharacterStream(columnIndex : Int) : java.io.Reader;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	* It is intended for use when
	* accessing  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNCharacterStream(columnLabel : String) : java.io.Reader;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.   The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnIndex : Int, x : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.  The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with an ascii stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a binary stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with an ascii stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnLabel : String, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a binary stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnLabel : String, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will have
	* the specified number of bytes.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @param length the length of the stream
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given input stream, which
	* will have the specified number of bytes.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @param length the number of bytes in the parameter data.
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnIndex : Int, inputStream : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given input stream, which
	* will have the specified number of bytes.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @param length the number of bytes in the parameter data.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnLabel : String, inputStream : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnIndex : Int, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the columnIndex is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set,
	* if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnIndex : Int, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the columnLabel is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	*  if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.  The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNCharacterStream</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnIndex : Int, x : java.io.Reader) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.  The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNCharacterStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateAsciiStream</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBinaryStream</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateCharacterStream</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateAsciiStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnLabel : String, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBinaryStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @exception SQLException if the columnLabel is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnLabel : String, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateCharacterStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @exception SQLException if the columnLabel is not valid; if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given input stream. The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBlob</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @exception SQLException if the columnIndex is not valid; if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnIndex : Int, inputStream : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column using the given input stream. The data will be read from the stream
	* as needed until end-of-stream is reached.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	*   <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBlob</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @exception SQLException if the columnLabel is not valid; if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnLabel : String, inputStream : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object.
	*  The data will be read from the stream
	* as needed until end-of-stream is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	*   <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateClob</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @exception SQLException if the columnIndex is not valid;
	* if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnIndex : Int, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object.
	*  The data will be read from the stream
	* as needed until end-of-stream is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateClob</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @exception SQLException if the columnLabel is not valid; if a database access error occurs;
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	*
	* The data will be read from the stream
	* as needed until end-of-stream is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNClob</code> which takes a length parameter.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if the columnIndex is not valid;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set,
	* if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnIndex : Int, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object.
	* The data will be read from the stream
	* as needed until end-of-stream is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNClob</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if the columnLabel is not valid; if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; this method is called on a closed result set;
	*  if a database access error occurs or
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNClob(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	*<p>Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object and will convert from the
	* SQL type of the column to the requested Java data type, if the
	* conversion is supported. If the conversion is not
	* supported  or null is specified for the type, a
	* <code>SQLException</code> is thrown.
	*<p>
	* At a minimum, an implementation must support the conversions defined in
	* Appendix B, Table B-3 and conversion of appropriate user defined SQL
	* types to a Java type which implements {@code SQLData}, or {@code Struct}.
	* Additional conversions may be supported and are vendor defined.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param type Class representing the Java data type to convert the designated
	* column to.
	* @return an instance of {@code type} holding the column value
	* @throws SQLException if conversion is not supported, type is null or
	*         another error occurs. The getCause() method of the
	* exception may provide a more detailed exception, for example, if
	* a conversion error occurs
	* @throws SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.7
	*/
	@:require(java7) @:overload public function getObject<T>(columnIndex : Int, type : Class<T>) : T;
	
	/**
	*<p>Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object and will convert from the
	* SQL type of the column to the requested Java data type, if the
	* conversion is supported. If the conversion is not
	* supported  or null is specified for the type, a
	* <code>SQLException</code> is thrown.
	*<p>
	* At a minimum, an implementation must support the conversions defined in
	* Appendix B, Table B-3 and conversion of appropriate user defined SQL
	* types to a Java type which implements {@code SQLData}, or {@code Struct}.
	* Additional conversions may be supported and are vendor defined.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.
	* If the SQL AS clause was not specified, then the label is the name
	* of the column
	* @param type Class representing the Java data type to convert the designated
	* column to.
	* @return an instance of {@code type} holding the column value
	* @throws SQLException if conversion is not supported, type is null or
	*         another error occurs. The getCause() method of the
	* exception may provide a more detailed exception, for example, if
	* a conversion error occurs
	* @throws SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.7
	*/
	@:require(java7) @:overload public function getObject<T>(columnLabel : String, type : Class<T>) : T;
	
	
}
