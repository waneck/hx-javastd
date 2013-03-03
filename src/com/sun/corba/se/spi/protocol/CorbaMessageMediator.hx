package com.sun.corba.se.spi.protocol;
/*
* Copyright (c) 2002, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface CorbaMessageMediator extends com.sun.corba.se.pept.protocol.MessageMediator extends org.omg.CORBA.portable.ResponseHandler
{
	/**
	* @author Harold Carr
	*/
	@:overload @:public public function setReplyHeader(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyOrReplyMessage) : Void;
	
	@:overload @:public public function getLocateReplyHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage;
	
	@:overload @:public public function getReplyHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage;
	
	@:overload @:public public function setReplyExceptionDetailMessage(message : String) : Void;
	
	@:overload @:public public function getRequestHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
	
	@:overload @:public public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload @:public public function getEncodingVersion() : java.StdTypes.Int8;
	
	@:overload @:public public function getRequestId() : Int;
	
	@:overload @:public public function getRequestIdInteger() : Null<Int>;
	
	@:overload @:public public function isOneWay() : Bool;
	
	@:overload @:public public function getAddrDisposition() : java.StdTypes.Int16;
	
	@:overload @:public public function getOperationName() : String;
	
	@:overload @:public public function getRequestServiceContexts() : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	@:overload @:public public function getReplyServiceContexts() : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	@:overload @:public public function getDispatchHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload @:public public function setDispatchHeader(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload @:public public function getDispatchBuffer() : java.nio.ByteBuffer;
	
	@:overload @:public public function setDispatchBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public public function getThreadPoolToUse() : Int;
	
	@:overload @:public public function getStreamFormatVersion() : java.StdTypes.Int8;
	
	@:overload @:public public function getStreamFormatVersionForReply() : java.StdTypes.Int8;
	
	@:overload @:public public function sendCancelRequestIfFinalFragmentNotSent() : Void;
	
	@:overload @:public public function setDIIInfo(request : org.omg.CORBA.Request) : Void;
	
	@:overload @:public public function isDIIRequest() : Bool;
	
	@:overload @:public public function unmarshalDIIUserException(repoId : String, inputStream : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	@:overload @:public public function setDIIException(exception : java.lang.Exception) : Void;
	
	@:overload @:public public function handleDIIReply(inputStream : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload @:public public function isSystemExceptionReply() : Bool;
	
	@:overload @:public public function isUserExceptionReply() : Bool;
	
	@:overload @:public public function isLocationForwardReply() : Bool;
	
	@:overload @:public public function isDifferentAddrDispositionRequestedReply() : Bool;
	
	@:overload @:public public function getAddrDispositionReply() : java.StdTypes.Int16;
	
	@:overload @:public public function getForwardedIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload @:public public function getSystemExceptionReply() : org.omg.CORBA.SystemException;
	
	@:overload @:public public function getObjectKey() : com.sun.corba.se.spi.ior.ObjectKey;
	
	@:overload @:public public function setProtocolHandler(protocolHandler : com.sun.corba.se.spi.protocol.CorbaProtocolHandler) : Void;
	
	@:overload @:public public function getProtocolHandler() : com.sun.corba.se.spi.protocol.CorbaProtocolHandler;
	
	@:overload @:public public function createReply() : org.omg.CORBA.portable.OutputStream;
	
	@:overload @:public public function createExceptionReply() : org.omg.CORBA.portable.OutputStream;
	
	@:overload @:public public function executeReturnServantInResponseConstructor() : Bool;
	
	@:overload @:public public function setExecuteReturnServantInResponseConstructor(b : Bool) : Void;
	
	@:overload @:public public function executeRemoveThreadInfoInResponseConstructor() : Bool;
	
	@:overload @:public public function setExecuteRemoveThreadInfoInResponseConstructor(b : Bool) : Void;
	
	@:overload @:public public function executePIInResponseConstructor() : Bool;
	
	@:overload @:public public function setExecutePIInResponseConstructor(b : Bool) : Void;
	
	
}
