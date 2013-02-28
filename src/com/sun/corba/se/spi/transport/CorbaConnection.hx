package com.sun.corba.se.spi.transport;
/*
* Copyright (c) 2002, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface CorbaConnection extends com.sun.corba.se.spi.legacy.connection.Connection extends com.sun.corba.se.spi.legacy.connection.Connection
{
	/**
	* @author Harold Carr
	*/
	@:overload public function shouldUseDirectByteBuffers() : Bool;
	
	@:overload public function shouldReadGiopHeaderOnly() : Bool;
	
	@:overload public function read(size : Int, offset : Int, length : Int, max_wait_time : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload public function read(byteBuffer : java.nio.ByteBuffer, offset : Int, length : Int, max_wait_time : haxe.Int64) : java.nio.ByteBuffer;
	
	@:overload public function write(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload public function dprint(msg : String) : Void;
	
	@:overload public function getNextRequestId() : Int;
	
	@:overload public function getBroker() : com.sun.corba.se.spi.orb.ORB;
	
	@:overload public function getCodeSetContext() : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext;
	
	@:overload public function setCodeSetContext(csc : com.sun.corba.se.impl.encoding.CodeSetComponentInfo.CodeSetComponentInfo_CodeSetContext) : Void;
	
	@:overload public function clientRequestMapGet(requestId : Int) : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function clientReply_1_1_Put(x : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload public function clientReply_1_1_Get() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function clientReply_1_1_Remove() : Void;
	
	@:overload public function serverRequest_1_1_Put(x : com.sun.corba.se.pept.protocol.MessageMediator) : Void;
	
	@:overload public function serverRequest_1_1_Get() : com.sun.corba.se.pept.protocol.MessageMediator;
	
	@:overload public function serverRequest_1_1_Remove() : Void;
	
	@:overload public function isPostInitialContexts() : Bool;
	
	@:overload public function setPostInitialContexts() : Void;
	
	@:overload public function purgeCalls(systemException : org.omg.CORBA.SystemException, die : Bool, lockHeld : Bool) : Void;
	
	@:overload public function setCodeBaseIOR(ior : com.sun.corba.se.spi.ior.IOR) : Void;
	
	@:overload public function getCodeBaseIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload public function getCodeBase() : com.sun.org.omg.SendingContext.CodeBase;
	
	@:overload public function sendCloseConnection(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload public function sendMessageError(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion) : Void;
	
	@:overload public function sendCancelRequest(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, requestId : Int) : Void;
	
	@:overload public function sendCancelRequestWithLock(giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, requestId : Int) : Void;
	
	@:overload public function getResponseWaitingRoom() : com.sun.corba.se.pept.transport.ResponseWaitingRoom;
	
	@:overload public function serverRequestMapPut(requestId : Int, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function serverRequestMapGet(requestId : Int) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function serverRequestMapRemove(requestId : Int) : Void;
	
	@:overload public function getSocketChannel() : java.nio.channels.SocketChannel;
	
	@:overload public function serverRequestProcessingBegins() : Void;
	
	@:overload public function serverRequestProcessingEnds() : Void;
	
	/** Clean up all connection resources.  Used when shutting down an ORB.
	*/
	@:overload public function closeConnectionResources() : Void;
	
	
}
