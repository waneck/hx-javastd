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
* The facility called on internally by the <code>RIOptimisticProvider</code> implementation to
* propagate changes back to the data source from which the rowset got its data.
* <P>
* A <code>CachedRowSetWriter</code> object, called a writer, has the public
* method <code>writeData</code> for writing modified data to the underlying data source.
* This method is invoked by the rowset internally and is never invoked directly by an application.
* A writer also has public methods for setting and getting
* the <code>CachedRowSetReader</code> object, called a reader, that is associated
* with the writer. The remainder of the methods in this class are private and
* are invoked internally, either directly or indirectly, by the method
* <code>writeData</code>.
* <P>
* Typically the <code>SyncFactory</code> manages the <code>RowSetReader</code> and
* the <code>RowSetWriter</code> implementations using <code>SyncProvider</code> objects.
* Standard JDBC RowSet implementations provide an object instance of this
* writer by invoking the <code>SyncProvider.getRowSetWriter()</code> method.
*
* @version 0.2
* @author Jonathan Bruce
* @see javax.sql.rowset.spi.SyncProvider
* @see javax.sql.rowset.spi.SyncFactory
* @see javax.sql.rowset.spi.SyncFactoryException
*/
extern class CachedRowSetWriter implements javax.sql.rowset.spi.TransactionalWriter implements java.io.Serializable
{
	@:overload public function new() : Void;
	
	/**
	* Propagates changes in the given <code>RowSet</code> object
	* back to its underlying data source and returns <code>true</code>
	* if successful. The writer will check to see if
	* the data in the pre-modified rowset (the original values) differ
	* from the data in the underlying data source.  If data in the data
	* source has been modified by someone else, there is a conflict,
	* and in that case, the writer will not write to the data source.
	* In other words, the writer uses an optimistic concurrency algorithm:
	* It checks for conflicts before making changes rather than restricting
	* access for concurrent users.
	* <P>
	* This method is called by the rowset internally when
	* the application invokes the method <code>acceptChanges</code>.
	* The <code>writeData</code> method in turn calls private methods that
	* it defines internally.
	* The following is a general summary of what the method
	* <code>writeData</code> does, much of which is accomplished
	* through calls to its own internal methods.
	* <OL>
	* <LI>Creates a <code>CachedRowSet</code> object from the given
	*     <code>RowSet</code> object
	* <LI>Makes a connection with the data source
	*   <UL>
	*      <LI>Disables autocommit mode if it is not already disabled
	*      <LI>Sets the transaction isolation level to that of the rowset
	*   </UL>
	* <LI>Checks to see if the reader has read new data since the writer
	*     was last called and, if so, calls the method
	*    <code>initSQLStatements</code> to initialize new SQL statements
	*   <UL>
	*       <LI>Builds new <code>SELECT</code>, <code>UPDATE</code>,
	*           <code>INSERT</code>, and <code>DELETE</code> statements
	*       <LI>Uses the <code>CachedRowSet</code> object's metadata to
	*           determine the table name, column names, and the columns
	*           that make up the primary key
	*   </UL>
	* <LI>When there is no conflict, propagates changes made to the
	*     <code>CachedRowSet</code> object back to its underlying data source
	*   <UL>
	*      <LI>Iterates through each row of the <code>CachedRowSet</code> object
	*          to determine whether it has been updated, inserted, or deleted
	*      <LI>If the corresponding row in the data source has not been changed
	*          since the rowset last read its
	*          values, the writer will use the appropriate command to update,
	*          insert, or delete the row
	*      <LI>If any data in the data source does not match the original values
	*          for the <code>CachedRowSet</code> object, the writer will roll
	*          back any changes it has made to the row in the data source.
	*   </UL>
	* </OL>
	*
	* @return <code>true</code> if changes to the rowset were successfully
	*         written to the rowset's underlying data source;
	*         <code>false</code> otherwise
	*/
	@:overload public function writeData(caller : javax.sql.RowSetInternal) : Bool;
	
	/**
	* Sets the reader for this writer to the given reader.
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function setReader(reader : com.sun.rowset.internal.CachedRowSetReader) : Void;
	
	/**
	* Gets the reader for this writer.
	*
	* @throws SQLException if a database access error occurs
	*/
	@:overload public function getReader() : com.sun.rowset.internal.CachedRowSetReader;
	
	/**
	*
	*/
	@:overload public function commit() : Void;
	
	@:overload public function commit(crs : com.sun.rowset.CachedRowSetImpl, updateRowset : Bool) : Void;
	
	/**
	*
	*/
	@:overload public function rollback() : Void;
	
	/**
	*
	*/
	@:overload public function rollback(s : java.sql.Savepoint) : Void;
	
	
}
