package com.sun.jndi.ldap.pool;
/*
* Copyright (c) 2002, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Connections implements com.sun.jndi.ldap.pool.PoolCallback
{
	/**
	* Releases connection back into list.
	* If the list size is below prefSize, the connection may be reused.
	* If the list size exceeds prefSize, then the connection is closed
	* and removed from the list.
	*
	* public because implemented as part of PoolCallback.
	*/
	@:overload @:synchronized public function releasePooledConnection(conn : com.sun.jndi.ldap.pool.PooledConnection) : Bool;
	
	/**
	* Removes PooledConnection from list of connections.
	* The closing of the connection is separate from this method.
	* This method is called usually when the caller encouters an error
	* when using the connection and wants it removed from the pool.
	*
	* @return true if conn removed; false if it was not in pool
	*
	* public because implemented as part of PoolCallback.
	*/
	@:overload @:synchronized public function removePooledConnection(conn : com.sun.jndi.ldap.pool.PooledConnection) : Bool;
	
	
}
