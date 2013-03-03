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
extern class SocketOrChannelConnectionImpl extends com.sun.corba.se.impl.transport.EventHandlerBase implements com.sun.corba.se.spi.transport.CorbaConnection implements com.sun.corba.se.spi.orbutil.threadpool.Work
{
	/**
	* @author Harold Carr
	*/
	@:public @:static public static var dprintWriteLocks : Bool;
	
	@:protected private var enqueueTime : haxe.Int64;
	
	@:protected private var socketChannel : java.nio.channels.SocketChannel;
	
	@:overload @:public public function getSocketChannel() : java.nio.channels.SocketChannel;
	
	@:protected private var contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	@:protected private var acceptor : com.sun.corba.se.pept.transport.Acceptor;
	
	@:protected private var connectionCache : com.sun.corba.se.pept.transport.ConnectionCache;
	
	@:protected private var socket : java.net.Socket;
	
	@:protected private var timeStamp : haxe.Int64;
	
	@:protected private var requestId : Int;
	
	@:protected private var responseWaitingRoom : com.sun.corba.se.spi.transport.CorbaResponseWaitingRoom;
	
	@:protected private var state : Int;
	
	@:protected private var stateEvent : Dynamic;
	
	@:protected private var writeEvent : Dynamic;
	
	@:protected private var writeLocked : Bool;
	
	@:protected private var serverRequestCount : Int;
	
	@:protected private var postInitialContexts : Bool;
	
	@:protected private var codeBaseServerIOR : com.sun.corba.se.spi.ior.IOR;
	
	@:protected private var cachedCodeBase : com.sun.corba.se.impl.encoding.CachedCodeBase;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var readTimeouts : com.sun.corba.se.spi.transport.ReadTimeouts;
	
	@:protected private var partialMessageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function new(orb : com.sun.corba.se.spi.orb.ORB) : Void;
	
	@:overload @:protected private function new(orb : com.sun.corba.se.spi.orb.ORB, useSelectThreadToWait : Bool, useWorkerThread : Bool) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo, useSelectThreadToWait : Bool, useWorkerThread : Bool, socketType : String, hostname : String, port : Int) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo, socketType : String, hostname : String, port : Int) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, acceptor : com.sun.corba.se.pept.transport.Acceptor, socket : java.net.Socket, useSelectThreadToWait : Bool, useWorkerThread : Bool) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, acceptor : com.sun.corba.se.pept.transport.Acceptor, socket : java.net.Socket) : Void;
	
	@:overload @:public public function shouldRegisterReadEvent() : Bool;
	
	@:overload @:public public function shouldRegisterServerReadEvent() : Bool;
	
	@:overload @:public public function read() : Bool;
	
	@:overload @:protected private function readBits() : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function finishReadingBits(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function dispatch(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Bool;
	
	@:overload @:public public function shouldUseDirectByteBuffers() : Bool;
	
	@:overload @:public public function read(size : Int, offset : Int, length : Int, max_wait_time : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload @:public public function read(byteBuffer : java.nio.ByteBuffer, offset : Int, length : Int, max_wait_time : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload @:public public function readFully(byteBuffer : java.nio.ByteBuffer, size : Int, max_wait_time : haxe.Int64) : Void;
	
	@:overload @:public public function readFully(is : java.io.InputStream, buf : java.NativeArray<java.StdTypes.Int8>, offset : Int, size : Int, max_wait_time : haxe.Int64) : Void;
	
	@:overload @:public public function write(byteBuffer : java.nio.ByteBuffer) : Void;
	
	/**
	* Note:it is possible for this to be called more than once
	*/
	@:overload @:public @:synchronized public function close() : Void;
	
	@:overload @:public public function closeConnectionResources() : Void;
	
	@:overload @:public override public function getAcceptor() : com.sun.corba.se.pept.transport.Acceptor;
	
	@:overload @:public public function getContactInfo() : com.sun.corba.se.pept.transport.ContactInfo;
	
	@:overload @:public public function getEventHandler() : com.sun.corba.se.pept.transport.EventHandler;
	
	@:overload @:public public function createOutputObject(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload @:public public function isServer() : Bool;
	
	@:overload @:public public function isBusy() : Bool;
	
	@:overload @:public public function getTimeStamp() : haxe.Int64;
	
	@:overload @:public public function setTimeStamp(time : haxe.Int64) : Void;
	
	@:overload @:public public function setState(stateString : String) : Void;
	
	/**
	* Sets the writeLock for this connection.
	* If the writeLock is already set by someone else, block till the
	* writeLock is released and can set by us.
	* IMPORTANT: this connection's lock must be acquired before
	* setting the writeLock and must be unlocked after setting the writeLock.
	*/
	@:overload @:public public function writeLock() : Void;
	
	@:overload @:public public function writeUnlock() : Void;
	
	@:overload @:public public function sendWithoutLock(outputObject : com.sun.corba.se.pept.encoding.OutputObject) : Void;
	
	@:overload @:public public function registerWaiter(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function unregisterWaiter(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function waitForResponse(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:public public function setConnectionCache(connectionCache : com.sun.corba.se.pept.transport.ConnectionCache) : Void;
	
	@:overload @:public public function getConnectionCache() : com.sun.corba.se.pept.transport.ConnectionCache;
	
	@:overload @:public override public function setUseSelectThreadToWait(x : Bool) : Void;
	
	@:overload @:public override public function handleEvent() : Void;
	
	@:overload @:public override public function getChannel() : java.nio.channels.SelectableChannel;
	
	@:overload @:public override public function getInterestOps() : Int;
	
	@:overload @:public override public function getConnection() : com.sun.corba.se.spi.legacy.connection.Connection;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function doWork() : Void;
	
	@:overload @:public public function setEnqueueTime(timeInMillis : haxe.Int64) : Void;
	
	@:overload @:public public function getEnqueueTime() : haxe.Int64;
	
	@:overload @:public public function shouldReadGiopHeaderOnly() : Bool;
	
	@:overload @:protected private function setReadGiopHeaderOnly(shouldReadHeaderOnly : Bool) : Void;
	
	@:overload @:public public function getResponseWaitingRoom() : com.sun.corba.se.pept.transport.ResponseWaitingRoom;
	
	@:overload @:public public function serverRequestMapPut(requestId : Int, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:public public function serverRequestMapGet(requestId : Int) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function serverRequestMapRemove(requestId : Int) : Void;
	
	@:overload @:public public function getSocket() : java.net.Socket;
	
	/** It is possible for a Close Connection to have been
	** sent here, but we will not check for this. A "lazy"
	** Exception will be thrown in the Worker thread after the
	** incoming request has been processed even though the connection
	** is closed before the request is processed. This is o.k because
	** it is a boundary condition. To prevent it we would have to add
	** more locks which would reduce performance in the normal case.
	**/
	@:overload @:public @:synchronized public function serverRequestProcessingBegins() : Void;
	
	@:overload @:public @:synchronized public function serverRequestProcessingEnds() : Void;
	
	@:overload @:public @:synchronized public function getNextRequestId() : Int;
	
	@:protected private var codeSetContext : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext;
	
	@:overload @:public public function getBroker() : com.sun.corba.se.spi.orb.ORB;
	
	@:overload @:public public function getCodeSetContext() : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext;
	
	@:overload @:public @:synchronized public function setCodeSetContext(csc : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext) : Void;
	
	@:overload @:public public function clientRequestMapGet(requestId : Int) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:protected private var clientReply_1_1 : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function clientReply_1_1_Put(x : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function clientReply_1_1_Get() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function clientReply_1_1_Remove() : Void;
	
	@:protected private var serverRequest_1_1 : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function serverRequest_1_1_Put(x : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload @:public public function serverRequest_1_1_Get() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload @:public public function serverRequest_1_1_Remove() : Void;
	
	@:overload @:protected private function getStateString(state : Int) : String;
	
	@:overload @:public @:synchronized public function isPostInitialContexts() : Bool;
	
	@:overload @:public @:synchronized public function setPostInitialContexts() : Void;
	
	/**
	* Wake up the outstanding requests on the connection, and hand them
	* COMM_FAILURE exception with a given minor code.
	*
	* Also, delete connection from connection table and
	* stop the reader thread.

	* Note that this should only ever be called by the Reader thread for
	* this connection.
	*
	* @param minor_code The minor code for the COMM_FAILURE major code.
	* @param die Kill the reader thread (this thread) before exiting.
	*/
	@:overload @:public public function purgeCalls(systemException : org.omg.CORBA.SystemException, die : Bool, lockHeld : Bool) : Void;
	
	/*************************************************************************
	* The following methods are for dealing with Connection cleaning for
	* better scalability of servers in high network load conditions.
	**************************************************************************/
	@:overload @:public public function sendCloseConnection(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload @:public public function sendMessageError(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	/**
	* Send a CancelRequest message. This does not lock the connection, so the
	* caller needs to ensure this method is called appropriately.
	* @exception IOException - could be due to abortive connection closure.
	*/
	@:overload @:public public function sendCancelRequest(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, requestId : Int) : Void;
	
	@:overload @:protected private function sendHelper(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload @:public public function sendCancelRequestWithLock(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, requestId : Int) : Void;
	
	@:overload @:public @:final public function setCodeBaseIOR(ior : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload @:public @:final public function getCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public @:final public function getCodeBase() : com.sun.org.omg.SendingContext.CodeBase;
	
	@:overload @:protected private function setReadTimeouts(readTimeouts : com.sun.corba.se.spi.transport.ReadTimeouts) : Void;
	
	@:overload @:protected private function setPartialMessageMediator(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function getPartialMessageMediator() : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function dprint(msg : String) : Void;
	
	@:overload @:protected private function dprint(msg : String, t : java.lang.Throwable) : Void;
	
	
}
