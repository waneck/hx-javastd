package com.sun.jndi.ldap.pool;
/*
* Copyright (c) 2002, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class Pool
{
	@:overload @:public public function new(initSize : Int, prefSize : Int, maxSize : Int) : Void;
	
	/**
	* Gets a pooled connection for id. The pooled connection might be
	* newly created, as governed by the maxSize and prefSize settings.
	* If a pooled connection is unavailable and cannot be created due
	* to the maxSize constraint, this call blocks until the constraint
	* is removed or until 'timeout' ms has elapsed.
	*
	* @param id identity of the connection to get
	* @param timeout the number of milliseconds to wait before giving up
	* @param factory the factory to use for creating the connection if
	*          creation is necessary
	* @return a pooled connection
	* @throws NamingException the connection could not be created due to
	*                          an error.
	*/
	@:overload @:public public function getPooledConnection(id : Dynamic, timeout : haxe.Int64, factory : com.sun.jndi.ldap.pool.PooledConnectionFactory) : com.sun.jndi.ldap.pool.PooledConnection;
	
	/**
	* Goes through the connections in this Pool and expires ones that
	* have been idle before 'threshold'. An expired connection is closed
	* and then removed from the pool (removePooledConnection() will eventually
	* be called, and the list of pools itself removed if it becomes empty).
	*
	* @param threshold connections idle before 'threshold' should be closed
	*          and removed.
	*/
	@:overload @:public public function expire(threshold : haxe.Int64) : Void;
	
	@:overload @:public public function showStats(out : java.io.PrintStream) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
