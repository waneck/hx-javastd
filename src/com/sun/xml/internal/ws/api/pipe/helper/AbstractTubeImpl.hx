package com.sun.xml.internal.ws.api.pipe.helper;
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
extern class AbstractTubeImpl implements com.sun.xml.internal.ws.api.pipe.Tube implements com.sun.xml.internal.ws.api.pipe.Pipe
{
	/**
	* Default constructor.
	*/
	@:overload private function new() : Void;
	
	/**
	* Copy constructor.
	*/
	@:overload private function new(that : AbstractTubeImpl, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload @:final private function doInvoke(next : com.sun.xml.internal.ws.api.pipe.Tube, packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:final private function doInvokeAndForget(next : com.sun.xml.internal.ws.api.pipe.Tube, packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:final private function doReturnWith(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:final private function doSuspend() : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:final private function doSuspend(next : com.sun.xml.internal.ws.api.pipe.Tube) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload @:final private function doThrow(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* "Dual stack" compatibility mechanism.
	* Allows {@link Tube} to be invoked from a {@link Pipe}.
	*/
	@:overload public function process(p : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Needs to be implemented by the derived class, but we can't make it abstract
	* without upsetting javac.
	*/
	@:overload @:final public function copy(cloner : com.sun.xml.internal.ws.api.pipe.PipeCloner) : AbstractTubeImpl;
	
	@:overload @:abstract public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : AbstractTubeImpl;
	
	/**
	* Acts on a request and perform some protocol specific operation.
	*
	* TODO: exception handling semantics need more discussion
	*
	* @throws WebServiceException
	*      On the server side, this signals an error condition where
	*      a fault reply is in order (or the exception gets eaten by
	*      the top-most transport {@link Adapter} if it's one-way.)
	*      This frees each {@link Tube} from try/catching a
	*      {@link WebServiceException} in every layer.
	*
	*      Note that this method is also allowed to return
	*      {@link NextAction#returnWith(Packet)} with
	*      a {@link Packet} that has a fault as the payload.
	*
	*      <p>
	*      On the client side, the {@link WebServiceException} thrown
	*      will be propagated all the way back to the calling client
	*      applications. (The consequence of that is that if you are
	*      a filtering {@link Tube}, you must not eat the exception
	*      that was given to {@link #processException(Throwable)} .
	*
	* @throws RuntimeException
	*      Other runtime exception thrown by this method must
	*      be treated as a bug in the tube implementation,
	*      and therefore should not be converted into a fault.
	*      (Otherwise it becomes very difficult to debug implementation
	*      problems.)
	*
	*      <p>
	*      On the server side, this exception should be most likely
	*      just logged. On the client-side it gets propagated to the
	*      client application.
	*
	*      <p>
	*      The consequence of this is that if a pipe calls
	*      into an user application (such as {@link SOAPHandler}
	*      or {@link LogicalHandler}), where a {@link RuntimeException}
	*      is *not* a bug in the JAX-WS implementation, it must be catched
	*      and wrapped into a {@link WebServiceException}.
	*
	* @param request
	*      The packet that represents a request message.
	*      If the packet has a non-null message, it must be a valid
	*      unconsumed {@link Message}. This message represents the
	*      SOAP message to be sent as a request.
	*      <p>
	*      The packet is also allowed to carry no message, which indicates
	*      that this is an output-only request.
	*      (that's called "solicit", right? - KK)
	*
	* @return
	*      A {@link NextAction} object that represents the next action
	*      to be taken by the JAX-WS runtime.
	*/
	@:overload public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Acts on a exception and performs some clean up operations.
	*
	* <p>
	* If a {@link #processRequest(Packet)}, {@link #processResponse(Packet)},
	* {@link #processException(Throwable)} throws an exception, this method
	* will be always invoked on all the {@link Tube}s in the remaining
	* {@link NextAction}s.
	*
	* <p>
	* On the server side, the {@link Throwable} thrown will be propagated to the
	* top-most transport. The transport converts the exception to fault reply or
	* simply logs in case of one-way MEP. If you are a filtering {@link Tube} like
	* {@link AbstractTubeImpl}, you don't have to override the implementation). On
	* the other hand, any intermediate {@link Tube} may want to convert the exception
	* to a fault message.
	*
	* <p>
	* On the client side, the {@link Throwable} thrown
	* will be propagated all the way back to the calling client
	* applications. (The consequence of that is that if you are
	* a filtering {@link Tube} like {@link AbstractTubeImpl}, you don't have to
	* override the implementation)
	*
	* @param t
	*
	* @return
	*      A {@link NextAction} object that represents the next action
	*      to be taken by the JAX-WS runtime.
	*/
	@:overload public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Acts on a response and performs some protocol specific operation.
	*
	* <p>
	* Once a {@link #processRequest(Packet)} is invoked, this method
	* will be always invoked with the response, before this {@link Tube}
	* processes another request.
	*
	* @param response
	*      If the packet has a non-null message, it must be
	*      a valid unconsumed {@link Message}. This message represents
	*      a response to the request message passed to
	*      {@link #processRequest(Packet)} earlier.
	*      <p>
	*      The packet is also allowed to carry no message, which indicates
	*      that there was no response. This is used for things like
	*      one-way message and/or one-way transports.
	*
	* TODO: exception handling semantics need more discussion
	*
	* @return
	*      A {@link NextAction} object that represents the next action
	*      to be taken by the JAX-WS runtime.
	*/
	@:overload public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	
}
