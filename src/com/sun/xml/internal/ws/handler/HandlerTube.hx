package com.sun.xml.internal.ws.handler;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class HandlerTube extends com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl
{
	private var handlers : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>;
	
	private var port(default, null) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload public function new(next : com.sun.xml.internal.ws.api.pipe.Tube, port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Void;
	
	@:overload public function new(next : com.sun.xml.internal.ws.api.pipe.Tube, cousinTube : HandlerTube) : Void;
	
	/**
	* Copy constructor for {@link Tube#copy(TubeCloner)}.
	*/
	@:overload private function new(that : HandlerTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Must be overridden by HandlerTube that drives other handler tubes for processing a message.
	* On Client-side: ClientLogicalHandlerTube drives the Handler Processing.
	* On Server-side: In case SOAP Binding, ServerMessageHandlerTube drives the Handler Processing.
	*                 In case XML/HTTP Binding, ServerLogicalHandlerTube drives the Handler Processing.
	*
	*
	* If its a top HandlerTube, should override by calling #close(MessaggeContext);
	*
	*/
	@:overload private function initiateClosing(mc : javax.xml.ws.handler.MessageContext) : Void;
	
	/**
	* Calls close on previously invoked handlers.
	* Also, Cleans up any state left over in the Tube instance from the current
	* invocation, as Tube instances can be reused after the completion of MEP.
	*
	* On Client, SOAPHandlers are closed first and then LogicalHandlers
	* On Server, LogicalHandlers are closed first and then SOAPHandlers
	*/
	@:overload @:final public function close(msgContext : javax.xml.ws.handler.MessageContext) : Void;
	
	/**
	* Called by close(MessageContext mc) in a Client Handlertube
	*/
	@:overload private function closeClientsideHandlers(msgContext : javax.xml.ws.handler.MessageContext) : Void;
	
	/**
	* Called by close(MessageContext mc) in a Server Handlertube
	*/
	@:overload private function closeServersideHandlers(msgContext : javax.xml.ws.handler.MessageContext) : Void;
	
	@:overload @:final public function isHandlerChainEmpty() : Bool;
	
	
}
/**
* This class is used primarily to exchange information or status between
* LogicalHandlerTube and SOAPHandlerTube
*/
@:native('com$sun$xml$internal$ws$handler$HandlerTube$HandlerTubeExchange') @:internal extern class HandlerTube_HandlerTubeExchange
{
	@:overload public function isHandleFalse() : Bool;
	
	
}
