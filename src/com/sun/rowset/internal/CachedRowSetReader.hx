package com.sun.rowset.internal;
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
* The facility called by the <code>RIOptimisticProvider</code> object
* internally to read data into it.  The calling <code>RowSet</code> object
* must have implemented the <code>RowSetInternal</code> interface
* and have the standard <code>CachedRowSetReader</code> object set as its
* reader.
* <P>
* This implementation always reads all rows of the data source,
* and it assumes that the <code>command</code> property for the caller
* is set with a query that is appropriate for execution by a
* <code>PreparedStatement</code> object.
* <P>
* Typically the <code>SyncFactory</code> manages the <code>RowSetReader</code> and
* the <code>RowSetWriter</code> implementations using <code>SyncProvider</code> objects.
* Standard JDBC RowSet implementations provide an object instance of this
* reader by invoking the <code>SyncProvider.getRowSetReader()</code> method.
*
* @author Jonathan Bruce
* @see javax.sql.rowset.spi.SyncProvider
* @see javax.sql.rowset.spi.SyncFactory
* @see javax.sql.rowset.spi.SyncFactoryException
*/
extern class CachedRowSetReader implements javax.sql.RowSetReader implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Reads data from a data source and populates the given
	* <code>RowSet</code> object with that data.
	* This method is called by the rowset internally when
	* the application invokes the method <code>execute</code>
	* to read a new set of rows.
	* <P>
	* After clearing the rowset of its contents, if any, and setting
	* the number of writer calls to <code>0</code>, this reader calls
	* its <code>connect</code> method to make
	* a connection to the rowset's data source. Depending on which
	* of the rowset's properties have been set, the <code>connect</code>
	* method will use a <code>DataSource</code> object or the
	* <code>DriverManager</code> facility to make a connection to the
	* data source.
	* <P>
	* Once the connection to the data source is made, this reader
	* executes the query in the calling <code>CachedRowSet</code> object's
	* <code>command</code> property. Then it calls the rowset's
	* <code>populate</code> method, which reads data from the
	* <code>ResultSet</code> object produced by executing the rowset's
	* command. The rowset is then populated with this data.
	* <P>
	* This method's final act is to close the connection it made, thus
	* leaving the rowset disconnected from its data source.
	*
	* @param caller a <code>RowSet</code> object that has implemented
	*               the <code>RowSetInternal</code> interface and had
	*               this <code>CachedRowSetReader</code> object set as
	*               its reader
	* @throws SQLException if there is a database access error, there is a
	*         problem making the connection, or the command property has not
	*         been set
	*/
	@:overload public function readData(caller : javax.sql.RowSetInternal) : Void;
	
	/**
	* Checks to see if the writer associated with this reader needs
	* to reset its state.  The writer will need to initialize its state
	* if new contents have been read since the writer was last called.
	* This method is called by the writer that was registered with
	* this reader when components were being wired together.
	*
	* @return <code>true</code> if writer associated with this reader needs
	*         to reset the values of its fields; <code>false</code> otherwise
	* @throws SQLException if an access error occurs
	*/
	@:overload public function reset() : Bool;
	
	/**
	* Establishes a connection with the data source for the given
	* <code>RowSet</code> object.  If the rowset's <code>dataSourceName</code>
	* property has been set, this method uses the JNDI API to retrieve the
	* <code>DataSource</code> object that it can use to make the connection.
	* If the url, username, and password properties have been set, this
	* method uses the <code>DriverManager.getConnection</code> method to
	* make the connection.
	* <P>
	* This method is used internally by the reader and writer associated with
	* the calling <code>RowSet</code> object; an application never calls it
	* directly.
	*
	* @param caller a <code>RowSet</code> object that has implemented
	*               the <code>RowSetInternal</code> interface and had
	*               this <code>CachedRowSetReader</code> object set as
	*               its reader
	* @return a <code>Connection</code> object that represents a connection
	*         to the caller's data source
	* @throws SQLException if an access error occurs
	*/
	@:overload public function connect(caller : javax.sql.RowSetInternal) : java.sql.Connection;
	
	/**
	* Assists in determining whether the current connection was created by this
	* CachedRowSet to ensure incorrect connections are not prematurely terminated.
	*
	* @return a boolean giving the status of whether the connection has been closed.
	*/
	@:overload private function getCloseConnection() : Bool;
	
	/**
	*  This sets the start position in the ResultSet from where to begin. This is
	* called by the Reader in the CachedRowSetImpl to set the position on the page
	* to begin populating from.
	* @param pos integer indicating the position in the <code>ResultSet</code> to begin
	*        populating from.
	*/
	@:overload public function setStartPosition(pos : Int) : Void;
	
	
}
