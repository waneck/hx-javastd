package javax.sql;
/*
* Copyright (c) 2000, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface ConnectionPoolDataSource extends javax.sql.CommonDataSource
{
	/**
	* Attempts to establish a physical database connection that can
	* be used as a pooled connection.
	*
	* @return  a <code>PooledConnection</code> object that is a physical
	*         connection to the database that this
	*         <code>ConnectionPoolDataSource</code> object represents
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPooledConnection() : javax.sql.PooledConnection;
	
	/**
	* Attempts to establish a physical database connection that can
	* be used as a pooled connection.
	*
	* @param user the database user on whose behalf the connection is being made
	* @param password the user's password
	* @return  a <code>PooledConnection</code> object that is a physical
	*         connection to the database that this
	*         <code>ConnectionPoolDataSource</code> object represents
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function getPooledConnection(user : String, password : String) : javax.sql.PooledConnection;
	
	
}