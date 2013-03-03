package com.sun.corba.se.impl.protocol;
/*
* Copyright (c) 2001, 2012, Oracle and/or its affiliates. All rights reserved.
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
extern class CorbaMessageMediatorImpl implements com.sun.corba.se.spi.protocol.CorbaMessageMediator implements com.sun.corba.se.spi.protocol.CorbaProtocolHandler implements com.sun.corba.se.impl.protocol.giopmsgheaders.MessageHandler
{
	/**
	* @author Harold Carr
	*/
	@:protected private var orb : com.sun.corba.se.spi.orb.ORB;
	
	@:protected private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	@:protected private var interceptorWrapper : com.sun.corba.se.impl.logging.InterceptorsSystemException;
	
	@:protected private var contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	@:protected private var connection : com.sun.corba.se.spi.transport.CorbaConnection;
	
	@:protected private var addrDisposition : java.StdTypes.Int16;
	
	@:protected private var outputObject : com.sun.corba.se.impl.encoding.CDROutputObject;
	
	@:protected private var inputObject : com.sun.corba.se.impl.encoding.CDRInputObject;
	
	@:protected private var messageHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:protected private var requestHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
	
	@:protected private var replyHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyOrReplyMessage;
	
	@:protected private var replyExceptionDetailMessage : String;
	
	@:protected private var replyIOR : com.sun.corba.se.spi.ior.IOR;
	
	@:protected private var requestIdInteger : Null<Int>;
	
	@:protected private var dispatchHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:protected private var dispatchByteBuffer : java.nio.ByteBuffer;
	
	@:protected private var streamFormatVersion : java.StdTypes.Int8;
	
	@:protected private var streamFormatVersionSet : Bool;
	
	@:protected private var diiRequest : org.omg.CORBA.Request;
	
	@:protected private var cancelRequestAlreadySent : Bool;
	
	@:protected private var protocolHandler : com.sun.corba.se.pept.protocol.ProtocolHandler;
	
	@:protected private var _executeReturnServantInResponseConstructor : Bool;
	
	@:protected private var _executeRemoveThreadInfoInResponseConstructor : Bool;
	
	@:protected private var _executePIInResponseConstructor : Bool;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfo : com.sun.corba.se.pept.transport.ContactInfo, connection : com.sun.corba.se.pept.transport.Connection, giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, ior : com.sun.corba.se.spi.ior.IOR, requestId : Int, addrDisposition : java.StdTypes.Int16, operationName : String, isOneWay : Bool) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.pept.transport.Connection) : Void;
	
	@:overload @:public public function new(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.spi.transport.CorbaConnection, dispatchHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message, byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public public function getBroker() : com.sun.corba.se.pept.broker.Broker;
	
	@:overload @:public public function getContactInfo() : com.sun.corba.se.pept.transport.ContactInfo;
	
	@:overload @:public public function getConnection() : com.sun.corba.se.pept.transport.Connection;
	
	@:overload @:public public function initializeMessage() : Void;
	
	@:overload @:public public function finishSendingRequest() : Void;
	
	@:overload @:public public function waitForResponse() : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload @:public public function setOutputObject(outputObject : com.sun.corba.se.pept.encoding.OutputObject) : Void;
	
	@:overload @:public public function getOutputObject() : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload @:public public function setInputObject(inputObject : com.sun.corba.se.pept.encoding.InputObject) : Void;
	
	@:overload @:public public function getInputObject() : com.sun.corba.se.pept.encoding.InputObject;
	
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
	
	@:overload @:public public function sendCancelRequestIfFinalFragmentNotSent() : Void;
	
	@:overload @:public public function sentFullMessage() : Bool;
	
	@:overload @:public public function sentFragment() : Bool;
	
	@:overload @:public public function setDIIInfo(diiRequest : org.omg.CORBA.Request) : Void;
	
	@:overload @:public public function isDIIRequest() : Bool;
	
	@:overload @:public public function unmarshalDIIUserException(repoId : String, is : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	@:overload @:public public function setDIIException(exception : java.lang.Exception) : Void;
	
	@:overload @:public public function handleDIIReply(inputStream : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload @:public public function getDispatchHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload @:public public function setDispatchHeader(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload @:public public function getDispatchBuffer() : java.nio.ByteBuffer;
	
	@:overload @:public public function setDispatchBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload @:public public function getThreadPoolToUse() : Int;
	
	@:overload @:public public function getStreamFormatVersion() : java.StdTypes.Int8;
	
	/**
	* If the RMI-IIOP maximum stream format version service context
	* is present, it indicates the maximum stream format version we
	* could use for the reply.  If it isn't present, the default is
	* 2 for GIOP 1.3 or greater, 1 for lower.
	*
	* This is only sent on requests.  Clients can find out the
	* server's maximum by looking for a tagged component in the IOR.
	*/
	@:overload @:public public function getStreamFormatVersionForReply() : java.StdTypes.Int8;
	
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
	
	@:protected private var isThreadDone : Bool;
	
	@:overload @:public public function handleRequest(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Bool;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_0) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_1) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_2) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_0) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_1) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_2) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_0) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_1) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_2) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_0) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_1) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_2) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage_1_1) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage_1_2) : Void;
	
	@:overload @:public public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.CancelRequestMessage) : Void;
	
	@:overload @:protected private function opAndId(mediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : String;
	
	@:overload @:public public function handleRequest(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:public public function handleRequest(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function handleRequestRequest(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function handleLocateRequest(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:public public function handleThrowableDuringServerDispatch(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus) : Void;
	
	@:overload @:protected private function handleThrowableDuringServerDispatch(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus, iteration : Int) : Void;
	
	@:overload @:protected private function convertThrowableToSystemException(throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.SystemException;
	
	@:overload @:protected private function handleAddressingDisposition(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : com.sun.corba.se.impl.protocol.AddressingDispositionException) : Void;
	
	@:overload @:public public function createResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function createUserExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function createUnknownExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.portable.UnknownException) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function createSystemExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.SystemException, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:public public function createLocationForward(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ior : com.sun.corba.se.spi.ior.IOR, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts, user : Bool) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, reply : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage, ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload @:protected private function runServantPostInvoke(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function runInterceptors(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, reply : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage) : Void;
	
	@:overload @:protected private function runRemoveThreadInfo(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload @:protected private function getServiceContextsForReply(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, contexts : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	
}
