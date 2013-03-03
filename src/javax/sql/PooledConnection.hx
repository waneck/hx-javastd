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
extern interface PooledConnection
{
	/**
	* Creates and returns a <code>Connection</code> object that is a handle
	* for the physical connection that
	* this <code>PooledConnection</code> object represents.
	* The connection pool manager calls this method when an application has
	* called the method <code>DataSource.getConnection</code> and there are
	* no <code>PooledConnection</code> objects available. See the
	* {@link PooledConnection interface description} for more information.
	*
	* @return  a <code>Connection</code> object that is a handle to
	*          this <code>PooledConnection</code> object
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function getConnection() : java.sql.Connection;
	
	/**
	* Closes the physical connection that this <code>PooledConnection</code>
	* object represents.  An application never calls this method directly;
	* it is called by the connection pool module, or manager.
	* <P>
	* See the {@link PooledConnection interface description} for more
	* information.
	*
	* @exception SQLException if a database access error occurs
	* @exception SQLFeatureNotSupportedException if the JDBC driver does not support
	* this method
	* @since 1.4
	*/
	@:require(java4) @:overload public function close() : Void;
	
	/**
	* Registers the given event listener so that it will be notified
	* when an event occurs on this <code>PooledConnection</code> object.
	*
	* @param listener a component, usually the connection pool manager,
	*        that has implemented the
	*        <code>ConnectionEventListener</code> interface and wants to be
	*        notified when the connection is closed or has an error
	* @see #removeConnectionEventListener
	*/
	@:overload public function addConnectionEventListener(listener : javax.sql.ConnectionEventListener) : Void;
	
	/**
	* Removes the given event listener from the list of components that
	* will be notified when an event occurs on this
	* <code>PooledConnection</code> object.
	*
	* @param listener a component, usually the connection pool manager,
	*        that has implemented the
	*        <code>ConnectionEventListener</code> interface and
	*        been registered with this <code>PooledConnection</code> object as
	*        a listener
	* @see #addConnectionEventListener
	*/
	@:overload public function removeConnectionEventListener(listener : javax.sql.ConnectionEventListener) : Void;
	
	/**
	* Registers a <code>StatementEventListener</code> with this <code>PooledConnection</code> object.  Components that
	* wish to be notified when  <code>PreparedStatement</code>s created by the
	* connection are closed or are detected to be invalid may use this method
	* to register a <code>StatementEventListener</code> with this <code>PooledConnection</code> object.
	* <p>
	* @param listener      an component which implements the <code>StatementEventListener</code>
	*                                      interface that is to be registered with this <code>PooledConnection</code> object
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function addStatementEventListener(listener : javax.sql.StatementEventListener) : Void;
	
	/**
	* Removes the specified <code>StatementEventListener</code> from the list of
	* components that will be notified when the driver detects that a
	* <code>PreparedStatement</code> has been closed or is invalid.
	* <p>
	* @param listener      the component which implements the
	*                                      <code>StatementEventListener</code> interface that was previously
	*                                      registered with this <code>PooledConnection</code> object
	* <p>
	* @since 1.6
	*/
	@:require(java6) @:overload @:public public function removeStatementEventListener(listener : javax.sql.StatementEventListener) : Void;
	
	
}
