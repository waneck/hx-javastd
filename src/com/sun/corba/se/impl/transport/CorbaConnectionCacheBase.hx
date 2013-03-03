package com.sun.corba.se.impl.transport;
/*
* Copyright (c) 2001, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaConnectionCacheBase implements com.sun.corba.se.pept.transport.ConnectionCache implements com.sun.corba.se.spi.transport.CorbaConnectionCache
{
	/**
	* @author Harold Carr
	*/
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:protected private var timestamp : haxe.Int64;
	
	@:protected private var cacheType : String;
	
	@:protected private var monitoringName : String;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:overload @:protected private function new(orb : com.sun.corba.se.spi.orb.ORB, cacheType : String, monitoringName : String) : Void;
	
	@:overload @:public public function getCacheType() : String;
	
	@:overload @:public @:synchronized public function stampTime(c : com.sun.corba.se.pept.transport.Connection) : Void;
	
	@:overload @:public public function numberOfConnections() : haxe.Int64;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function numberOfIdleConnections() : haxe.Int64;
	
	@:overload @:public public function numberOfBusyConnections() : haxe.Int64;
	
	/**
	* Discarding least recently used Connections that are not busy
	*
	* This method must be synchronized since one WorkerThread could
	* be reclaming connections inside the synchronized backingStore
	* block and a second WorkerThread (or a SelectorThread) could have
	* already executed the if (numberOfConnections <= .... ). As a
	* result the second thread would also attempt to reclaim connections.
	*
	* If connection reclamation becomes a performance issue, the connection
	* reclamation could make its own task and consequently executed in
	* a separate thread.
	* Currently, the accept & reclaim are done in the same thread, WorkerThread
	* by default. It could be changed such that the SelectorThread would do
	* it for SocketChannels and WorkerThreads for Sockets by updating the
	* ParserTable.
	*/
	@:overload @:synchronized @:public public function reclaim() : Bool;
	
	@:overload @:public public function getMonitoringName() : String;
	
	@:overload @:public @:abstract public function values() : java.util.Collection<Dynamic>;
	
	@:overload @:protected @:abstract private function backingStore() : Dynamic;
	
	@:overload @:protected @:abstract private function registerWithMonitoring() : Void;
	
	@:overload @:protected private function dprintCreation() : Void;
	
	@:overload @:protected private function dprintStatistics() : Void;
	
	@:overload @:protected private function dprint(msg : String) : Void;
	
	
}
