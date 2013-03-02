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
extern class SocketOrChannelAcceptorImpl extends com.sun.corba.se.impl.transport.EventHandlerBase implements com.sun.corba.se.spi.transport.CorbaAcceptor implements com.sun.corba.se.spi.transport.SocketOrChannelAcceptor implements com.sun.corba.se.spi.orbutil.threadpool.Work implements com.sun.corba.se.spi.transport.SocketInfo implements com.sun.corba.se.spi.legacy.connection.LegacyServerSocketEndPointInfo
{
	/**
	* @author Harold Carr
	*/
	private var serverSocketChannel : java.nio.channels.ServerSocketChannel;
	
	private var serverSocket : java.net.ServerSocket;
	
	private var port : Int;
	
	private var enqueueTime : haxe.Int64;
	
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	private var connectionCache : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	private var type : String;
	
	private var name : String;
	
	private var hostname : String;
	
	private var locatorPort : Int;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, port : Int) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, port : Int, name : String, type : String) : Void;
	
	@:overload public function initialize() : Bool;
	
	@:overload private function internalInitialize() : Void;
	
	@:overload public function initialized() : Bool;
	
	@:overload public function getConnectionCacheType() : String;
	
	@:overload public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.InboundConnectionCache) : Void;
	
	@:overload public function getConnectionCache() : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	@:overload public function shouldRegisterAcceptEvent() : Bool;
	
	@:overload public function accept() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getEventHandler() : com.sun.corba.se.pept.transport.EventHandler;
	
	@:overload public function getObjectAdapterId() : String;
	
	@:overload public function getObjectAdapterManagerId() : String;
	
	@:overload public function addToIORTemplate(iorTemplate : com.sun.corba.se.spi.ior.IORTemplate, policies : com.sun.corba.se.impl.oa.poa.Policies, codebase : String) : Void;
	
	@:overload public function getMonitoringName() : String;
	
	@:overload override public function getChannel() : java.nio.channels.SelectableChannel;
	
	@:overload override public function getInterestOps() : Int;
	
	@:overload override public function getAcceptor() : com.sun.corba.se.pept.transport.Acceptor;
	
	@:overload override public function getConnection() : com.sun.corba.se.pept.transport.Connection;
	
	/* CONFLICT: with legacy below.
	public String getName()
	{
	return this.toString();
	}
	*/
	@:overload public function doWork() : Void;
	
	@:overload public function setEnqueueTime(timeInMillis : haxe.Int64) : Void;
	
	@:overload public function getEnqueueTime() : haxe.Int64;
	
	@:overload public function createMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, connection : com.sun.corba.se.pept.transport.Connection) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function finishCreatingMessageMediator(broker : com.sun.corba.se.pept.broker.Broker, connection : com.sun.corba.se.pept.transport.Connection, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function createInputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload public function createOutputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload public function getServerSocket() : java.net.ServerSocket;
	
	@:overload public function toString() : String;
	
	@:overload private function toStringName() : String;
	
	@:overload private function dprint(msg : String) : Void;
	
	@:overload private function dprint(msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public function getType() : String;
	
	@:overload public function getHostName() : String;
	
	@:overload public function getHost() : String;
	
	@:overload public function getPort() : Int;
	
	@:overload public function getLocatorPort() : Int;
	
	@:overload public function setLocatorPort(port : Int) : Void;
	
	@:overload public function getName() : String;
	
	
}
