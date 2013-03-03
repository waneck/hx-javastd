package com.sun.xml.internal.ws.api.pipe;
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
extern interface Tube
{
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
	@:overload @:public public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
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
	@:overload @:public public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
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
	@:overload @:public public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	/**
	* Invoked before the last copy of the pipeline is about to be discarded,
	* to give {@link Tube}s a chance to clean up any resources.
	*
	* <p>
	* This can be used to invoke {@link PreDestroy} lifecycle methods
	* on user handler. The invocation of it is optional on the client side,
	* but mandatory on the server side.
	*
	* <p>
	* When multiple copies of pipelines are created, this method is called
	* only on one of them.
	*
	* @throws WebServiceException
	*      If the clean up fails, {@link WebServiceException} can be thrown.
	*      This exception will be propagated to users (if this is client),
	*      or recorded (if this is server.)
	*/
	@:overload public function preDestroy() : Void;
	
	/**
	* Creates an identical clone of this {@link Tube}.
	*
	* <p>
	* This method creates an identical pipeline that can be used
	* concurrently with this pipeline. When the caller of a pipeline
	* is multi-threaded and need concurrent use of the same pipeline,
	* it can do so by creating copies through this method.
	*
	* <h3>Implementation Note</h3>
	* <p>
	* It is the implementation's responsibility to call
	* {@link TubeCloner#add(Tube,Tube)} to register the copied pipe
	* with the original. This is required before you start copying
	* the other {@link Tube} references you have, or else there's a
	* risk of infinite recursion.
	* <p>
	* For most {@link Tube} implementations that delegate to another
	* {@link Tube}, this method requires that you also copy the {@link Tube}
	* that you delegate to.
	* <p>
	* For limited number of {@link Tube}s that do not maintain any
	* thread unsafe resource, it is allowed to simply return <tt>this</tt>
	* from this method (notice that even if you are stateless, if you
	* got a delegating {@link Tube} and that one isn't stateless, you
	* still have to copy yourself.)
	*
	* <p>
	* Note that this method might be invoked by one thread while another
	* thread is executing the other process method. See
	* the {@link Codec#copy()} for more discussion about this.
	*
	* @param cloner
	*      Use this object (in particular its {@link TubeCloner#copy(Tube)} method
	*      to clone other pipe references you have
	*      in your pipe. See {@link TubeCloner} for more discussion
	*      about why.
	*
	* @return
	*      always non-null {@link Tube}.
	* @param cloner
	*/
	@:overload public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : com.sun.xml.internal.ws.api.pipe.Tube;
	
	
}
