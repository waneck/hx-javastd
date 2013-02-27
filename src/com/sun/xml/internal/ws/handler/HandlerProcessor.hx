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
@:internal extern class HandlerProcessor<C>
{
	/**
	* The handlers that are passed in will be sorted into
	* logical and soap handlers. During this sorting, the
	* understood headers are also obtained from any soap
	* handlers.
	*
	* @param chain A list of handler objects, which can
	*              be protocol or logical handlers.
	*/
	@:overload private function new(owner : com.sun.xml.internal.ws.handler.HandlerTube, binding : com.sun.xml.internal.ws.api.WSBinding, chain : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>) : Void;
	
	/**
	* TODO: Just putting thoughts,
	* Current contract: This is Called during Request Processing.
	* return true, if all handlers in the chain return true
	* Current Pipe can call nextPipe.process();
	* return false, One of the handlers has returned false or thrown a
	* RuntimeException. Remedy Actions taken:
	* 1) In this case, The processor will setIndex()to track what
	* handlers are invoked until that point.
	* 2) Previously invoked handlers are again invoked (handleMessage()
	* or handleFault()) to take remedy action.
	* CurrentPipe should NOT call nextPipe.process()
	* While closing handlers, check getIndex() to get the invoked
	* handlers.
	* @throws RuntimeException this happens when a RuntimeException occurs during
	* handleMessage during Request processing or
	* during remedy action 2)
	* CurrentPipe should NOT call nextPipe.process() and throw the
	* exception to the previous Pipe
	* While closing handlers, check getIndex() to get the invoked
	* handlers.
	*/
	@:overload public function callHandlersRequest(direction : HandlerProcessor_Direction, context : C, responseExpected : Bool) : Bool;
	
	/**
	* TODO: Just putting thoughts,
	* Current contract: This is Called during Response Processing.
	* Runs all handlers until handle returns false or throws a RuntimeException
	* CurrentPipe should close all the handlers in the chain.
	* throw RuntimeException, this happens when a RuntimeException occurs during
	* normal Response processing or remedy action 2) taken
	* during callHandlersRequest().
	* CurrentPipe should close all the handlers in the chain.     *
	*/
	@:overload public function callHandlersResponse(direction : HandlerProcessor_Direction, context : C, isFault : Bool) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$handler$HandlerProcessor$RequestOrResponse') extern enum HandlerProcessor_RequestOrResponse
{
	REQUEST;
	RESPONSE;
	
}

@:native('com$sun$xml$internal$ws$handler$HandlerProcessor$Direction') extern enum HandlerProcessor_Direction
{
	OUTBOUND;
	INBOUND;
	
}

