package com.sun.xml.internal.ws.client;
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
extern class Stub implements com.sun.xml.internal.ws.developer.WSBindingProvider implements com.sun.xml.internal.ws.client.ResponseContextReceiver
{
	/**
	* The {@link WSServiceDelegate} object that owns us.
	*/
	@:protected @:final private var owner(default, null) : com.sun.xml.internal.ws.client.WSServiceDelegate;
	
	/**
	* Non-null if this stub is configured to talk to an EPR.
	* <p>
	* When this field is non-null, its reference parameters are sent as out-bound headers.
	* This field can be null even when addressing is enabled, but if the addressing is
	* not enabled, this field must be null.
	* <p>
	* Unlike endpoint address, we are not letting users to change the EPR,
	* as it contains references to services and so on that we don't want to change.
	*/
	@:protected private var endpointReference : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	@:protected @:final private var binding(default, null) : com.sun.xml.internal.ws.binding.BindingImpl;
	
	@:protected @:final private var portInfo(default, null) : com.sun.xml.internal.ws.api.client.WSPortInfo;
	
	/**
	* represents AddressingVersion on binding if enabled, otherwise null;
	*/
	@:protected @:final private var addrVersion(default, null) : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	@:public @:final public var requestContext(default, null) : com.sun.xml.internal.ws.client.RequestContext;
	
	@:protected @:final private var wsdlPort(default, null) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:protected private var operationDispatcher : com.sun.xml.internal.ws.wsdl.OperationDispatcher;
	
	/**
	* @param master                 The created stub will send messages to this pipe.
	* @param binding                As a {@link BindingProvider}, this object will
	*                               return this binding from {@link BindingProvider#getBinding()}.
	* @param defaultEndPointAddress The destination of the message. The actual destination
	*                               could be overridden by {@link RequestContext}.
	* @param epr                    To create a stub that sends out reference parameters
	*                               of a specific EPR, give that instance. Otherwise null.
	*                               Its address field will not be used, and that should be given
	*                               separately as the <tt>defaultEndPointAddress</tt>.
	*/
	@:overload @:protected private function new(owner : com.sun.xml.internal.ws.client.WSServiceDelegate, master : com.sun.xml.internal.ws.api.pipe.Tube, binding : com.sun.xml.internal.ws.binding.BindingImpl, wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, defaultEndPointAddress : com.sun.xml.internal.ws.api.EndpointAddress, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	/**
	* @param portInfo               PortInfo  for this stub
	* @param binding                As a {@link BindingProvider}, this object will
	*                               return this binding from {@link BindingProvider#getBinding()}.
	* @param defaultEndPointAddress The destination of the message. The actual destination
	*                               could be overridden by {@link RequestContext}.
	* @param epr                    To create a stub that sends out reference parameters
	*                               of a specific EPR, give that instance. Otherwise null.
	*                               Its address field will not be used, and that should be given
	*                               separately as the <tt>defaultEndPointAddress</tt>.
	*/
	@:overload @:protected private function new(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.binding.BindingImpl, defaultEndPointAddress : com.sun.xml.internal.ws.api.EndpointAddress, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload @:public public function getPortInfo() : com.sun.xml.internal.ws.api.client.WSPortInfo;
	
	/**
	* Nullable when there is no associated WSDL Model
	* @return
	*/
	@:overload @:public public function getOperationDispatcher() : com.sun.xml.internal.ws.wsdl.OperationDispatcher;
	
	/**
	* Gets the port name that this stub is configured to talk to.
	* <p>
	* When {@link #wsdlPort} is non-null, the port name is always
	* the same as {@link WSDLPort#getName()}, but this method
	* returns a port name even if no WSDL is available for this stub.
	*/
	@:overload @:protected @:abstract private function getPortName() : javax.xml.namespace.QName;
	
	/**
	* Gets the service name that this stub is configured to talk to.
	* <p>
	* When {@link #wsdlPort} is non-null, the service name is always
	* the same as the one that's inferred from {@link WSDLPort#getOwner()},
	* but this method returns a port name even if no WSDL is available for
	* this stub.
	*/
	@:overload @:protected @:final private function getServiceName() : javax.xml.namespace.QName;
	
	/**
	* Gets the {@link Executor} to be used for asynchronous method invocations.
	* <p>
	* Note that the value this method returns may different from invocations
	* to invocations. The caller must not cache.
	*
	* @return always non-null.
	*/
	@:overload @:public @:final public function getExecutor() : java.util.concurrent.Executor;
	
	/**
	* Passes a message to a pipe for processing.
	* <p>
	* Unlike {@link Tube} instances,
	* this method is thread-safe and can be invoked from
	* multiple threads concurrently.
	*
	* @param packet         The message to be sent to the server
	* @param requestContext The {@link RequestContext} when this invocation is originally scheduled.
	*                       This must be the same object as {@link #requestContext} for synchronous
	*                       invocations, but for asynchronous invocations, it needs to be a snapshot
	*                       captured at the point of invocation, to correctly satisfy the spec requirement.
	* @param receiver       Receives the {@link ResponseContext}. Since the spec requires
	*                       that the asynchronous invocations must not update response context,
	*                       depending on the mode of invocation they have to go to different places.
	*                       So we take a setter that abstracts that away.
	*/
	@:overload @:protected @:final private function process(packet : com.sun.xml.internal.ws.api.message.Packet, requestContext : com.sun.xml.internal.ws.client.RequestContext, receiver : com.sun.xml.internal.ws.client.ResponseContextReceiver) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Passes a message through a {@link Tube}line for processing. The processing happens
	* asynchronously and when the response is available, Fiber.CompletionCallback is
	* called. The processing could happen on multiple threads.
	*
	* <p>
	* Unlike {@link Tube} instances,
	* this method is thread-safe and can be invoked from
	* multiple threads concurrently.
	*
	* @param request         The message to be sent to the server
	* @param requestContext The {@link RequestContext} when this invocation is originally scheduled.
	*                       This must be the same object as {@link #requestContext} for synchronous
	*                       invocations, but for asynchronous invocations, it needs to be a snapshot
	*                       captured at the point of invocation, to correctly satisfy the spec requirement.
	* @param completionCallback Once the processing is done, the callback is invoked.
	*/
	@:overload @:protected @:final private function processAsync(request : com.sun.xml.internal.ws.api.message.Packet, requestContext : com.sun.xml.internal.ws.client.RequestContext, completionCallback : com.sun.xml.internal.ws.api.pipe.Fiber.Fiber_CompletionCallback) : Void;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public @:final public function getBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload @:public @:final public function getRequestContext() : java.util.Map<String, Dynamic>;
	
	@:overload @:public @:final public function getResponseContext() : com.sun.xml.internal.ws.client.ResponseContext;
	
	@:overload @:public public function setResponseContext(rc : com.sun.xml.internal.ws.client.ResponseContext) : Void;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public @:final public function getWSEndpointReference() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	@:overload @:public @:final public function getEndpointReference() : javax.xml.ws.wsaddressing.W3CEndpointReference;
	
	@:overload @:public @:final public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>) : T;
	
	@:overload @:public public function getManagedObjectManager() : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	@:overload @:public @:final public function setOutboundHeaders(headers : java.util.List<com.sun.xml.internal.ws.api.message.Header>) : Void;
	
	@:overload @:public @:final public function setOutboundHeaders(headers : java.NativeArray<com.sun.xml.internal.ws.api.message.Header>) : Void;
	
	@:overload @:public @:final public function getInboundHeaders() : java.util.List<com.sun.xml.internal.ws.api.message.Header>;
	
	@:overload @:public @:final public function setAddress(address : String) : Void;
	
	
}
