package com.sun.rowset;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
* The standard implementation of the <code>JdbcRowSet</code> interface. See the interface
* defintion for full behavior and implementation requirements.
*
* @author Jonathan Bruce, Amit Handa
*/
extern class JdbcRowSetImpl extends javax.sql.rowset.BaseRowSet implements javax.sql.rowset.JdbcRowSet implements javax.sql.rowset.Joinable
{
	@:transient private var resBundle : com.sun.rowset.JdbcRowSetResourceBundle;
	
	/**
	* Constructs a default <code>JdbcRowSet</code> object.
	* The new instance of <code>JdbcRowSet</code> will serve as a proxy
	* for the <code>ResultSet</code> object it creates, and by so doing,
	* it will make it possible to use the result set as a JavaBeans
	* component.
	* <P>
	* The following is true of a default <code>JdbcRowSet</code> instance:
	* <UL>
	*   <LI>Does not show deleted rows
	*   <LI>Has no time limit for how long a driver may take to
	*       execute the rowset's command
	*   <LI>Has no limit for the number of rows it may contain
	*   <LI>Has no limit for the number of bytes a column may contain
	*   <LI>Has a scrollable cursor and does not show changes
	*       made by others
	*   <LI>Will not see uncommitted data (make "dirty" reads)
	*   <LI>Has escape processing turned on
	*   <LI>Has its connection's type map set to <code>null</code>
	*   <LI>Has an empty <code>Hashtable</code> object for storing any
	*       parameters that are set
	* </UL>
	* A newly created <code>JdbcRowSet</code> object must have its
	* <code>execute</code> method invoked before other public methods
	* are called on it; otherwise, such method calls will cause an
	* exception to be thrown.
	*
	* @throws SQLException [1] if any of its public methods are called prior
	* to calling the <code>execute</code> method; [2] if invalid JDBC driver
	* properties are set or [3] if no connection to a data source exists.
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructs a default <code>JdbcRowSet</code> object given a
	* valid <code>Connection</code> object. The new
	* instance of <code>JdbcRowSet</code> will serve as a proxy for
	* the <code>ResultSet</code> object it creates, and by so doing,
	* it will make it possible to use the result set as a JavaBeans
	* component.
	* <P>
	* The following is true of a default <code>JdbcRowSet</code> instance:
	* <UL>
	*   <LI>Does not show deleted rows
	*   <LI>Has no time limit for how long a driver may take to
	*       execute the rowset's command
	*   <LI>Has no limit for the number of rows it may contain
	*   <LI>Has no limit for the number of bytes a column may contain
	*   <LI>Has a scrollable cursor and does not show changes
	*       made by others
	*   <LI>Will not see uncommitted data (make "dirty" reads)
	*   <LI>Has escape processing turned on
	*   <LI>Has its connection's type map set to <code>null</code>
	*   <LI>Has an empty <code>Hashtable</code> object for storing any
	*       parameters that are set
	* </UL>
	* A newly created <code>JdbcRowSet</code> object must have its
	* <code>execute</code> method invoked before other public methods
	* are called on it; otherwise, such method calls will cause an
	* exception to be thrown.
	*
	* @throws SQLException [1] if any of its public methods are called prior
	* to calling the <code>execute</code> method, [2] if invalid JDBC driver
	* properties are set, or [3] if no connection to a data source exists.
	*/
	@:overload public function new(con : java.sql.Connection) : Void;
	
	/**
	* Constructs a default <code>JdbcRowSet</code> object using the
	* URL, username, and password arguments supplied. The new
	* instance of <code>JdbcRowSet</code> will serve as a proxy for
	* the <code>ResultSet</code> object it creates, and by so doing,
	* it will make it possible to use the result set as a JavaBeans
	* component.
	*
	* <P>
	* The following is true of a default <code>JdbcRowSet</code> instance:
	* <UL>
	*   <LI>Does not show deleted rows
	*   <LI>Has no time limit for how long a driver may take to
	*       execute the rowset's command
	*   <LI>Has no limit for the number of rows it may contain
	*   <LI>Has no limit for the number of bytes a column may contain
	*   <LI>Has a scrollable cursor and does not show changes
	*       made by others
	*   <LI>Will not see uncommitted data (make "dirty" reads)
	*   <LI>Has escape processing turned on
	*   <LI>Has its connection's type map set to <code>null</code>
	*   <LI>Has an empty <code>Hashtable</code> object for storing any
	*       parameters that are set
	* </UL>
	*
	* @param url - a JDBC URL for the database to which this <code>JdbcRowSet</code>
	*        object will be connected. The form for a JDBC URL is
	*        <code>jdbc:subprotocol:subname</code>.
	* @param user - the database user on whose behalf the connection
	*        is being made
	* @param password - the user's password
	*
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function new(url : String, user : String, password : String) : Void;
	
	/**
	* Constructs a <code>JdbcRowSet</code> object using the given valid
	* <code>ResultSet</code> object. The new
	* instance of <code>JdbcRowSet</code> will serve as a proxy for
	* the <code>ResultSet</code> object, and by so doing,
	* it will make it possible to use the result set as a JavaBeans
	* component.
	*
	* <P>
	* The following is true of a default <code>JdbcRowSet</code> instance:
	* <UL>
	*   <LI>Does not show deleted rows
	*   <LI>Has no time limit for how long a driver may take to
	*       execute the rowset's command
	*   <LI>Has no limit for the number of rows it may contain
	*   <LI>Has no limit for the number of bytes a column may contain
	*   <LI>Has a scrollable cursor and does not show changes
	*       made by others
	*   <LI>Will not see uncommitted data (make "dirty" reads)
	*   <LI>Has escape processing turned on
	*   <LI>Has its connection's type map set to <code>null</code>
	*   <LI>Has an empty <code>Hashtable</code> object for storing any
	*       parameters that are set
	* </UL>
	*
	* @param res a valid <code>ResultSet</code> object
	*
	* @throws SQLException if a database access occurs due to a non
	* valid ResultSet handle.
	*/
	@:overload public function new(res : java.sql.ResultSet) : Void;
	
	/**
	* Initializes the given <code>RowSetMetaData</code> object with the values
	* in the given <code>ResultSetMetaData</code> object.
	*
	* @param md the <code>RowSetMetaData</code> object for this
	*           <code>JdbcRowSetImpl</code> object, which will be set with
	*           values from rsmd
	* @param rsmd the <code>ResultSetMetaData</code> object from which new
	*             values for md will be read
	* @throws SQLException if an error occurs
	*/
	@:overload private function initMetaData(md : javax.sql.RowSetMetaData, rsmd : java.sql.ResultSetMetaData) : Void;
	
	@:overload private function checkState() : Void;
	
	/**
	* Creates the internal <code>ResultSet</code> object for which this
	* <code>JdbcRowSet</code> object is a wrapper, effectively
	* making the result set a JavaBeans component.
	* <P>
	* Certain properties must have been set before this method is called
	* so that it can establish a connection to a database and execute the
	* query that will create the result set.  If a <code>DataSource</code>
	* object will be used to create the connection, properties for the
	* data source name, user name, and password must be set.  If the
	* <code>DriverManager</code> will be used, the properties for the
	* URL, user name, and password must be set.  In either case, the
	* property for the command must be set.  If the command has placeholder
	* parameters, those must also be set. This method throws
	* an exception if the required properties are not set.
	* <P>
	* Other properties have default values that may optionally be set
	* to new values. The <code>execute</code> method will use the value
	* for the command property to create a <code>PreparedStatement</code>
	* object and set its properties (escape processing, maximum field
	* size, maximum number of rows, and query timeout limit) to be those
	* of this rowset.
	*
	* @throws SQLException if (1) a database access error occurs,
	* (2) any required JDBC properties are not set, or (3) if an
	* invalid connection exists.
	*/
	@:overload public function execute() : Void;
	
	@:overload private function setProperties(ps : java.sql.PreparedStatement) : Void;
	
	@:overload private function connect() : java.sql.Connection;
	
	@:overload private function prepare() : java.sql.PreparedStatement;
	
	/**
	* Moves the cursor for this rowset's <code>ResultSet</code>
	* object down one row from its current position.
	* A <code>ResultSet</code> cursor is initially positioned
	* before the first row; the first call to the method
	* <code>next</code> makes the first row the current row; the
	* second call makes the second row the current row, and so on.
	*
	* <P>If an input stream is open for the current row, a call
	* to the method <code>next</code> will
	* implicitly close it. A <code>ResultSet</code> object's
	* warning chain is cleared when a new row is read.
	*
	* @return <code>true</code> if the new current row is valid;
	*         <code>false</code> if there are no more rows
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function next() : Bool;
	
	/**
	* Releases this rowset's <code>ResultSet</code> object's database and
	* JDBC resources immediately instead of waiting for
	* this to happen when it is automatically closed.
	*
	* <P><B>Note:</B> A <code>ResultSet</code> object
	* is automatically closed by the
	* <code>Statement</code> object that generated it when
	* that <code>Statement</code> object is closed,
	* re-executed, or is used to retrieve the next result from a
	* sequence of multiple results. A <code>ResultSet</code> object
	* is also automatically closed when it is garbage collected.
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function close() : Void;
	
	/**
	* Reports whether the last column read from this rowset's
	* <code>ResultSet</code> object had a value of SQL <code>NULL</code>.
	* Note that you must first call one of the <code>getXXX</code> methods
	* on a column to try to read its value and then call
	* the method <code>wasNull</code> to see if the value read was
	* SQL <code>NULL</code>.
	*
	* @return <code>true</code> if the last column value read was SQL
	*         <code>NULL</code> and <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	*            or this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function wasNull() : Bool;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>String</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getString(columnIndex : Int) : String;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>boolean</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>false</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBoolean(columnIndex : Int) : Bool;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>byte</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getByte(columnIndex : Int) : java.StdTypes.Int8;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>short</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getShort(columnIndex : Int) : java.StdTypes.Int16;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* an <code>int</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getInt(columnIndex : Int) : Int;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>long</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getLong(columnIndex : Int) : haxe.Int64;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>float</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getFloat(columnIndex : Int) : Single;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>double</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getDouble(columnIndex : Int) : Float;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.BigDecimal</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param scale the number of digits to the right of the decimal point
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	* @deprecated
	*/
	@:overload public function getBigDecimal(columnIndex : Int, scale : Int) : java.math.BigDecimal;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>byte</code> array in the Java programming language.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBytes(columnIndex : Int) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Date</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getDate(columnIndex : Int) : java.sql.Date;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Time</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTime(columnIndex : Int) : java.sql.Time;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Timestamp</code> object in the Java programming language.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTimestamp(columnIndex : Int) : java.sql.Timestamp;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a stream of ASCII characters. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will
	* do any necessary conversion from the database format into ASCII.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream.  Also, a
	* stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return a Java input stream that delivers the database column value
	* as a stream of one-byte ASCII characters;
	* if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) database access error occurs
	*            (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getAsciiStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* as a stream of Unicode characters.
	* The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large<code>LONGVARCHAR</code>values.  The JDBC driver will
	* do any necessary conversion from the database format into Unicode.
	* The byte format of the Unicode stream must be Java UTF-8,
	* as specified in the Java virtual machine specification.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream.  Also, a
	* stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return a Java input stream that delivers the database column value
	* as a stream in Java UTF-8 byte format;
	* if the value is SQL <code>NULL</code>, the value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	* @deprecated use <code>getCharacterStream</code> in place of
	*              <code>getUnicodeStream</code>
	*/
	@:overload public function getUnicodeStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Gets the value of a column in the current row as a stream of
	* the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a binary stream of
	* uninterpreted bytes. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code> values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream.  Also, a
	* stream may return <code>0</code> when the method
	* <code>InputStream.available</code>
	* is called whether there is data available or not.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return a Java input stream that delivers the database column value
	* as a stream of uninterpreted bytes;
	* if the value is SQL <code>NULL</code>, the value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBinaryStream(columnIndex : Int) : java.io.InputStream;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>String</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getString(columnName : String) : String;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>boolean</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>false</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBoolean(columnName : String) : Bool;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>byte</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getByte(columnName : String) : java.StdTypes.Int8;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>short</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getShort(columnName : String) : java.StdTypes.Int16;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* an <code>int</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getInt(columnName : String) : Int;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>long</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if a database access error occurs
	*            or this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getLong(columnName : String) : haxe.Int64;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>float</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getFloat(columnName : String) : Single;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>double</code>.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>0</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getDouble(columnName : String) : Float;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.math.BigDecimal</code>.
	*
	* @param columnName the SQL name of the column
	* @param scale the number of digits to the right of the decimal point
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) adatabase access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	* @deprecated
	*/
	@:overload public function getBigDecimal(columnName : String, scale : Int) : java.math.BigDecimal;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>byte</code> array in the Java programming language.
	* The bytes represent the raw values returned by the driver.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBytes(columnName : String) : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Date</code> object in the Java programming language.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getDate(columnName : String) : java.sql.Date;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Time</code> object in the Java programming language.
	*
	* @param columnName the SQL name of the column
	* @return the column value;
	* if the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTime(columnName : String) : java.sql.Time;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* a <code>java.sql.Timestamp</code> object.
	*
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTimestamp(columnName : String) : java.sql.Timestamp;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a stream of
	* ASCII characters. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will
	* do any necessary conversion from the database format into ASCII.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream. Also, a
	* stream may return <code>0</code> when the method <code>available</code>
	* is called whether there is data available or not.
	*
	* @param columnName the SQL name of the column
	* @return a Java input stream that delivers the database column value
	* as a stream of one-byte ASCII characters.
	* If the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code>.
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getAsciiStream(columnName : String) : java.io.InputStream;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a stream of
	* Unicode characters. The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARCHAR</code> values.
	* The JDBC driver will
	* do any necessary conversion from the database format into Unicode.
	* The byte format of the Unicode stream must be Java UTF-8,
	* as defined in the Java virtual machine specification.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream. Also, a
	* stream may return <code>0</code> when the method <code>available</code>
	* is called whether there is data available or not.
	*
	* @param columnName the SQL name of the column
	* @return a Java input stream that delivers the database column value
	* as a stream of two-byte Unicode characters.
	* If the value is SQL <code>NULL</code>,
	* the value returned is <code>null</code>.
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	* @deprecated
	*/
	@:overload public function getUnicodeStream(columnName : String) : java.io.InputStream;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a stream of uninterpreted
	* <code>byte</code>s.
	* The value can then be read in chunks from the
	* stream. This method is particularly
	* suitable for retrieving large <code>LONGVARBINARY</code>
	* values.
	*
	* <P><B>Note:</B> All the data in the returned stream must be
	* read prior to getting the value of any other column. The next
	* call to a <code>getXXX</code> method implicitly closes the stream. Also, a
	* stream may return <code>0</code> when the method <code>available</code>
	* is called whether there is data available or not.
	*
	* @param columnName the SQL name of the column
	* @return a Java input stream that delivers the database column value
	* as a stream of uninterpreted bytes;
	* if the value is SQL <code>NULL</code>, the result is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBinaryStream(columnName : String) : java.io.InputStream;
	
	/**
	* Returns the first warning reported by calls on this rowset's
	* <code>ResultSet</code> object.
	* Subsequent warnings on this rowset's <code>ResultSet</code> object
	* will be chained to the <code>SQLWarning</code> object that
	* this method returns.
	*
	* <P>The warning chain is automatically cleared each time a new
	* row is read.
	*
	* <P><B>Note:</B> This warning chain only covers warnings caused
	* by <code>ResultSet</code> methods.  Any warning caused by
	* <code>Statement</code> methods
	* (such as reading OUT parameters) will be chained on the
	* <code>Statement</code> object.
	*
	* @return the first <code>SQLWarning</code> object reported or <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getWarnings() : java.sql.SQLWarning;
	
	/**
	* Clears all warnings reported on this rowset's <code>ResultSet</code> object.
	* After this method is called, the method <code>getWarnings</code>
	* returns <code>null</code> until a new warning is
	* reported for this rowset's <code>ResultSet</code> object.
	*
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function clearWarnings() : Void;
	
	/**
	* Gets the name of the SQL cursor used by this rowset's <code>ResultSet</code>
	* object.
	*
	* <P>In SQL, a result table is retrieved through a cursor that is
	* named. The current row of a result set can be updated or deleted
	* using a positioned update/delete statement that references the
	* cursor name. To insure that the cursor has the proper isolation
	* level to support update, the cursor's <code>select</code> statement should be
	* of the form 'select for update'. If the 'for update' clause is
	* omitted, the positioned updates may fail.
	*
	* <P>The JDBC API supports this SQL feature by providing the name of the
	* SQL cursor used by a <code>ResultSet</code> object.
	* The current row of a <code>ResultSet</code> object
	* is also the current row of this SQL cursor.
	*
	* <P><B>Note:</B> If positioned update is not supported, a
	* <code>SQLException</code> is thrown.
	*
	* @return the SQL name for this rowset's <code>ResultSet</code> object's cursor
	* @throws SQLException if (1) a database access error occurs
	*            or (2) xthis rowset does not have a currently valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getCursorName() : String;
	
	/**
	* Retrieves the  number, types and properties of
	* this rowset's <code>ResultSet</code> object's columns.
	*
	* @return the description of this rowset's <code>ResultSet</code>
	*     object's columns
	* @throws SQLException if (1) a database access error occurs
	*     or (2) this rowset does not have a currently valid connection,
	*     prepared statement, and result set
	*/
	@:overload public function getMetaData() : java.sql.ResultSetMetaData;
	
	/**
	* <p>Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* an <code>Object</code>.
	*
	* <p>This method will return the value of the given column as a
	* Java object.  The type of the Java object will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification.
	*
	* <p>This method may also be used to read datatabase-specific
	* abstract data types.
	*
	* In the JDBC 3.0 API, the behavior of method
	* <code>getObject</code> is extended to materialize
	* data of SQL user-defined types.  When a column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to: <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return a <code>java.lang.Object</code> holding the column value
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getObject(columnIndex : Int) : Dynamic;
	
	/**
	* <p>Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as
	* an <code>Object</code>.
	*
	* <p>This method will return the value of the given column as a
	* Java object.  The type of the Java object will be the default
	* Java object type corresponding to the column's SQL type,
	* following the mapping for built-in types specified in the JDBC
	* specification.
	*
	* <p>This method may also be used to read datatabase-specific
	* abstract data types.
	*
	* In the JDBC 3.0 API, the behavior of the method
	* <code>getObject</code> is extended to materialize
	* data of SQL user-defined types.  When a column contains
	* a structured or distinct value, the behavior of this method is as
	* if it were a call to: <code>getObject(columnIndex,
	* this.getStatement().getConnection().getTypeMap())</code>.
	*
	* @param columnName the SQL name of the column
	* @return a <code>java.lang.Object</code> holding the column value
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getObject(columnName : String) : Dynamic;
	
	/**
	* Maps the given <code>JdbcRowSetImpl</code> column name to its
	* <code>JdbcRowSetImpl</code> column index and reflects this on
	* the internal <code>ResultSet</code> object.
	*
	* @param columnName the name of the column
	* @return the column index of the given column name
	* @throws SQLException if (1) a database access error occurs
	* (2) this rowset does not have a currently valid connection,
	* prepared statement, and result set
	*/
	@:overload public function findColumn(columnName : String) : Int;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code>.
	* @param columnIndex the first column is 1, the second is 2, and so on
	*
	*/
	@:overload public function getCharacterStream(columnIndex : Int) : java.io.Reader;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.io.Reader</code> object.
	*
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code>.
	* @param columnName the name of the column
	* @return the value in the specified column as a <code>java.io.Reader</code>
	*
	*/
	@:overload public function getCharacterStream(columnName : String) : java.io.Reader;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.math.BigDecimal</code> with full precision.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @return the column value (full precision);
	* if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code>.
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function getBigDecimal(columnIndex : Int) : java.math.BigDecimal;
	
	/**
	* Gets the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.math.BigDecimal</code> with full precision.
	*
	* @param columnName the column name
	* @return the column value (full precision);
	* if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code>.
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function getBigDecimal(columnName : String) : java.math.BigDecimal;
	
	/**
	* Indicates whether the cursor is before the first row in
	* this rowset's <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is before the first row;
	* <code>false</code> if the cursor is at any other position or the
	* result set contains no rows
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function isBeforeFirst() : Bool;
	
	/**
	* Indicates whether the cursor is after the last row in
	* this rowset's <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is after the last row;
	* <code>false</code> if the cursor is at any other position or the
	* result set contains no rows
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function isAfterLast() : Bool;
	
	/**
	* Indicates whether the cursor is on the first row of
	* this rowset's <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is on the first row;
	* <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function isFirst() : Bool;
	
	/**
	* Indicates whether the cursor is on the last row of
	* this rowset's <code>ResultSet</code> object.
	* Note: Calling the method <code>isLast</code> may be expensive
	* because the JDBC driver
	* might need to fetch ahead one row in order to determine
	* whether the current row is the last row in the result set.
	*
	* @return <code>true</code> if the cursor is on the last row;
	* <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*
	*/
	@:overload public function isLast() : Bool;
	
	/**
	* Moves the cursor to the front of
	* this rowset's <code>ResultSet</code> object, just before the
	* first row. This method has no effect if the result set contains no rows.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function beforeFirst() : Void;
	
	/**
	* Moves the cursor to the end of
	* this rowset's <code>ResultSet</code> object, just after the
	* last row. This method has no effect if the result set contains no rows.
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function afterLast() : Void;
	
	/**
	* Moves the cursor to the first row in
	* this rowset's <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	* <code>false</code> if there are no rows in the result set
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function first() : Bool;
	
	/**
	* Moves the cursor to the last row in
	* this rowset's <code>ResultSet</code> object.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	* <code>false</code> if there are no rows in the result set
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function last() : Bool;
	
	/**
	* Retrieves the current row number.  The first row is number 1, the
	* second is number 2, and so on.
	*
	* @return the current row number; <code>0</code> if there is no current row
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getRow() : Int;
	
	/**
	* Moves the cursor to the given row number in
	* this rowset's internal <code>ResultSet</code> object.
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
	* cursor on the last row, calling the method <code>absolute(-2)</code>
	* moves the cursor to the next-to-last row, and so on.
	*
	* <p>An attempt to position the cursor beyond the first/last row in
	* the result set leaves the cursor before the first row or after
	* the last row.
	*
	* <p><B>Note:</B> Calling <code>absolute(1)</code> is the same
	* as calling <code>first()</code>. Calling <code>absolute(-1)</code>
	* is the same as calling <code>last()</code>.
	*
	* @return <code>true</code> if the cursor is on the result set;
	* <code>false</code> otherwise
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the row is <code>0</code>, (3) the result set
	*            type is <code>TYPE_FORWARD_ONLY</code>, or (4) this
	*            rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function absolute(row : Int) : Bool;
	
	/**
	* Moves the cursor a relative number of rows, either positive or negative.
	* Attempting to move beyond the first/last row in the
	* result set positions the cursor before/after the
	* the first/last row. Calling <code>relative(0)</code> is valid, but does
	* not change the cursor position.
	*
	* <p>Note: Calling the method <code>relative(1)</code>
	* is different from calling the method <code>next()</code>
	* because is makes sense to call <code>next()</code> when there
	* is no current row,
	* for example, when the cursor is positioned before the first row
	* or after the last row of the result set.
	*
	* @return <code>true</code> if the cursor is on a row;
	* <code>false</code> otherwise
	* @throws SQLException if (1) a database access error occurs,
	*            (2) there is no current row, (3) the result set
	*            type is <code>TYPE_FORWARD_ONLY</code>, or (4) this
	*            rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function relative(rows : Int) : Bool;
	
	/**
	* Moves the cursor to the previous row in this
	* <code>ResultSet</code> object.
	*
	* <p><B>Note:</B> Calling the method <code>previous()</code> is not the same as
	* calling the method <code>relative(-1)</code> because it
	* makes sense to call <code>previous()</code> when there is no current row.
	*
	* @return <code>true</code> if the cursor is on a valid row;
	* <code>false</code> if it is off the result set
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*/
	@:overload public function previous() : Bool;
	
	/**
	* Gives a hint as to the direction in which the rows in this
	* <code>ResultSet</code> object will be processed.
	* The initial value is determined by the
	* <code>Statement</code> object
	* that produced this rowset's <code>ResultSet</code> object.
	* The fetch direction may be changed at any time.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) the result set type is <code>TYPE_FORWARD_ONLY</code>
	*            and the fetch direction is not <code>FETCH_FORWARD</code>,
	*            or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	* @see java.sql.Statement#setFetchDirection
	*/
	@:overload override public function setFetchDirection(direction : Int) : Void;
	
	/**
	* Returns the fetch direction for this
	* <code>ResultSet</code> object.
	*
	* @return the current fetch direction for this rowset's
	*         <code>ResultSet</code> object
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload override public function getFetchDirection() : Int;
	
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
	* @throws SQLException if (1) a database access error occurs, (2) the
	*            condition <code>0 <= rows <= this.getMaxRows()</code> is not
	*            satisfied, or (3) this rowset does not currently have a valid
	*            connection, prepared statement, and result set
	*
	*/
	@:overload override public function setFetchSize(rows : Int) : Void;
	
	/**
	*
	* Returns the fetch size for this
	* <code>ResultSet</code> object.
	*
	* @return the current fetch size for this rowset's <code>ResultSet</code> object
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload override public function getType() : Int;
	
	/**
	* Returns the concurrency mode of this rowset's <code>ResultSet</code> object.
	* The concurrency used is determined by the
	* <code>Statement</code> object that created the result set.
	*
	* @return the concurrency type, either <code>CONCUR_READ_ONLY</code>
	* or <code>CONCUR_UPDATABLE</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload override public function getConcurrency() : Int;
	
	/**
	* Indicates whether the current row has been updated.  The value returned
	* depends on whether or not the result set can detect updates.
	*
	* @return <code>true</code> if the row has been visibly updated
	* by the owner or another, and updates are detected
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	* @see java.sql.DatabaseMetaData#updatesAreDetected
	*/
	@:overload public function rowUpdated() : Bool;
	
	/**
	* Indicates whether the current row has had an insertion.
	* The value returned depends on whether or not this
	* <code>ResultSet</code> object can detect visible inserts.
	*
	* @return <code>true</code> if a row has had an insertion
	* and insertions are detected; <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	* @see java.sql.DatabaseMetaData#insertsAreDetected
	*
	*/
	@:overload public function rowInserted() : Bool;
	
	/**
	* Indicates whether a row has been deleted.  A deleted row may leave
	* a visible "hole" in a result set.  This method can be used to
	* detect holes in a result set.  The value returned depends on whether
	* or not this rowset's <code>ResultSet</code> object can detect deletions.
	*
	* @return <code>true</code> if a row was deleted and deletions are detected;
	* <code>false</code> otherwise
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	* @see java.sql.DatabaseMetaData#deletesAreDetected
	*/
	@:overload public function rowDeleted() : Bool;
	
	/**
	* Gives a nullable column a null value.
	*
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code>
	* or <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function updateNull(columnIndex : Int) : Void;
	
	/**
	* Updates the designated column with a <code>boolean</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateBoolean(columnIndex : Int, x : Bool) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateByte(columnIndex : Int, x : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the designated column with a <code>short</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateShort(columnIndex : Int, x : java.StdTypes.Int16) : Void;
	
	/**
	* Updates the designated column with an <code>int</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function updateInt(columnIndex : Int, x : Int) : Void;
	
	/**
	* Updates the designated column with a <code>long</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateLong(columnIndex : Int, x : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a <code>float</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateFloat(columnIndex : Int, x : Single) : Void;
	
	/**
	* Updates the designated column with a <code>double</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateDouble(columnIndex : Int, x : Float) : Void;
	
	/**
	* Updates the designated column with a <code>java.math.BigDecimal</code>
	* value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateBigDecimal(columnIndex : Int, x : java.math.BigDecimal) : Void;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateString(columnIndex : Int, x : String) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> array value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateBytes(columnIndex : Int, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Date</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateDate(columnIndex : Int, x : java.sql.Date) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Time</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateTime(columnIndex : Int, x : java.sql.Time) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Timestamp</code>
	* value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateTimestamp(columnIndex : Int, x : java.sql.Timestamp) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @param length the length of the stream
	* @throws SQLException if (1) a database access error occurs
	*            (2) or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @param length the length of the stream
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @param length the length of the stream
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @param scale for <code>java.sql.Types.DECIMAl</code>
	*  or <code>java.sql.Types.NUMERIC</code> types,
	*  this is the number of digits after the decimal point.  For all other
	*  types this value will be ignored.
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateObject(columnIndex : Int, x : Dynamic, scale : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateObject(columnIndex : Int, x : Dynamic) : Void;
	
	/**
	* Updates the designated column with a <code>null</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function updateNull(columnName : String) : Void;
	
	/**
	* Updates the designated column with a <code>boolean</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateBoolean(columnName : String, x : Bool) : Void;
	
	/**
	* Updates the designated column with a <code>byte</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateByte(columnName : String, x : java.StdTypes.Int8) : Void;
	
	/**
	* Updates the designated column with a <code>short</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateShort(columnName : String, x : java.StdTypes.Int16) : Void;
	
	/**
	* Updates the designated column with an <code>int</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateInt(columnName : String, x : Int) : Void;
	
	/**
	* Updates the designated column with a <code>long</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateLong(columnName : String, x : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a <code>float </code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateFloat(columnName : String, x : Single) : Void;
	
	/**
	* Updates the designated column with a <code>double</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateDouble(columnName : String, x : Float) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.BigDecimal</code>
	* value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateBigDecimal(columnName : String, x : java.math.BigDecimal) : Void;
	
	/**
	* Updates the designated column with a <code>String</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateString(columnName : String, x : String) : Void;
	
	/**
	* Updates the designated column with a <code>boolean</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* JDBC 2.0
	*
	* Updates a column with a byte array value.
	*
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row, or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or <code>insertRow</code>
	* methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateBytes(columnName : String, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Date</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateDate(columnName : String, x : java.sql.Date) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Time</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateTime(columnName : String, x : java.sql.Time) : Void;
	
	/**
	* Updates the designated column with a <code>java.sql.Timestamp</code>
	* value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateTimestamp(columnName : String, x : java.sql.Timestamp) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateAsciiStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateBinaryStream(columnName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The <code>updateXXX</code> methods are used to update column values
	* in the current row or the insert row.  The <code>updateXXX</code>
	* methods do not update the underlying database; instead the
	* <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	*
	* @param columnName the name of the column
	* @param reader the new column <code>Reader</code> stream value
	* @param length the length of the stream
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateCharacterStream(columnName : String, reader : java.io.Reader, length : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @param scale for <code>java.sql.Types.DECIMAL</code>
	*  or <code>java.sql.Types.NUMERIC</code> types,
	*  this is the number of digits after the decimal point.  For all other
	*  types this value will be ignored.
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateObject(columnName : String, x : Dynamic, scale : Int) : Void;
	
	/**
	* Updates the designated column with an <code>Object</code> value.
	* The <code>updateXXX</code> methods are used to update column values in the
	* current row or the insert row.  The <code>updateXXX</code> methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnName the name of the column
	* @param x the new column value
	* @throws SQLException if a database access error occurs
	*
	*/
	@:overload public function updateObject(columnName : String, x : Dynamic) : Void;
	
	/**
	* Inserts the contents of the insert row into this
	* <code>ResultSet</code> object and into the database
	* and also notifies listeners that a row has changed.
	* The cursor must be on the insert row when this method is called.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this method is called when the cursor is not
	*             on the insert row, (3) not all non-nullable columns in
	*             the insert row have been given a value, or (4) this
	*             rowset does not currently have a valid connection,
	*             prepared statement, and result set
	*/
	@:overload public function insertRow() : Void;
	
	/**
	* Updates the underlying database with the new contents of the
	* current row of this rowset's <code>ResultSet</code> object
	* and notifies listeners that a row has changed.
	* This method cannot be called when the cursor is on the insert row.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this method is called when the cursor is
	*             on the insert row, (3) the concurrency of the result
	*             set is <code>ResultSet.CONCUR_READ_ONLY</code>, or
	*             (4) this rowset does not currently have a valid connection,
	*             prepared statement, and result set
	*/
	@:overload public function updateRow() : Void;
	
	/**
	* Deletes the current row from this rowset's <code>ResultSet</code> object
	* and from the underlying database and also notifies listeners that a row
	* has changed.  This method cannot be called when the cursor is on the insert
	* row.
	*
	* @throws SQLException if a database access error occurs
	* or if this method is called when the cursor is on the insert row
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this method is called when the cursor is before the
	*            first row, after the last row, or on the insert row,
	*            (3) the concurrency of this rowset's result
	*            set is <code>ResultSet.CONCUR_READ_ONLY</code>, or
	*            (4) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function deleteRow() : Void;
	
	/**
	* Refreshes the current row of this rowset's <code>ResultSet</code>
	* object with its most recent value in the database.  This method
	* cannot be called when the cursor is on the insert row.
	*
	* <P>The <code>refreshRow</code> method provides a way for an
	* application to explicitly tell the JDBC driver to refetch
	* a row(s) from the database.  An application may want to call
	* <code>refreshRow</code> when caching or prefetching is being
	* done by the JDBC driver to fetch the latest value of a row
	* from the database.  The JDBC driver may actually refresh multiple
	* rows at once if the fetch size is greater than one.
	*
	* <P> All values are refetched subject to the transaction isolation
	* level and cursor sensitivity.  If <code>refreshRow</code> is called after
	* calling an <code>updateXXX</code> method, but before calling
	* the method <code>updateRow</code>, then the
	* updates made to the row are lost.  Calling the method
	* <code>refreshRow</code> frequently will likely slow performance.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this method is called when the cursor is
	*             on the insert row, or (3) this rowset does not
	*             currently have a valid connection, prepared statement,
	*             and result set
	*
	*/
	@:overload public function refreshRow() : Void;
	
	/**
	* Cancels the updates made to the current row in this
	* <code>ResultSet</code> object and notifies listeners that a row
	* has changed. This method may be called after calling an
	* <code>updateXXX</code> method(s) and before calling
	* the method <code>updateRow</code> to roll back
	* the updates made to a row.  If no updates have been made or
	* <code>updateRow</code> has already been called, this method has no
	* effect.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this method is called when the cursor is
	*             on the insert row, or (3) this rowset does not
	*             currently have a valid connection, prepared statement,
	*             and result set
	*/
	@:overload public function cancelRowUpdates() : Void;
	
	/**
	* Moves the cursor to the insert row.  The current cursor position is
	* remembered while the cursor is positioned on the insert row.
	*
	* The insert row is a special row associated with an updatable
	* result set.  It is essentially a buffer where a new row may
	* be constructed by calling the <code>updateXXX</code> methods prior to
	* inserting the row into the result set.
	*
	* Only the <code>updateXXX</code>, <code>getXXX</code>,
	* and <code>insertRow</code> methods may be
	* called when the cursor is on the insert row.  All of the columns in
	* a result set must be given a value each time this method is
	* called before calling <code>insertRow</code>.
	* An <code>updateXXX</code> method must be called before a
	* <code>getXXX</code> method can be called on a column value.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this rowset's <code>ResultSet</code> object is
	*             not updatable, or (3) this rowset does not
	*             currently have a valid connection, prepared statement,
	*             and result set
	*
	*/
	@:overload public function moveToInsertRow() : Void;
	
	/**
	* Moves the cursor to the remembered cursor position, usually the
	* current row.  This method has no effect if the cursor is not on
	* the insert row.
	*
	* @throws SQLException if (1) a database access error occurs,
	*            (2) this rowset's <code>ResultSet</code> object is
	*             not updatable, or (3) this rowset does not
	*             currently have a valid connection, prepared statement,
	*             and result set
	*/
	@:overload public function moveToCurrentRow() : Void;
	
	/**
	* Returns the <code>Statement</code> object that produced this
	* <code>ResultSet</code> object.
	* If the result set was generated some other way, such as by a
	* <code>DatabaseMetaData</code> method, this method returns
	* <code>null</code>.
	*
	* @return the <code>Statment</code> object that produced
	* this rowset's <code>ResultSet</code> object or <code>null</code>
	* if the result set was produced some other way
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getStatement() : java.sql.Statement;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as an <code>Object</code>.
	* This method uses the given <code>Map</code> object
	* for the custom mapping of the
	* SQL structured or distinct type that is being retrieved.
	*
	* @param i the first column is 1, the second is 2, and so on
	* @param map a <code>java.util.Map</code> object that contains the mapping
	* from SQL type names to classes in the Java programming language
	* @return an <code>Object</code> in the Java programming language
	* representing the SQL value
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getObject(i : Int, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Ref</code> object.
	*
	* @param i the first column is 1, the second is 2, and so on
	* @return a <code>Ref</code> object representing an SQL <code>REF</code> value
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getRef(i : Int) : java.sql.Ref;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Blob</code> object.
	*
	* @param i the first column is 1, the second is 2, and so on
	* @return a <code>Blob</code> object representing the SQL <code>BLOB</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBlob(i : Int) : java.sql.Blob;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Clob</code> object.
	*
	* @param i the first column is 1, the second is 2, and so on
	* @return a <code>Clob</code> object representing the SQL <code>CLOB</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getClob(i : Int) : java.sql.Clob;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as an <code>Array</code> object.
	*
	* @param i the first column is 1, the second is 2, and so on.
	* @return an <code>Array</code> object representing the SQL <code>ARRAY</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getArray(i : Int) : java.sql.Array;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as an <code>Object</code>.
	* This method uses the specified <code>Map</code> object for
	* custom mapping if appropriate.
	*
	* @param colName the name of the column from which to retrieve the value
	* @param map a <code>java.util.Map</code> object that contains the mapping
	* from SQL type names to classes in the Java programming language
	* @return an <code>Object</code> representing the SQL
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getObject(colName : String, map : java.util.Map<String, Class<Dynamic>>) : Dynamic;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Ref</code> object.
	*
	* @param colName the column name
	* @return a <code>Ref</code> object representing the SQL <code>REF</code> value in
	*         the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getRef(colName : String) : java.sql.Ref;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Blob</code> object.
	*
	* @param colName the name of the column from which to retrieve the value
	* @return a <code>Blob</code> object representing the SQL <code>BLOB</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getBlob(colName : String) : java.sql.Blob;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>Clob</code> object.
	*
	* @param colName the name of the column from which to retrieve the value
	* @return a <code>Clob</code> object representing the SQL <code>CLOB</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getClob(colName : String) : java.sql.Clob;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as an <code>Array</code> object.
	*
	* @param colName the name of the column from which to retrieve the value
	* @return an <code>Array</code> object representing the SQL <code>ARRAY</code>
	*         value in the specified column
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getArray(colName : String) : java.sql.Array;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>java.sql.Date</code>
	* object. This method uses the given calendar to construct an appropriate
	* millisecond value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the date
	* @return the column value as a <code>java.sql.Date</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code>
	* @throws SQLException if (1) a database access error occurs
	*            or (2) this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getDate(columnIndex : Int, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>java.sql.Date</code>
	* object. This method uses the given calendar to construct an appropriate
	* millisecond value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnName the SQL name of the column from which to retrieve the value
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the date
	* @return the column value as a <code>java.sql.Date</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code>
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*
	*/
	@:overload public function getDate(columnName : String, cal : java.util.Calendar) : java.sql.Date;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>java.sql.Time</code>
	* object. This method uses the given calendar to construct an appropriate
	* millisecond value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the time
	* @return the column value as a <code>java.sql.Time</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code> in the Java programming language
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTime(columnIndex : Int, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a <code>java.sql.Time</code>
	* object. This method uses the given calendar to construct an appropriate
	* millisecond value for the date if the underlying database does not store
	* timezone information.
	*
	* @param columnName the SQL name of the column
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the time
	* @return the column value as a <code>java.sql.Time</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code> in the Java programming language
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTime(columnName : String, cal : java.util.Calendar) : java.sql.Time;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.sql.Timestamp</code> object.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the timestamp if the underlying database does not store
	* timezone information.
	*
	* @param columnIndex the first column is 1, the second is 2, and so on
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the timestamp
	* @return the column value as a <code>java.sql.Timestamp</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code>
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTimestamp(columnIndex : Int, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Returns the value of the designated column in the current row
	* of this rowset's <code>ResultSet</code> object as a
	* <code>java.sql.Timestamp</code> object.
	* This method uses the given calendar to construct an appropriate millisecond
	* value for the timestamp if the underlying database does not store
	* timezone information.
	*
	* @param columnName the SQL name of the column
	* @param cal the <code>java.util.Calendar</code> object
	*        to use in constructing the timestamp
	* @return the column value as a <code>java.sql.Timestamp</code> object;
	*         if the value is SQL <code>NULL</code>,
	*         the value returned is <code>null</code>
	* @throws SQLException if a database access error occurs
	*            or this rowset does not currently have a valid connection,
	*            prepared statement, and result set
	*/
	@:overload public function getTimestamp(columnName : String, cal : java.util.Calendar) : java.sql.Timestamp;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param ref the new <code>Ref</code> column value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateRef(columnIndex : Int, ref : java.sql.Ref) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param ref the new column value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateRef(columnName : String, ref : java.sql.Ref) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param c the new column <code>Clob</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateClob(columnIndex : Int, c : java.sql.Clob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>double</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param c the new column <code>Clob</code> value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateClob(columnName : String, c : java.sql.Clob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>java.sql.Blob</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param b the new column <code>Blob</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateBlob(columnIndex : Int, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>java.sql.Blob </code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param b the new column <code>Blob</code> value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateBlob(columnName : String, b : java.sql.Blob) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>java.sql.Array</code> values.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnIndex the first column is <code>1</code>, the second
	*        is <code>2</code>, and so on; must be <code>1</code> or larger
	*        and equal to or less than the number of columns in this rowset
	* @param a the new column <code>Array</code> value
	* @throws SQLException if (1) the given column index is out of bounds,
	*            (2) the cursor is not on one of this rowset's rows or its
	*            insert row, or (3) this rowset is
	*            <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateArray(columnIndex : Int, a : java.sql.Array) : Void;
	
	/**
	* Sets the designated column in either the current row or the insert
	* row of this <code>JdbcRowSetImpl</code> object with the given
	* <code>java.sql.Array</code> value.
	*
	* This method updates a column value in either the current row or
	* the insert row of this rowset, but it does not update the
	* database.  If the cursor is on a row in the rowset, the
	* method {@link #updateRow} must be called to update the database.
	* If the cursor is on the insert row, the method {@link #insertRow}
	* must be called, which will insert the new row into both this rowset
	* and the database. Both of these methods must be called before the
	* cursor moves to another row.
	*
	* @param columnName a <code>String</code> object that must match the
	*        SQL name of a column in this rowset, ignoring case
	* @param a the new column <code>Array</code> value
	* @throws SQLException if (1) the given column name does not match the
	*            name of a column in this rowset, (2) the cursor is not on
	*            one of this rowset's rows or its insert row, or (3) this
	*            rowset is <code>ResultSet.CONCUR_READ_ONLY</code>
	*/
	@:overload public function updateArray(columnName : String, a : java.sql.Array) : Void;
	
	/**
	* Provide interface coverage for getURL(int) in ResultSet->RowSet
	*/
	@:overload public function getURL(columnIndex : Int) : java.net.URL;
	
	/**
	* Provide interface coverage for getURL(String) in ResultSet->RowSet
	*/
	@:overload public function getURL(columnName : String) : java.net.URL;
	
	/**
	* Return the RowSetWarning object for the current row of a
	* <code>JdbcRowSetImpl</code>
	*/
	@:overload public function getRowSetWarnings() : javax.sql.rowset.RowSetWarning;
	
	/**
	* Unsets the designated parameter to the given int array.
	* This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdxes the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnIdx is
	*  not the same as set using <code>setMatchColumn(int [])</code>
	*/
	@:overload public function unsetMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Unsets the designated parameter to the given String array.
	* This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdxes the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnName is
	*  not the same as set using <code>setMatchColumn(String [])</code>
	*/
	@:overload public function unsetMatchColumn(columnIdxes : java.NativeArray<String>) : Void;
	
	/**
	* Retrieves the column name as <code>String</code> array
	* that was set using <code>setMatchColumn(String [])</code>
	* for this rowset.
	*
	* @return a <code>String</code> array object that contains the column names
	*         for the rowset which has this the match columns
	*
	* @throws SQLException if an error occurs or column name is not set
	*/
	@:overload public function getMatchColumnNames() : java.NativeArray<String>;
	
	/**
	* Retrieves the column id as <code>int</code> array that was set using
	* <code>setMatchColumn(int [])</code> for this rowset.
	*
	* @return a <code>int</code> array object that contains the column ids
	*         for the rowset which has this as the match columns.
	*
	* @throws SQLException if an error occurs or column index is not set
	*/
	@:overload public function getMatchColumnIndexes() : java.NativeArray<Int>;
	
	/**
	* Sets the designated parameter to the given int array.
	* This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumnIndexes</code> is called.
	*
	* @param columnIdxes the indexes into this rowset
	*        object's internal representation of parameter values; the
	*        first parameter is 0, the second is 1, and so on; must be
	*        <code>0</code> or greater
	* @throws SQLException if an error occurs or the
	*                         parameter index is out of bounds
	*/
	@:overload public function setMatchColumn(columnIdxes : java.NativeArray<Int>) : Void;
	
	/**
	* Sets the designated parameter to the given String array.
	*  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnNames the name of the column into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds
	*/
	@:overload public function setMatchColumn(columnNames : java.NativeArray<String>) : Void;
	
	/**
	* Sets the designated parameter to the given <code>int</code>
	* object.  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnIdx the index into this rowset
	*        object's internal representation of parameter values; the
	*        first parameter is 0, the second is 1, and so on; must be
	*        <code>0</code> or greater
	* @throws SQLException if an error occurs or the
	*                         parameter index is out of bounds
	*/
	@:overload public function setMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Sets the designated parameter to the given <code>String</code>
	* object.  This forms the basis of the join for the
	* <code>JoinRowSet</code> as the column which will form the basis of the
	* join.
	* <P>
	* The parameter value set by this method is stored internally and
	* will be supplied as the appropriate parameter in this rowset's
	* command when the method <code>getMatchColumn</code> is called.
	*
	* @param columnName the name of the column into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds
	*/
	@:overload public function setMatchColumn(columnName : String) : Void;
	
	/**
	* Unsets the designated parameter to the given <code>int</code>
	* object.  This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnIdx the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnIdx is
	*  not the same as set using <code>setMatchColumn(int)</code>
	*/
	@:overload public function unsetMatchColumn(columnIdx : Int) : Void;
	
	/**
	* Unsets the designated parameter to the given <code>String</code>
	* object.  This was set using <code>setMatchColumn</code>
	* as the column which will form the basis of the join.
	* <P>
	* The parameter value unset by this method should be same
	* as was set.
	*
	* @param columnName the index into this rowset
	*        object's internal representation of parameter values
	* @throws SQLException if an error occurs or the
	*  parameter index is out of bounds or if the columnName is
	*  not the same as set using <code>setMatchColumn(String)</code>
	*
	*/
	@:overload public function unsetMatchColumn(columnName : String) : Void;
	
	/**
	* Retrieves the <code>DatabaseMetaData</code> associated with
	* the connection handle associated this this
	* <code>JdbcRowSet</code> object.
	*
	* @return the <code>DatabaseMetadata</code> associated
	*  with the rowset's connection.
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getDatabaseMetaData() : java.sql.DatabaseMetaData;
	
	/**
	* Retrieves the <code>ParameterMetaData</code> associated with
	* the connection handle associated this this
	* <code>JdbcRowSet</code> object.
	*
	* @return the <code>ParameterMetadata</code> associated
	*  with the rowset's connection.
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getParameterMetaData() : java.sql.ParameterMetaData;
	
	/**
	* Commits all updates in this <code>JdbcRowSet</code> object by
	* wrapping the internal <code>Connection</code> object and calling
	* its <code>commit</code> method.
	* This method sets this <code>JdbcRowSet</code> object's private field
	* <code>rs</code> to <code>null</code> after saving its value to another
	* object, but only if the <code>ResultSet</code>
	* constant <code>HOLD_CURSORS_OVER_COMMIT</code> has not been set.
	* (The field <code>rs</code> is this <code>JdbcRowSet</code> object's
	* <code>ResultSet</code> object.)
	*
	* @throws SQLException if autoCommit is set to true or if a database
	* access error occurs
	*/
	@:overload public function commit() : Void;
	
	/**
	* Sets auto-commit on the internal <code>Connection</code> object with this
	* <code>JdbcRowSet</code>
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function setAutoCommit(autoCommit : Bool) : Void;
	
	/**
	* Returns the auto-commit status with this <code>JdbcRowSet</code>.
	*
	* @return true if auto commit is true; false otherwise
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getAutoCommit() : Bool;
	
	/**
	* Rolls back all the updates in this <code>JdbcRowSet</code> object by
	* wrapping the internal <code>Connection</code> object and calling its
	* <code>rollback</code> method.
	* This method sets this <code>JdbcRowSet</code> object's private field
	* <code>rs</code> to <code>null</code> after saving its value to another object.
	* (The field <code>rs</code> is this <code>JdbcRowSet</code> object's
	* internal <code>ResultSet</code> object.)
	*
	* @throws SQLException if autoCommit is set to true or a database
	* access error occurs
	*/
	@:overload public function rollback() : Void;
	
	/**
	* Rollbacks all the updates in the <code>JdbcRowSet</code> back to the
	* last <code>Savepoint</code> transaction marker. Wraps the internal
	* <code>Connection</code> object and call it's rollback method
	*
	* @param s the <code>Savepoint</code> transaction marker to roll the
	* transaction to.
	* @throws SQLException if autoCommit is set to true; or ia a database
	* access error occurs
	*/
	@:overload public function rollback(s : java.sql.Savepoint) : Void;
	
	@:overload private function setParams() : Void;
	
	/**
	* Gets this <code>JdbcRowSet</code> object's Connection property
	*
	*
	* @return the <code>Connection</code> object associated with this rowset;
	*/
	@:overload private function getConnection() : java.sql.Connection;
	
	/**
	* Sets this <code>JdbcRowSet</code> object's connection property
	* to the given <code>Connection</code> object.
	*
	* @param connection the <code>Connection</code> object.
	*/
	@:overload private function setConnection(connection : java.sql.Connection) : Void;
	
	/**
	* Gets this <code>JdbcRowSet</code> object's PreparedStatement property
	*
	*
	* @return the <code>PreparedStatement</code> object associated with this rowset;
	*/
	@:overload private function getPreparedStatement() : java.sql.PreparedStatement;
	
	/**
	* Sets this <code>JdbcRowSet</code> object's preparedtsatement property
	* to the given <code>PreparedStatemennt</code> object.
	*
	* @param preparedStatement the <code>PreparedStatement</code> object
	*
	*/
	@:overload private function setPreparedStatement(preparedStatement : java.sql.PreparedStatement) : Void;
	
	/**
	* Gets this <code>JdbcRowSet</code> object's ResultSet property
	*
	*
	* @return the <code>ResultSet</code> object associated with this rowset;
	*/
	@:overload private function getResultSet() : java.sql.ResultSet;
	
	/**
	* Sets this <code>JdbcRowSet</code> object's resultset property
	* to the given <code>ResultSet</code> object.
	*
	* @param resultSet the <code>ResultSet</code> object
	*
	*/
	@:overload private function setResultSet(resultSet : java.sql.ResultSet) : Void;
	
	/**
	* Sets this <code>JdbcRowSet</code> object's <code>command</code> property to
	* the given <code>String</code> object and clears the parameters, if any,
	* that were set for the previous command. In addition,
	* if the <code>command</code> property has previously been set to a
	* non-null value and it is
	* different from the <code>String</code> object supplied,
	* this method sets this <code>JdbcRowSet</code> object's private fields
	* <code>ps</code> and <code>rs</code> to <code>null</code>.
	* (The field <code>ps</code> is its <code>PreparedStatement</code> object, and
	* the field <code>rs</code> is its <code>ResultSet</code> object.)
	* <P>
	* The <code>command</code> property may not be needed if the <code>RowSet</code>
	* object gets its data from a source that does not support commands,
	* such as a spreadsheet or other tabular file.
	* Thus, this property is optional and may be <code>null</code>.
	*
	* @param command a <code>String</code> object containing an SQL query
	*            that will be set as this <code>RowSet</code> object's command
	*            property; may be <code>null</code> but may not be an empty string
	* @throws SQLException if an empty string is provided as the command value
	* @see #getCommand
	*/
	@:overload override public function setCommand(command : String) : Void;
	
	/**
	* Sets the <code>dataSourceName</code> property for this <code>JdbcRowSet</code>
	* object to the given logical name and sets this <code>JdbcRowSet</code> object's
	* Url property to <code>null</code>. In addition, if the <code>dataSourceName</code>
	* property has previously been set and is different from the one supplied,
	* this method sets this <code>JdbcRowSet</code> object's private fields
	* <code>ps</code>, <code>rs</code>, and <code>conn</code> to <code>null</code>.
	* (The field <code>ps</code> is its <code>PreparedStatement</code> object,
	* the field <code>rs</code> is its <code>ResultSet</code> object, and
	* the field <code>conn</code> is its <code>Connection</code> object.)
	* <P>
	* The name supplied to this method must have been bound to a
	* <code>DataSource</code> object in a JNDI naming service so that an
	* application can do a lookup using that name to retrieve the
	* <code>DataSource</code> object bound to it. The <code>DataSource</code>
	* object can then be used to establish a connection to the data source it
	* represents.
	* <P>
	* Users should set either the Url property or the dataSourceName property.
	* If both properties are set, the driver will use the property set most recently.
	*
	* @param dsName a <code>String</code> object with the name that can be supplied
	*        to a naming service based on JNDI technology to retrieve the
	*        <code>DataSource</code> object that can be used to get a connection;
	*        may be <code>null</code>
	* @throws SQLException if there is a problem setting the
	*          <code>dataSourceName</code> property
	* @see #getDataSourceName
	*/
	@:overload override public function setDataSourceName(dsName : String) : Void;
	
	/**
	* Sets the Url property for this <code>JdbcRowSet</code> object
	* to the given <code>String</code> object and sets the dataSource name
	* property to <code>null</code>. In addition, if the Url property has
	* previously been set to a non <code>null</code> value and its value
	* is different from the value to be set,
	* this method sets this <code>JdbcRowSet</code> object's private fields
	* <code>ps</code>, <code>rs</code>, and <code>conn</code> to <code>null</code>.
	* (The field <code>ps</code> is its <code>PreparedStatement</code> object,
	* the field <code>rs</code> is its <code>ResultSet</code> object, and
	* the field <code>conn</code> is its <code>Connection</code> object.)
	* <P>
	* The Url property is a JDBC URL that is used when
	* the connection is created using a JDBC technology-enabled driver
	* ("JDBC driver") and the <code>DriverManager</code>.
	* The correct JDBC URL for the specific driver to be used can be found
	* in the driver documentation.  Although there are guidelines for for how
	* a JDBC URL is formed,
	* a driver vendor can specify any <code>String</code> object except
	* one with a length of <code>0</code> (an empty string).
	* <P>
	* Setting the Url property is optional if connections are established using
	* a <code>DataSource</code> object instead of the <code>DriverManager</code>.
	* The driver will use either the URL property or the
	* dataSourceName property to create a connection, whichever was
	* specified most recently. If an application uses a JDBC URL, it
	* must load a JDBC driver that accepts the JDBC URL before it uses the
	* <code>RowSet</code> object to connect to a database.  The <code>RowSet</code>
	* object will use the URL internally to create a database connection in order
	* to read or write data.
	*
	* @param url a <code>String</code> object that contains the JDBC URL
	*            that will be used to establish the connection to a database for this
	*            <code>RowSet</code> object; may be <code>null</code> but must not
	*            be an empty string
	* @throws SQLException if an error occurs setting the Url property or the
	*         parameter supplied is a string with a length of <code>0</code> (an
	*         empty string)
	* @see #getUrl
	*/
	@:overload override public function setUrl(url : String) : Void;
	
	/**
	* Sets the username property for this <code>JdbcRowSet</code> object
	* to the given user name. Because it
	* is not serialized, the username property is set at run time before
	* calling the method <code>execute</code>. In addition,
	* if the <code>username</code> property is already set with a
	* non-null value and that value is different from the <code>String</code>
	* object to be set,
	* this method sets this <code>JdbcRowSet</code> object's private fields
	* <code>ps</code>, <code>rs</code>, and <code>conn</code> to <code>null</code>.
	* (The field <code>ps</code> is its <code>PreparedStatement</code> object,
	* <code>rs</code> is its <code>ResultSet</code> object, and
	* <code>conn</code> is its <code>Connection</code> object.)
	* Setting these fields to <code>null</code> ensures that only current
	* values will be used.
	*
	* @param uname the <code>String</code> object containing the user name that
	*     is supplied to the data source to create a connection. It may be null.
	* @see #getUsername
	*/
	@:overload override public function setUsername(uname : String) : Void;
	
	/**
	* Sets the password property for this <code>JdbcRowSet</code> object
	* to the given <code>String</code> object. Because it
	* is not serialized, the password property is set at run time before
	* calling the method <code>execute</code>. Its default valus is
	* <code>null</code>. In addition,
	* if the <code>password</code> property is already set with a
	* non-null value and that value is different from the one being set,
	* this method sets this <code>JdbcRowSet</code> object's private fields
	* <code>ps</code>, <code>rs</code>, and <code>conn</code> to <code>null</code>.
	* (The field <code>ps</code> is its <code>PreparedStatement</code> object,
	* <code>rs</code> is its <code>ResultSet</code> object, and
	* <code>conn</code> is its <code>Connection</code> object.)
	* Setting these fields to <code>null</code> ensures that only current
	* values will be used.
	*
	* @param password the <code>String</code> object that represents the password
	*     that must be supplied to the database to create a connection
	*/
	@:overload override public function setPassword(password : String) : Void;
	
	/**
	* Sets the type for this <code>RowSet</code> object to the specified type.
	* The default type is <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>.
	*
	* @param type one of the following constants:
	*             <code>ResultSet.TYPE_FORWARD_ONLY</code>,
	*             <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>, or
	*             <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @throws SQLException if the parameter supplied is not one of the
	*         following constants:
	*          <code>ResultSet.TYPE_FORWARD_ONLY</code> or
	*          <code>ResultSet.TYPE_SCROLL_INSENSITIVE</code>
	*          <code>ResultSet.TYPE_SCROLL_SENSITIVE</code>
	* @see #getConcurrency
	* @see #getType
	*/
	@:overload override public function setType(type : Int) : Void;
	
	/**
	* Sets the concurrency for this <code>RowSet</code> object to
	* the specified concurrency. The default concurrency for any <code>RowSet</code>
	* object (connected or disconnected) is <code>ResultSet.CONCUR_UPDATABLE</code>,
	* but this method may be called at any time to change the concurrency.
	*
	* @param concur one of the following constants:
	*                    <code>ResultSet.CONCUR_READ_ONLY</code> or
	*                    <code>ResultSet.CONCUR_UPDATABLE</code>
	* @throws SQLException if the parameter supplied is not one of the
	*         following constants:
	*          <code>ResultSet.CONCUR_UPDATABLE</code> or
	*          <code>ResultSet.CONCUR_READ_ONLY</code>
	* @see #getConcurrency
	* @see #isReadOnly
	*/
	@:overload override public function setConcurrency(concur : Int) : Void;
	
	/**
	* Sets the transaction isolation property for this JDBC <code>RowSet</code> object to the given
	* constant. The DBMS will use this transaction isolation level for
	* transactions if it can.
	* <p>
	* For <code>RowSet</code> implementations such as
	* the <code>CachedRowSet</code> that operate in a disconnected environment,
	* the <code>SyncProvider</code> object being used
	* offers complementary locking and data integrity options. The
	* options described below are pertinent only to connected <code>RowSet</code>
	* objects (<code>JdbcRowSet</code> objects).
	*
	* @param transIso one of the following constants, listed in ascending order:
	*              <code>Connection.TRANSACTION_NONE</code>,
	*              <code>Connection.TRANSACTION_READ_UNCOMMITTED</code>,
	*              <code>Connection.TRANSACTION_READ_COMMITTED</code>,
	*              <code>Connection.TRANSACTION_REPEATABLE_READ</code>, or
	*              <code>Connection.TRANSACTION_SERIALIZABLE</code>
	* @throws SQLException if the given parameter is not one of the Connection
	*          constants
	* @see javax.sql.rowset.spi.SyncFactory
	* @see javax.sql.rowset.spi.SyncProvider
	* @see #getTransactionIsolation
	*/
	@:overload override public function setTransactionIsolation(transIso : Int) : Void;
	
	/**
	* Sets the maximum number of rows that this <code>RowSet</code> object may contain to
	* the given number. If this limit is exceeded, the excess rows are
	* silently dropped.
	*
	* @param mRows an <code>int</code> indicating the current maximum number
	*     of rows; zero means that there is no limit
	* @throws SQLException if an error occurs internally setting the
	*     maximum limit on the number of rows that a JDBC <code>RowSet</code> object
	*     can contain; or if <i>max</i> is less than <code>0</code>; or
	*     if <i>max</i> is less than the <code>fetchSize</code> of the
	*     <code>RowSet</code>
	*/
	@:overload override public function setMaxRows(mRows : Int) : Void;
	
	/**
	* Retrieves the value of the designated <code>SQL XML</code> parameter as a
	* <code>SQLXML</code> object in the Java programming language.
	* @param columnIndex the first column is 1, the second is 2, ...
	* @return a SQLXML object that maps an SQL XML value
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getSQLXML(columnIndex : Int) : java.sql.SQLXML;
	
	/**
	* Retrieves the value of the designated <code>SQL XML</code> parameter as a
	* <code>SQLXML</code> object in the Java programming language.
	* @param colName the name of the column from which to retrieve the value
	* @return a SQLXML object that maps an SQL XML value
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getSQLXML(colName : String) : java.sql.SQLXML;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>ResultSet</code> object as a java.sql.RowId object in the Java
	* programming language.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @return the column value if the value is a SQL <code>NULL</code> the
	*     value returned is <code>null</code>
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getRowId(columnIndex : Int) : java.sql.RowId;
	
	/**
	* Retrieves the value of the designated column in the current row of this
	* <code>ResultSet</code> object as a java.sql.RowId object in the Java
	* programming language.
	*
	* @param columnName the name of the column
	* @return the column value if the value is a SQL <code>NULL</code> the
	*     value returned is <code>null</code>
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getRowId(columnName : String) : java.sql.RowId;
	
	/**
	* Updates the designated column with a <code>RowId</code> value. The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow<code> or <code>insertRow</code> methods are called
	* to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param x the column value
	* @throws SQLException if a database access occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateRowId(columnIndex : Int, x : java.sql.RowId) : Void;
	
	/**
	* Updates the designated column with a <code>RowId</code> value. The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow<code> or <code>insertRow</code> methods are called
	* to update the database.
	*
	* @param columnName the name of the column
	* @param x the column value
	* @throws SQLException if a database access occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateRowId(columnName : String, x : java.sql.RowId) : Void;
	
	/**
	* Retrieves the holdability of this ResultSet object
	* @return  either ResultSet.HOLD_CURSORS_OVER_COMMIT or ResultSet.CLOSE_CURSORS_AT_COMMIT
	* @throws SQLException if a database error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getHoldability() : Int;
	
	/**
	* Retrieves whether this ResultSet object has been closed. A ResultSet is closed if the
	* method close has been called on it, or if it is automatically closed.
	* @return true if this ResultSet object is closed; false if it is still open
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function isClosed() : Bool;
	
	/**
	* This method is used for updating columns that support National Character sets.
	* It can be used for updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* @param columnIndex the first column is 1, the second 2, ...
	* @param nString the value for the column to be updated
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateNString(columnIndex : Int, nString : String) : Void;
	
	/**
	* This method is used for updating columns that support National Character sets.
	* It can be used for updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* @param columnName name of the Column
	* @param nString the value for the column to be updated
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateNString(columnName : String, nString : String) : Void;
	
	/*o
	* This method is used for updating SQL <code>NCLOB</code>  type that maps
	* to <code>java.sql.Types.NCLOB</code>
	* @param columnIndex the first column is 1, the second 2, ...
	* @param nClob the value for the column to be updated
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateNClob(columnIndex : Int, nClob : java.sql.NClob) : Void;
	
	/**
	* This method is used for updating SQL <code>NCLOB</code>  type that maps
	* to <code>java.sql.Types.NCLOB</code>
	* @param columnName name of the column
	* @param nClob the value for the column to be updated
	* @throws SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function updateNClob(columnName : String, nClob : java.sql.NClob) : Void;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>NClob</code> object
	* in the Java programming language.
	*
	* @param i the first column is 1, the second is 2, ...
	* @return a <code>NClob</code> object representing the SQL
	*         <code>NCLOB</code> value in the specified column
	* @exception SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getNClob(i : Int) : java.sql.NClob;
	
	/**
	* Retrieves the value of the designated column in the current row
	* of this <code>ResultSet</code> object as a <code>NClob</code> object
	* in the Java programming language.
	*
	* @param colName the name of the column from which to retrieve the value
	* @return a <code>NClob</code> object representing the SQL <code>NCLOB</code>
	* value in the specified column
	* @exception SQLException if a database access error occurs
	* @since 6.0
	*/
	@:require(java0) @:overload public function getNClob(colName : String) : java.sql.NClob;
	
	@:overload public function unwrap<T>(iface : Class<T>) : T;
	
	@:overload public function isWrapperFor(interfaces : Class<Dynamic>) : Bool;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.SQLXML</code> object. The driver converts this to an
	* SQL <code>XML</code> value when it sends it to the database.
	* @param parameterIndex index of the first parameter is 1, the second is 2, ...
	* @param xmlObject a <code>SQLXML</code> object that maps an SQL <code>XML</code> value
	* @throws SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setSQLXML(parameterIndex : Int, xmlObject : java.sql.SQLXML) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.SQLXML</code> object. The driver converts this to an
	* <code>SQL XML</code> value when it sends it to the database.
	* @param parameterName the name of the parameter
	* @param xmlObject a <code>SQLXML</code> object that maps an <code>SQL XML</code> value
	* @throws SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setSQLXML(parameterName : String, xmlObject : java.sql.SQLXML) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.RowId</code> object. The
	* driver converts this to a SQL <code>ROWID</code> value when it sends it
	* to the database
	*
	* @param parameterIndex the first parameter is 1, the second is 2, ...
	* @param x the parameter value
	* @throws SQLException if a database access error occurs
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setRowId(parameterIndex : Int, x : java.sql.RowId) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.RowId</code> object. The
	* driver converts this to a SQL <code>ROWID</code> when it sends it to the
	* database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @throws SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setRowId(parameterName : String, x : java.sql.RowId) : Void;
	
	/**
	* Sets the designated paramter to the given <code>String</code> object.
	* The driver converts this to a SQL <code>NCHAR</code> or
	* <code>NVARCHAR</code> or <code>LONGNVARCHAR</code> value
	* (depending on the argument's
	* size relative to the driver's limits on <code>NVARCHAR</code> values)
	* when it sends it to the database.
	*
	* @param parameterIndex of the first parameter is 1, the second is 2, ...
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur ; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNString(parameterIndex : Int, value : String) : Void;
	
	/**
	* Sets the designated parameter in this <code>RowSet</code> object's command
	* to a <code>Reader</code> object. The
	* <code>Reader</code> reads the data till end-of-file is reached. The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.

	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setNCharacterStream</code> which takes a length parameter.
	*
	* @param parameterIndex of the first parameter is 1, the second is 2, ...
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur ; if a database access error occurs; or
	* this method is called on a closed <code>PreparedStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNCharacterStream(parameterIndex : Int, value : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to a <code>java.sql.NClob</code> object. The object
	* implements the <code>java.sql.NClob</code> interface. This <code>NClob</code>
	* object maps to a SQL <code>NCLOB</code>.
	* @param parameterName the name of the column to be set
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterName : String, value : java.sql.NClob) : Void;
	
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
	* @exception SQLException if a database access error occurs
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
	* @param columnName the name of the column
	* @return a <code>java.io.Reader</code> object that contains the column
	* value; if the value is SQL <code>NULL</code>, the value returned is
	* <code>null</code> in the Java programming language
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNCharacterStream(columnName : String) : java.io.Reader;
	
	/**
	* Updates the designated column with a <code>java.sql.SQLXML</code> value.
	* The updater
	* methods are used to update column values in the current row or the insert
	* row. The updater methods do not update the underlying database; instead
	* the <code>updateRow</code> or <code>insertRow</code> methods are called
	* to update the database.
	* @param columnIndex the first column is 1, the second 2, ...
	* @param xmlObject the value for the column to be updated
	* @throws SQLException if a database access error occurs
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
	*
	* @param columnName the name of the column
	* @param xmlObject the column value
	* @throws SQLException if a database access occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateSQLXML(columnName : String, xmlObject : java.sql.SQLXML) : Void;
	
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
	* @exception SQLException if a database access error occurs
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
	* @param columnName the SQL name of the column
	* @return the column value; if the value is SQL <code>NULL</code>, the
	* value returned is <code>null</code>
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function getNString(columnName : String) : String;
	
	/**
	* Updates the designated column with a character stream value, which will
	* have the specified number of bytes. The driver does the necessary conversion
	* from Java character format to the national character set in the database.
	* It is intended for use when updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* The updater methods are used to update column values in the current row or
	* the insert row. The updater methods do not update the underlying database;
	* instead the updateRow or insertRow methods are called to update the database.
	*
	* @param columnIndex - the first column is 1, the second is 2, ...
	* @param x - the new column value
	* @param length - the length of the stream
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnIndex : Int, x : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value, which will
	* have the specified number of bytes. The driver does the necessary conversion
	* from Java character format to the national character set in the database.
	* It is intended for use when updating NCHAR,NVARCHAR and LONGNVARCHAR columns.
	* The updater methods are used to update column values in the current row or
	* the insert row. The updater methods do not update the underlying database;
	* instead the updateRow or insertRow methods are called to update the database.
	*
	* @param columnName - name of the Column
	* @param x - the new column value
	* @param length - the length of the stream
	* @exception SQLException if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnName : String, x : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value.   The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnIndex : Int, x : java.io.Reader) : Void;
	
	/**
	* Updates the designated column with a character stream value.  The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* It is intended for use when
	* updating  <code>NCHAR</code>,<code>NVARCHAR</code>
	* and <code>LONGNVARCHAR</code> columns.
	*
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNCharacterStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code> or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateNCharacterStream(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given input stream, which
	* will have the specified number of bytes.
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
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
	* @exception SQLException if a database access error occurs,
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
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnLabel : String, inputStream : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given input stream.
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*
	*  <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBlob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnIndex : Int, inputStream : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column using the given input stream.
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*   <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBlob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBlob(columnLabel : String, inputStream : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @exception SQLException if a database access error occurs,
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
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*   <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateClob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @exception SQLException if a database access error occurs,
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
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*  <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateClob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateClob(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Updates the designated column using the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the driver does not support national
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
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the driver does not support national
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
	* Updates the designated column using the given <code>Reader</code>
	* object.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNClob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if the driver does not support national
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
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateNClob</code> which takes a length parameter.
	* <p>
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if the driver does not support national
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
	* @exception SQLException if a database access error occurs,
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
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if a database access error occurs,
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
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnIndex the first column is 1, the second is 2, ...
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with an ascii stream value, which will have
	* the specified number of bytes..
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the label is the name of the column
	* @param x the new column value
	* @param length the length of the stream
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnLabel : String, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnIndex : Int, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with an ascii stream value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateAsciiStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param x the new column value
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateAsciiStream(columnLabel : String, x : java.io.InputStream) : Void;
	
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnLabel : String, x : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnIndex : Int, x : java.io.InputStream) : Void;
	
	/**
	* Updates the designated column with a binary stream value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateBinaryStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param x the new column value
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateBinaryStream(columnLabel : String, x : java.io.InputStream) : Void;
	
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnLabel : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Updates the designated column with a character stream value.
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
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnIndex : Int, x : java.io.Reader) : Void;
	
	/**
	* Updates the designated column with a character stream value.
	* The updater methods are used to update column values in the
	* current row or the insert row.  The updater methods do not
	* update the underlying database; instead the <code>updateRow</code> or
	* <code>insertRow</code> methods are called to update the database.
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>updateCharacterStream</code> which takes a length parameter.
	*
	* @param columnLabel the label for the column specified with the SQL AS clause.  If the SQL AS clause was not specified, then the la
bel is the name of the column
	* @param reader the <code>java.io.Reader</code> object containing
	*        the new column value
	* @exception SQLException if a database access error occurs,
	* the result set concurrency is <code>CONCUR_READ_ONLY</code>
	* or this method is called on a closed result set
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload public function updateCharacterStream(columnLabel : String, reader : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.net.URL</code> value.
	* The driver converts this to an SQL <code>DATALINK</code> value
	* when it sends it to the database.
	*
	* @param parameterIndex the first parameter is 1, the second is 2, ...
	* @param x the <code>java.net.URL</code> object to be set
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>PreparedStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setURL(parameterIndex : Int, x : java.net.URL) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.
	* This method differs from the <code>setCharacterStream (int, Reader)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>NCLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGNVARCHAR</code> or a <code>NCLOB</code>
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setNClob</code> which takes a length parameter.
	*
	* @param parameterIndex index of the first parameter is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if parameterIndex does not correspond to a parameter
	* marker in the SQL statement;
	* if the driver does not support national character sets;
	* if the driver can detect that a data conversion
	*  error could occur;  if a database access error occurs or
	* this method is called on a closed <code>PreparedStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterIndex : Int, reader : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.  The <code>reader</code> must contain the number
	* of characters specified by length otherwise a <code>SQLException</code> will be
	* generated when the <code>CallableStatement</code> is executed.
	* This method differs from the <code>setCharacterStream (int, Reader, int)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>NCLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be send to the server as a <code>LONGNVARCHAR</code> or a <code>NCLOB</code>
	*
	* @param parameterName the name of the parameter to be set
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if parameterIndex does not correspond to a parameter
	* marker in the SQL statement; if the length specified is less than zero;
	* if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterName : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.
	* This method differs from the <code>setCharacterStream (int, Reader)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>NCLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be send to the server as a <code>LONGNVARCHAR</code> or a <code>NCLOB</code>
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setNClob</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if the driver does not support national character sets;
	* if the driver can detect that a data conversion
	*  error could occur;  if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterName : String, reader : java.io.Reader) : Void;
	
	/**
	** of characters specified by length otherwise a <code>SQLException</code> will becontain  the number
	* generated when the <code>PreparedStatement</code> is executed.
	* This method differs from the <code>setCharacterStream (int, Reader, int)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>NCLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGNVARCHAR</code> or a <code>NCLOB</code>
	* @param parameterIndex index of the first parameter is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if parameterIndex does not correspond to a parameter
	* marker in the SQL statement; if the length specified is less than zero;
	* if the driver does not support national character sets;
	* if the driver can detect that a data conversion
	*  error could occur;  if a database access error occurs or
	* this method is called on a closed <code>PreparedStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterIndex : Int, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>java.sql.NClob</code> object. The driver converts this to
a
	* SQL <code>NCLOB</code> value when it sends it to the database.
	* @param parameterIndex of the first parameter is 1, the second is 2, ...
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur ; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNClob(parameterIndex : Int, value : java.sql.NClob) : Void;
	
	/**
	* Sets the designated paramter to the given <code>String</code> object.
	* The driver converts this to a SQL <code>NCHAR</code> or
	* <code>NVARCHAR</code> or <code>LONGNVARCHAR</code>
	* @param parameterName the name of the column to be set
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNString(parameterName : String, value : String) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object. The
	* <code>Reader</code> reads the data till end-of-file is reached. The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* @param parameterIndex of the first parameter is 1, the second is 2, ...
	* @param value the parameter value
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur ; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNCharacterStream(parameterIndex : Int, value : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object. The
	* <code>Reader</code> reads the data till end-of-file is reached. The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.
	* @param parameterName the name of the column to be set
	* @param value the parameter value
	* @param length the number of characters in the parameter data.
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur; or if a database access error occurs
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNCharacterStream(parameterName : String, value : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object. The
	* <code>Reader</code> reads the data till end-of-file is reached. The
	* driver does the necessary conversion from Java character format to
	* the national character set in the database.

	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setNCharacterStream</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param value the parameter value
	* @throws SQLException if the driver does not support national
	*         character sets;  if the driver can detect that a data conversion
	*  error could occur ; if a database access error occurs; or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setNCharacterStream(parameterName : String, value : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Timestamp</code> value,
	* using the given <code>Calendar</code> object.  The driver uses
	* the <code>Calendar</code> object to construct an SQL <code>TIMESTAMP</code> value,
	* which the driver then sends to the database.  With a
	* a <code>Calendar</code> object, the driver can calculate the timestamp
	* taking into account a custom timezone.  If no
	* <code>Calendar</code> object is specified, the driver uses the default
	* timezone, which is that of the virtual machine running the application.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @param cal the <code>Calendar</code> object the driver will use
	*            to construct the timestamp
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getTimestamp
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setTimestamp(parameterName : String, x : java.sql.Timestamp, cal : java.util.Calendar) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.  The <code>reader</code> must contain  the number
	* of characters specified by length otherwise a <code>SQLException</code> will be
	* generated when the <code>CallableStatement</code> is executed.
	* This method differs from the <code>setCharacterStream (int, Reader, int)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>CLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be send to the server as a <code>LONGVARCHAR</code> or a <code>CLOB</code>
	* @param parameterName the name of the parameter to be set
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if parameterIndex does not correspond to a parameter
	* marker in the SQL statement; if the length specified is less than zero;
	* a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setClob(parameterName : String, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Clob</code> object.
	* The driver converts this to an SQL <code>CLOB</code> value when it
	* sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x a <code>Clob</code> object that maps an SQL <code>CLOB</code> value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setClob(parameterName : String, x : java.sql.Clob) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.
	* This method differs from the <code>setCharacterStream (int, Reader)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>CLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be send to the server as a <code>LONGVARCHAR</code> or a <code>CLOB</code>
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setClob</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if a database access error occurs or this method is called on
	* a closed <code>CallableStatement</code>
	*
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setClob(parameterName : String, reader : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Date</code> value
	* using the default time zone of the virtual machine that is running
	* the application.
	* The driver converts this
	* to an SQL <code>DATE</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getDate
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setDate(parameterName : String, x : java.sql.Date) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Date</code> value,
	* using the given <code>Calendar</code> object.  The driver uses
	* the <code>Calendar</code> object to construct an SQL <code>DATE</code> value,
	* which the driver then sends to the database.  With a
	* a <code>Calendar</code> object, the driver can calculate the date
	* taking into account a custom timezone.  If no
	* <code>Calendar</code> object is specified, the driver uses the default
	* timezone, which is that of the virtual machine running the application.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @param cal the <code>Calendar</code> object the driver will use
	*            to construct the date
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getDate
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setDate(parameterName : String, x : java.sql.Date, cal : java.util.Calendar) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Time</code> value.
	* The driver converts this
	* to an SQL <code>TIME</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getTime
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setTime(parameterName : String, x : java.sql.Time) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Time</code> value,
	* using the given <code>Calendar</code> object.  The driver uses
	* the <code>Calendar</code> object to construct an SQL <code>TIME</code> value,
	* which the driver then sends to the database.  With a
	* a <code>Calendar</code> object, the driver can calculate the time
	* taking into account a custom timezone.  If no
	* <code>Calendar</code> object is specified, the driver uses the default
	* timezone, which is that of the virtual machine running the application.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @param cal the <code>Calendar</code> object the driver will use
	*            to construct the time
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getTime
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setTime(parameterName : String, x : java.sql.Time, cal : java.util.Calendar) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.
	* This method differs from the <code>setCharacterStream (int, Reader)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>CLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGVARCHAR</code> or a <code>CLOB</code>
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setClob</code> which takes a length parameter.
	*
	* @param parameterIndex index of the first parameter is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @throws SQLException if a database access error occurs, this method is called on
	* a closed <code>PreparedStatement</code>or if parameterIndex does not correspond to a parameter
	* marker in the SQL statement
	*
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setClob(parameterIndex : Int, reader : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to a <code>Reader</code> object.  The reader must contain  the number
	* of characters specified by length otherwise a <code>SQLException</code> will be
	* generated when the <code>PreparedStatement</code> is executed.
	*This method differs from the <code>setCharacterStream (int, Reader, int)</code> method
	* because it informs the driver that the parameter value should be sent to
	* the server as a <code>CLOB</code>.  When the <code>setCharacterStream</code> method is used, the
	* driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGVARCHAR</code> or a <code>CLOB</code>
	* @param parameterIndex index of the first parameter is 1, the second is 2, ...
	* @param reader An object that contains the data to set the parameter value to.
	* @param length the number of characters in the parameter data.
	* @throws SQLException if a database access error occurs, this method is called on
	* a closed <code>PreparedStatement</code>, if parameterIndex does not correspond to a parameter
	* marker in the SQL statement, or if the length specified is less than zero.
	*
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setClob(parameterIndex : Int, reader : java.io.Reader, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>InputStream</code> object.  The inputstream must contain  the number
	* of characters specified by length otherwise a <code>SQLException</code> will be
	* generated when the <code>PreparedStatement</code> is executed.
	* This method differs from the <code>setBinaryStream (int, InputStream, int)</code>
	* method because it informs the driver that the parameter value should be
	* sent to the server as a <code>BLOB</code>.  When the <code>setBinaryStream</code> method is used,
	* the driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGVARBINARY</code> or a <code>BLOB</code>
	* @param parameterIndex index of the first parameter is 1,
	* the second is 2, ...
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @param length the number of bytes in the parameter data.
	* @throws SQLException if a database access error occurs,
	* this method is called on a closed <code>PreparedStatement</code>,
	* if parameterIndex does not correspond
	* to a parameter marker in the SQL statement,  if the length specified
	* is less than zero or if the number of bytes in the inputstream does not match
	* the specfied length.
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBlob(parameterIndex : Int, inputStream : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to a <code>InputStream</code> object.
	* This method differs from the <code>setBinaryStream (int, InputStream)</code>
	* This method differs from the <code>setBinaryStream (int, InputStream)</code>
	* method because it informs the driver that the parameter value should be
	* sent to the server as a <code>BLOB</code>.  When the <code>setBinaryStream</code> method is used,
	* the driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGVARBINARY</code> or a <code>BLOB</code>
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setBlob</code> which takes a length parameter.
	*
	* @param parameterIndex index of the first parameter is 1,
	* the second is 2, ...


	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @throws SQLException if a database access error occurs,
	* this method is called on a closed <code>PreparedStatement</code> or
	* if parameterIndex does not correspond
	* to a parameter marker in the SQL statement,
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBlob(parameterIndex : Int, inputStream : java.io.InputStream) : Void;
	
	/**
	* Sets the designated parameter to a <code>InputStream</code> object.  The <code>inputstream</code> must contain  the number
	* of characters specified by length, otherwise a <code>SQLException</code> will be
	* generated when the <code>CallableStatement</code> is executed.
	* This method differs from the <code>setBinaryStream (int, InputStream, int)</code>
	* method because it informs the driver that the parameter value should be
	* sent to the server as a <code>BLOB</code>.  When the <code>setBinaryStream</code> method is used,
	* the driver may have to do extra work to determine whether the parameter
	* data should be sent to the server as a <code>LONGVARBINARY</code> or a <code>BLOB</code>
	*
	* @param parameterName the name of the parameter to be set
	* the second is 2, ...
	*
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @param length the number of bytes in the parameter data.
	* @throws SQLException  if parameterIndex does not correspond
	* to a parameter marker in the SQL statement,  or if the length specified
	* is less than zero; if the number of bytes in the inputstream does not match
	* the specfied length; if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBlob(parameterName : String, inputStream : java.io.InputStream, length : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Blob</code> object.
	* The driver converts this to an SQL <code>BLOB</code> value when it
	* sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x a <code>Blob</code> object that maps an SQL <code>BLOB</code> value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBlob(parameterName : String, x : java.sql.Blob) : Void;
	
	/**
	* Sets the designated parameter to a <code>InputStream</code> object.
	* This method differs from the <code>setBinaryStream (int, InputStream)</code>
	* method because it informs the driver that the parameter value should be
	* sent to the server as a <code>BLOB</code>.  When the <code>setBinaryStream</code> method is used,
	* the driver may have to do extra work to determine whether the parameter
	* data should be send to the server as a <code>LONGVARBINARY</code> or a <code>BLOB</code>
	*
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setBlob</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param inputStream An object that contains the data to set the parameter
	* value to.
	* @throws SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	*
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBlob(parameterName : String, inputStream : java.io.InputStream) : Void;
	
	/**
	* Sets the value of the designated parameter with the given object. The second
	* argument must be an object type; for integral values, the
	* <code>java.lang</code> equivalent objects should be used.
	*
	* <p>The given Java object will be converted to the given targetSqlType
	* before being sent to the database.
	*
	* If the object has a custom mapping (is of a class implementing the
	* interface <code>SQLData</code>),
	* the JDBC driver should call the method <code>SQLData.writeSQL</code> to write it
	* to the SQL data stream.
	* If, on the other hand, the object is of a class implementing
	* <code>Ref</code>, <code>Blob</code>, <code>Clob</code>,  <code>NClob</code>,
	*  <code>Struct</code>, <code>java.net.URL</code>,
	* or <code>Array</code>, the driver should pass it to the database as a
	* value of the corresponding SQL type.
	* <P>
	* Note that this method may be used to pass datatabase-
	* specific abstract data types.
	*
	* @param parameterName the name of the parameter
	* @param x the object containing the input parameter value
	* @param targetSqlType the SQL type (as defined in java.sql.Types) to be
	* sent to the database. The scale argument may further qualify this type.
	* @param scale for java.sql.Types.DECIMAL or java.sql.Types.NUMERIC types,
	*          this is the number of digits after the decimal point.  For all other
	*          types, this value will be ignored.
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if <code>targetSqlType</code> is
	* a <code>ARRAY</code>, <code>BLOB</code>, <code>CLOB</code>,
	* <code>DATALINK</code>, <code>JAVA_OBJECT</code>, <code>NCHAR</code>,
	* <code>NCLOB</code>, <code>NVARCHAR</code>, <code>LONGNVARCHAR</code>,
	*  <code>REF</code>, <code>ROWID</code>, <code>SQLXML</code>
	* or  <code>STRUCT</code> data type and the JDBC driver does not support
	* this data type
	* @see Types
	* @see #getObject
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setObject(parameterName : String, x : Dynamic, targetSqlType : Int, scale : Int) : Void;
	
	/**
	* Sets the value of the designated parameter with the given object.
	* This method is like the method <code>setObject</code>
	* above, except that it assumes a scale of zero.
	*
	* @param parameterName the name of the parameter
	* @param x the object containing the input parameter value
	* @param targetSqlType the SQL type (as defined in java.sql.Types) to be
	*                      sent to the database
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if <code>targetSqlType</code> is
	* a <code>ARRAY</code>, <code>BLOB</code>, <code>CLOB</code>,
	* <code>DATALINK</code>, <code>JAVA_OBJECT</code>, <code>NCHAR</code>,
	* <code>NCLOB</code>, <code>NVARCHAR</code>, <code>LONGNVARCHAR</code>,
	*  <code>REF</code>, <code>ROWID</code>, <code>SQLXML</code>
	* or  <code>STRUCT</code> data type and the JDBC driver does not support
	* this data type
	* @see #getObject
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setObject(parameterName : String, x : Dynamic, targetSqlType : Int) : Void;
	
	/**
	* Sets the value of the designated parameter with the given object.
	* The second parameter must be of type <code>Object</code>; therefore, the
	* <code>java.lang</code> equivalent objects should be used for built-in types.
	*
	* <p>The JDBC specification specifies a standard mapping from
	* Java <code>Object</code> types to SQL types.  The given argument
	* will be converted to the corresponding SQL type before being
	* sent to the database.
	*
	* <p>Note that this method may be used to pass datatabase-
	* specific abstract data types, by using a driver-specific Java
	* type.
	*
	* If the object is of a class implementing the interface <code>SQLData</code>,
	* the JDBC driver should call the method <code>SQLData.writeSQL</code>
	* to write it to the SQL data stream.
	* If, on the other hand, the object is of a class implementing
	* <code>Ref</code>, <code>Blob</code>, <code>Clob</code>,  <code>NClob</code>,
	*  <code>Struct</code>, <code>java.net.URL</code>,
	* or <code>Array</code>, the driver should pass it to the database as a
	* value of the corresponding SQL type.
	* <P>
	* This method throws an exception if there is an ambiguity, for example, if the
	* object is of a class implementing more than one of the interfaces named above.
	*
	* @param parameterName the name of the parameter
	* @param x the object containing the input parameter value
	* @exception SQLException if a database access error occurs,
	* this method is called on a closed <code>CallableStatement</code> or if the given
	*            <code>Object</code> parameter is ambiguous
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getObject
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setObject(parameterName : String, x : Dynamic) : Void;
	
	/**
	* Sets the designated parameter to the given input stream, which will have
	* the specified number of bytes.
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*
	* @param parameterName the name of the parameter
	* @param x the Java input stream that contains the ASCII parameter value
	* @param length the number of bytes in the stream
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setAsciiStream(parameterName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated parameter to the given input stream, which will have
	* the specified number of bytes.
	* When a very large binary value is input to a <code>LONGVARBINARY</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*
	* @param parameterName the name of the parameter
	* @param x the java input stream which contains the binary parameter value
	* @param length the number of bytes in the stream
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setBinaryStream(parameterName : String, x : java.io.InputStream, length : Int) : Void;
	
	/**
	* Sets the designated parameter to the given <code>Reader</code>
	* object, which is the given number of characters long.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	*
	* @param parameterName the name of the parameter
	* @param reader the <code>java.io.Reader</code> object that
	*        contains the UNICODE data used as the designated parameter
	* @param length the number of characters in the stream
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setCharacterStream(parameterName : String, reader : java.io.Reader, length : Int) : Void;
	
	/**
	* Sets the designated parameter to the given input stream.
	* When a very large ASCII value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code>. Data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from ASCII to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setAsciiStream</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param x the Java input stream that contains the ASCII parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setAsciiStream(parameterName : String, x : java.io.InputStream) : Void;
	
	/**
	* Sets the designated parameter to the given input stream.
	* When a very large binary value is input to a <code>LONGVARBINARY</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.InputStream</code> object. The data will be read from the
	* stream as needed until end-of-file is reached.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setBinaryStream</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param x the java input stream which contains the binary parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setBinaryStream(parameterName : String, x : java.io.InputStream) : Void;
	
	/**
	* Sets the designated parameter to the given <code>Reader</code>
	* object.
	* When a very large UNICODE value is input to a <code>LONGVARCHAR</code>
	* parameter, it may be more practical to send it via a
	* <code>java.io.Reader</code> object. The data will be read from the stream
	* as needed until end-of-file is reached.  The JDBC driver will
	* do any necessary conversion from UNICODE to the database char format.
	*
	* <P><B>Note:</B> This stream object can either be a standard
	* Java stream object or your own subclass that implements the
	* standard interface.
	* <P><B>Note:</B> Consult your JDBC driver documentation to determine if
	* it might be more efficient to use a version of
	* <code>setCharacterStream</code> which takes a length parameter.
	*
	* @param parameterName the name of the parameter
	* @param reader the <code>java.io.Reader</code> object that contains the
	*        Unicode data
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @throws SQLFeatureNotSupportedException  if the JDBC driver does not support this method
	* @since 1.6
	*/
	@:require(java6) @:overload override public function setCharacterStream(parameterName : String, reader : java.io.Reader) : Void;
	
	/**
	* Sets the designated parameter to the given
	* <code>java.math.BigDecimal</code> value.
	* The driver converts this to an SQL <code>NUMERIC</code> value when
	* it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getBigDecimal
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setBigDecimal(parameterName : String, x : java.math.BigDecimal) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>String</code> value.
	* The driver converts this
	* to an SQL <code>VARCHAR</code> or <code>LONGVARCHAR</code> value
	* (depending on the argument's
	* size relative to the driver's limits on <code>VARCHAR</code> values)
	* when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getString
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setString(parameterName : String, x : String) : Void;
	
	/**
	* Sets the designated parameter to the given Java array of bytes.
	* The driver converts this to an SQL <code>VARBINARY</code> or
	* <code>LONGVARBINARY</code> (depending on the argument's size relative
	* to the driver's limits on <code>VARBINARY</code> values) when it sends
	* it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getBytes
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setBytes(parameterName : String, x : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Sets the designated parameter to the given <code>java.sql.Timestamp</code> value.
	* The driver
	* converts this to an SQL <code>TIMESTAMP</code> value when it sends it to the
	* database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getTimestamp
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setTimestamp(parameterName : String, x : java.sql.Timestamp) : Void;
	
	/**
	* Sets the designated parameter to SQL <code>NULL</code>.
	*
	* <P><B>Note:</B> You must specify the parameter's SQL type.
	*
	* @param parameterName the name of the parameter
	* @param sqlType the SQL type code defined in <code>java.sql.Types</code>
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setNull(parameterName : String, sqlType : Int) : Void;
	
	/**
	* Sets the designated parameter to SQL <code>NULL</code>.
	* This version of the method <code>setNull</code> should
	* be used for user-defined types and REF type parameters.  Examples
	* of user-defined types include: STRUCT, DISTINCT, JAVA_OBJECT, and
	* named array types.
	*
	* <P><B>Note:</B> To be portable, applications must give the
	* SQL type code and the fully-qualified SQL type name when specifying
	* a NULL user-defined or REF parameter.  In the case of a user-defined type
	* the name is the type name of the parameter itself.  For a REF
	* parameter, the name is the type name of the referenced type.  If
	* a JDBC driver does not need the type code or type name information,
	* it may ignore it.
	*
	* Although it is intended for user-defined and Ref parameters,
	* this method may be used to set a null parameter of any JDBC type.
	* If the parameter does not have a user-defined or REF type, the given
	* typeName is ignored.
	*
	*
	* @param parameterName the name of the parameter
	* @param sqlType a value from <code>java.sql.Types</code>
	* @param typeName the fully-qualified name of an SQL user-defined type;
	*        ignored if the parameter is not a user-defined type or
	*        SQL <code>REF</code> value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setNull(parameterName : String, sqlType : Int, typeName : String) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>boolean</code> value.
	* The driver converts this
	* to an SQL <code>BIT</code> or <code>BOOLEAN</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @see #getBoolean
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setBoolean(parameterName : String, x : Bool) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>byte</code> value.
	* The driver converts this
	* to an SQL <code>TINYINT</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getByte
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setByte(parameterName : String, x : java.StdTypes.Int8) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>short</code> value.
	* The driver converts this
	* to an SQL <code>SMALLINT</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getShort
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setShort(parameterName : String, x : java.StdTypes.Int16) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>int</code> value.
	* The driver converts this
	* to an SQL <code>INTEGER</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getInt
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setInt(parameterName : String, x : Int) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>long</code> value.
	* The driver converts this
	* to an SQL <code>BIGINT</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getLong
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setLong(parameterName : String, x : haxe.Int64) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>float</code> value.
	* The driver converts this
	* to an SQL <code>FLOAT</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getFloat
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setFloat(parameterName : String, x : Single) : Void;
	
	/**
	* Sets the designated parameter to the given Java <code>double</code> value.
	* The driver converts this
	* to an SQL <code>DOUBLE</code> value when it sends it to the database.
	*
	* @param parameterName the name of the parameter
	* @param x the parameter value
	* @exception SQLException if a database access error occurs or
	* this method is called on a closed <code>CallableStatement</code>
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @see #getDouble
	* @since 1.4
	*/
	@:require(java4) @:overload override public function setDouble(parameterName : String, x : Float) : Void;
	
	@:overload public function getObject<T>(columnIndex : Int, type : Class<T>) : T;
	
	@:overload public function getObject<T>(columnLabel : String, type : Class<T>) : T;
	
	
}
