package com.sun.corba.se.impl.orb;
/*
* Copyright (c) 2002, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class ParserTable
{
	@:overload public static function get() : com.sun.corba.se.impl.orb.ParserTable;
	
	@:overload public function getParserData() : java.NativeArray<com.sun.corba.se.spi.orb.ParserData>;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestBadServerIdHandler') extern class ParserTable_TestBadServerIdHandler implements com.sun.corba.se.impl.oa.poa.BadServerIdHandler
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function handle(objectKey : com.sun.corba.se.spi.ior.ObjectKey) : Void;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestLegacyORBSocketFactory') extern class ParserTable_TestLegacyORBSocketFactory implements com.sun.corba.se.spi.legacy.connection.ORBSocketFactory
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function createServerSocket(type : String, port : Int) : java.net.ServerSocket;
	
	@:overload public function getEndPointInfo(orb : org.omg.CORBA.ORB, ior : com.sun.corba.se.spi.ior.IOR, socketInfo : com.sun.corba.se.spi.transport.SocketInfo) : com.sun.corba.se.spi.transport.SocketInfo;
	
	@:overload public function createSocket(socketInfo : com.sun.corba.se.spi.transport.SocketInfo) : java.net.Socket;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestORBSocketFactory') extern class ParserTable_TestORBSocketFactory implements com.sun.corba.se.spi.transport.ORBSocketFactory
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function setORB(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function createServerSocket(type : String, a : java.net.InetSocketAddress) : java.net.ServerSocket;
	
	@:overload public function createSocket(type : String, a : java.net.InetSocketAddress) : java.net.Socket;
	
	@:overload public function setAcceptedSocketOptions(acceptor : com.sun.corba.se.pept.transport.Acceptor, serverSocket : java.net.ServerSocket, socket : java.net.Socket) : Void;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestIORToSocketInfo') extern class ParserTable_TestIORToSocketInfo implements com.sun.corba.se.spi.transport.IORToSocketInfo
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function getSocketInfo(ior : com.sun.corba.se.spi.ior.IOR) : java.util.List<Dynamic>;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestIIOPPrimaryToContactInfo') extern class ParserTable_TestIIOPPrimaryToContactInfo implements com.sun.corba.se.spi.transport.IIOPPrimaryToContactInfo
{
	@:overload public function reset(primary : com.sun.corba.se.pept.transport.ContactInfo) : Void;
	
	@:overload public function hasNext(primary : com.sun.corba.se.pept.transport.ContactInfo, previous : com.sun.corba.se.pept.transport.ContactInfo, contactInfos : java.util.List<Dynamic>) : Bool;
	
	@:overload public function next(primary : com.sun.corba.se.pept.transport.ContactInfo, previous : com.sun.corba.se.pept.transport.ContactInfo, contactInfos : java.util.List<Dynamic>) : com.sun.corba.se.pept.transport.ContactInfo;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestContactInfoListFactory') extern class ParserTable_TestContactInfoListFactory implements com.sun.corba.se.spi.transport.CorbaContactInfoListFactory
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function setORB(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload public function create(ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.spi.transport.CorbaContactInfoList;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestORBInitializer1') extern class ParserTable_TestORBInitializer1 extends org.omg.CORBA.LocalObject implements org.omg.PortableInterceptor.ORBInitializer
{
	@:overload public function equals(other : org.omg.CORBA.Object) : Bool;
	
	@:overload public function pre_init(info : org.omg.PortableInterceptor.ORBInitInfo) : Void;
	
	@:overload public function post_init(info : org.omg.PortableInterceptor.ORBInitInfo) : Void;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestORBInitializer2') extern class ParserTable_TestORBInitializer2 extends org.omg.CORBA.LocalObject implements org.omg.PortableInterceptor.ORBInitializer
{
	@:overload public function equals(other : org.omg.CORBA.Object) : Bool;
	
	@:overload public function pre_init(info : org.omg.PortableInterceptor.ORBInitInfo) : Void;
	
	@:overload public function post_init(info : org.omg.PortableInterceptor.ORBInitInfo) : Void;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestAcceptor1') extern class ParserTable_TestAcceptor1 implements com.sun.corba.se.pept.transport.Acceptor
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function initialize() : Bool;
	
	@:overload public function initialized() : Bool;
	
	@:overload public function getConnectionCacheType() : String;
	
	@:overload public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.InboundConnectionCache) : Void;
	
	@:overload public function getConnectionCache() : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	@:overload public function shouldRegisterAcceptEvent() : Bool;
	
	@:overload public function setUseSelectThreadForConnections(x : Bool) : Void;
	
	@:overload public function shouldUseSelectThreadForConnections() : Bool;
	
	@:overload public function setUseWorkerThreadForConnections(x : Bool) : Void;
	
	@:overload public function shouldUseWorkerThreadForConnections() : Bool;
	
	@:overload public function accept() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getEventHandler() : com.sun.corba.se.pept.transport.EventHandler;
	
	@:overload public function createMessageMediator(xbroker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function finishCreatingMessageMediator(xbroker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function createInputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload public function createOutputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	
}
@:native('com$sun$corba$se$impl$orb$ParserTable$TestAcceptor2') extern class ParserTable_TestAcceptor2 implements com.sun.corba.se.pept.transport.Acceptor
{
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function initialize() : Bool;
	
	@:overload public function initialized() : Bool;
	
	@:overload public function getConnectionCacheType() : String;
	
	@:overload public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.InboundConnectionCache) : Void;
	
	@:overload public function getConnectionCache() : com.sun.corba.se.pept.transport.InboundConnectionCache;
	
	@:overload public function shouldRegisterAcceptEvent() : Bool;
	
	@:overload public function setUseSelectThreadForConnections(x : Bool) : Void;
	
	@:overload public function shouldUseSelectThreadForConnections() : Bool;
	
	@:overload public function setUseWorkerThreadForConnections(x : Bool) : Void;
	
	@:overload public function shouldUseWorkerThreadForConnections() : Bool;
	
	@:overload public function accept() : Void;
	
	@:overload public function close() : Void;
	
	@:overload public function getEventHandler() : com.sun.corba.se.pept.transport.EventHandler;
	
	@:overload public function createMessageMediator(xbroker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function finishCreatingMessageMediator(xbroker : com.sun.corba.se.pept.broker.Broker, xconnection : com.sun.corba.se.pept.transport.Connection, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function createInputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload public function createOutputObject(broker : com.sun.corba.se.pept.broker.Broker, messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	
}
