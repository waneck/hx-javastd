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
	private var orb : com.sun.corba.se.spi.orb.ORB;
	
	private var wrapper : com.sun.corba.se.impl.logging.ORBUtilSystemException;
	
	private var interceptorWrapper : com.sun.corba.se.impl.logging.InterceptorsSystemException;
	
	private var contactInfo : com.sun.corba.se.spi.transport.CorbaContactInfo;
	
	private var connection : com.sun.corba.se.spi.transport.CorbaConnection;
	
	private var addrDisposition : java.StdTypes.Int16;
	
	private var outputObject : com.sun.corba.se.impl.encoding.CDROutputObject;
	
	private var inputObject : com.sun.corba.se.impl.encoding.CDRInputObject;
	
	private var messageHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	private var requestHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
	
	private var replyHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyOrReplyMessage;
	
	private var replyExceptionDetailMessage : String;
	
	private var replyIOR : com.sun.corba.se.spi.ior.IOR;
	
	private var requestIdInteger : Null<Int>;
	
	private var dispatchHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	private var dispatchByteBuffer : java.nio.ByteBuffer;
	
	private var streamFormatVersion : java.StdTypes.Int8;
	
	private var streamFormatVersionSet : Bool;
	
	private var diiRequest : org.omg.CORBA.Request;
	
	private var cancelRequestAlreadySent : Bool;
	
	private var protocolHandler : com.sun.corba.se.pept.protocol.ProtocolHandler;
	
	private var _executeReturnServantInResponseConstructor : Bool;
	
	private var _executeRemoveThreadInfoInResponseConstructor : Bool;
	
	private var _executePIInResponseConstructor : Bool;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, contactInfo : com.sun.corba.se.pept.transport.ContactInfo, connection : com.sun.corba.se.pept.transport.Connection, giopVersion : com.sun.corba.se.spi.ior.iiop.GIOPVersion, ior : com.sun.corba.se.spi.ior.IOR, requestId : Int, addrDisposition : java.StdTypes.Int16, operationName : String, isOneWay : Bool) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.pept.transport.Connection) : Void;
	
	@:overload public function new(orb : com.sun.corba.se.spi.orb.ORB, connection : com.sun.corba.se.spi.transport.CorbaConnection, dispatchHeader : com.sun.corba.se.impl.protocol.giopmsgheaders.Message, byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload public function getBroker() : com.sun.corba.se.pept.broker.Broker;
	
	@:overload public function getContactInfo() : com.sun.corba.se.pept.transport.ContactInfo;
	
	@:overload public function getConnection() : com.sun.corba.se.pept.transport.Connection;
	
	@:overload public function initializeMessage() : Void;
	
	@:overload public function finishSendingRequest() : Void;
	
	@:overload public function waitForResponse() : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload public function setOutputObject(outputObject : com.sun.corba.se.pept.encoding.OutputObject) : Void;
	
	@:overload public function getOutputObject() : com.sun.corba.se.pept.encoding.OutputObject;
	
	@:overload public function setInputObject(inputObject : com.sun.corba.se.pept.encoding.InputObject) : Void;
	
	@:overload public function getInputObject() : com.sun.corba.se.pept.encoding.InputObject;
	
	@:overload public function setReplyHeader(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyOrReplyMessage) : Void;
	
	@:overload public function getLocateReplyHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage;
	
	@:overload public function getReplyHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage;
	
	@:overload public function setReplyExceptionDetailMessage(message : String) : Void;
	
	@:overload public function getRequestHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage;
	
	@:overload public function getGIOPVersion() : com.sun.corba.se.spi.ior.iiop.GIOPVersion;
	
	@:overload public function getEncodingVersion() : java.StdTypes.Int8;
	
	@:overload public function getRequestId() : Int;
	
	@:overload public function getRequestIdInteger() : Null<Int>;
	
	@:overload public function isOneWay() : Bool;
	
	@:overload public function getAddrDisposition() : java.StdTypes.Int16;
	
	@:overload public function getOperationName() : String;
	
	@:overload public function getRequestServiceContexts() : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	@:overload public function getReplyServiceContexts() : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	@:overload public function sendCancelRequestIfFinalFragmentNotSent() : Void;
	
	@:overload public function sentFullMessage() : Bool;
	
	@:overload public function sentFragment() : Bool;
	
	@:overload public function setDIIInfo(diiRequest : org.omg.CORBA.Request) : Void;
	
	@:overload public function isDIIRequest() : Bool;
	
	@:overload public function unmarshalDIIUserException(repoId : String, is : org.omg.CORBA_2_3.portable.InputStream) : java.lang.Exception;
	
	@:overload public function setDIIException(exception : java.lang.Exception) : Void;
	
	@:overload public function handleDIIReply(inputStream : org.omg.CORBA_2_3.portable.InputStream) : Void;
	
	@:overload public function getDispatchHeader() : com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
	
	@:overload public function setDispatchHeader(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload public function getDispatchBuffer() : java.nio.ByteBuffer;
	
	@:overload public function setDispatchBuffer(byteBuffer : java.nio.ByteBuffer) : Void;
	
	@:overload public function getThreadPoolToUse() : Int;
	
	@:overload public function getStreamFormatVersion() : java.StdTypes.Int8;
	
	/**
	* If the RMI-IIOP maximum stream format version service context
	* is present, it indicates the maximum stream format version we
	* could use for the reply.  If it isn't present, the default is
	* 2 for GIOP 1.3 or greater, 1 for lower.
	*
	* This is only sent on requests.  Clients can find out the
	* server's maximum by looking for a tagged component in the IOR.
	*/
	@:overload public function getStreamFormatVersionForReply() : java.StdTypes.Int8;
	
	@:overload public function isSystemExceptionReply() : Bool;
	
	@:overload public function isUserExceptionReply() : Bool;
	
	@:overload public function isLocationForwardReply() : Bool;
	
	@:overload public function isDifferentAddrDispositionRequestedReply() : Bool;
	
	@:overload public function getAddrDispositionReply() : java.StdTypes.Int16;
	
	@:overload public function getForwardedIOR() : com.sun.corba.se.spi.ior.IOR;
	
	@:overload public function getSystemExceptionReply() : org.omg.CORBA.SystemException;
	
	@:overload public function getObjectKey() : com.sun.corba.se.spi.ior.ObjectKey;
	
	@:overload public function setProtocolHandler(protocolHandler : com.sun.corba.se.spi.protocol.CorbaProtocolHandler) : Void;
	
	@:overload public function getProtocolHandler() : com.sun.corba.se.spi.protocol.CorbaProtocolHandler;
	
	@:overload public function createReply() : org.omg.CORBA.portable.OutputStream;
	
	@:overload public function createExceptionReply() : org.omg.CORBA.portable.OutputStream;
	
	@:overload public function executeReturnServantInResponseConstructor() : Bool;
	
	@:overload public function setExecuteReturnServantInResponseConstructor(b : Bool) : Void;
	
	@:overload public function executeRemoveThreadInfoInResponseConstructor() : Bool;
	
	@:overload public function setExecuteRemoveThreadInfoInResponseConstructor(b : Bool) : Void;
	
	@:overload public function executePIInResponseConstructor() : Bool;
	
	@:overload public function setExecutePIInResponseConstructor(b : Bool) : Void;
	
	private var isThreadDone : Bool;
	
	@:overload public function handleRequest(messageMediator : com.sun.corba.se.pept.protocol.MessageMediator) : Bool;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.Message) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_0) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_1) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage_1_2) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_0) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_1) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage_1_2) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_0) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_1) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage_1_2) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_0) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_1) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateReplyMessage_1_2) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage_1_1) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.FragmentMessage_1_2) : Void;
	
	@:overload public function handleInput(header : com.sun.corba.se.impl.protocol.giopmsgheaders.CancelRequestMessage) : Void;
	
	@:overload private function opAndId(mediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : String;
	
	@:overload public function handleRequest(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.RequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function handleRequest(msg : com.sun.corba.se.impl.protocol.giopmsgheaders.LocateRequestMessage, messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload private function handleRequestRequest(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload private function handleLocateRequest(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload public function handleThrowableDuringServerDispatch(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus) : Void;
	
	@:overload private function handleThrowableDuringServerDispatch(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus, iteration : Int) : Void;
	
	@:overload private function convertThrowableToSystemException(throwable : java.lang.Throwable, completionStatus : org.omg.CORBA.CompletionStatus) : org.omg.CORBA.SystemException;
	
	@:overload private function handleAddressingDisposition(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : com.sun.corba.se.impl.protocol.AddressingDispositionException) : Void;
	
	@:overload public function createResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createUserExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createUnknownExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.portable.UnknownException) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createSystemExceptionResponse(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ex : org.omg.CORBA.SystemException, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload public function createLocationForward(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, ior : com.sun.corba.se.spi.ior.IOR, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, svc : com.sun.corba.se.spi.servicecontext.ServiceContexts, user : Bool) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload private function createResponseHelper(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, reply : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage, ior : com.sun.corba.se.spi.ior.IOR) : com.sun.corba.se.spi.protocol.CorbaMessageMediator;
	
	@:overload private function runServantPostInvoke(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload private function runInterceptors(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, reply : com.sun.corba.se.impl.protocol.giopmsgheaders.ReplyMessage) : Void;
	
	@:overload private function runRemoveThreadInfo(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator) : Void;
	
	@:overload private function getServiceContextsForReply(messageMediator : com.sun.corba.se.spi.protocol.CorbaMessageMediator, contexts : com.sun.corba.se.spi.servicecontext.ServiceContexts) : com.sun.corba.se.spi.servicecontext.ServiceContexts;
	
	
}
