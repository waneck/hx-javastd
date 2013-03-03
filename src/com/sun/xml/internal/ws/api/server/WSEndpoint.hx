package com.sun.xml.internal.ws.api.server;
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
extern class WSEndpoint<T>
{
	/**
	* Gets the Endpoint's codec that is used to encode/decode {@link Message}s. This is a
	* copy of the master codec and it shouldn't be shared across two requests running
	* concurrently(unless it is stateless).
	*
	* @return codec to encode/decode
	*/
	@:overload @:public @:abstract public function createCodec() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	/**
	* Gets the application endpoint's serviceName. It could be got from DD or annotations
	*
	* @return same as wsdl:service QName if WSDL exists or generated
	*/
	@:overload @:public @:abstract public function getServiceName() : javax.xml.namespace.QName;
	
	/**
	* Gets the application endpoint's portName. It could be got from DD or annotations
	*
	* @return same as wsdl:port QName if WSDL exists or generated
	*/
	@:overload @:public @:abstract public function getPortName() : javax.xml.namespace.QName;
	
	/**
	* Gets the application endpoint {@link Class} that eventually serves the request.
	*
	* <p>
	* This is the same value given to the {@link #create} method.
	*/
	@:overload @:public @:abstract public function getImplementationClass() : Class<T>;
	
	/**
	* Represents the binding for which this {@link WSEndpoint}
	* is created for.
	*
	* @return
	*      always same object.
	*/
	@:overload @:public @:abstract public function getBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	/**
	* Gets the {@link Container} object.
	*
	* <p>
	* The components inside {@link WSEndpoint} uses this reference
	* to communicate with the hosting environment.
	*
	* @return
	*      always same object. If no "real" {@link Container} instance
	*      is given, {@link Container#NONE} will be returned.
	*/
	@:overload @:public @:abstract public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	/**
	* Gets the port that this endpoint is serving.
	*
	* <p>
	* A service is not required to have a WSDL, and when it doesn't,
	* this method returns null. Otherwise it returns an object that
	* describes the port that this {@link WSEndpoint} is serving.
	*
	* @return
	*      Possibly null, but always the same value.
	*/
	@:overload @:public @:abstract public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	/**
	* Set this {@link Executor} to run asynchronous requests using this executor.
	* This executor is set on {@link Engine} and must be set before
	* calling {@link #schedule(Packet,CompletionCallback) } and
	* {@link #schedule(Packet,CompletionCallback,FiberContextSwitchInterceptor)} methods.
	*
	* @param exec Executor to run async requests
	*/
	@:overload @:public @:abstract public function setExecutor(exec : java.util.concurrent.Executor) : Void;
	
	/**
	* This method takes a {@link Packet} that represents
	* a request, run it through a {@link Tube}line, eventually
	* pass it to the user implementation code, which produces
	* a reply, then run that through the tubeline again,
	* and eventually return it as a return value through {@link CompletionCallback}.
	*
	* <p>
	* This takes care of pooling of {@link Tube}lines and reuses
	* tubeline for requests. Same instance of tubeline is not used concurrently
	* for two requests.
	*
	* <p>
	* If the transport is capable of asynchronous execution, use this
	* instead of using {@link PipeHead#process}.
	*
	* <p>
	* Before calling this method, set the executor using {@link #setExecutor}. The
	* executor may used multiple times to run this request in a asynchronous fashion.
	* The calling thread will be returned immediately, and the callback will be
	* called in a different a thread.
	*
	* <p>
	* {@link Packet#transportBackChannel} should have the correct value, so that
	* one-way message processing happens correctly. {@link Packet#webServiceContextDelegate}
	* should have the correct value, so that some {@link WebServiceContext} methods correctly.
	*
	* @see {@link Packet#transportBackChannel}
	* @see {@link Packet#webServiceContextDelegate}
	*
	* @param request web service request
	* @param callback callback to get response packet
	*/
	@:overload @:public @:final public function schedule(request : com.sun.xml.internal.ws.api.message.Packet, _callback : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_CompletionCallback) : Void;
	
	/**
	* Schedule invocation of web service asynchronously.
	*
	* @see {@link #schedule(Packet, CompletionCallback)}
	*
	* @param request web service request
	* @param callback callback to get response packet(exception if there is one)
	* @param interceptor caller's interceptor to impose a context of execution
	*/
	@:overload @:public @:abstract public function schedule(request : com.sun.xml.internal.ws.api.message.Packet, _callback : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_CompletionCallback, interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Void;
	
	@:overload @:public public function process(request : com.sun.xml.internal.ws.api.message.Packet, _callback : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_CompletionCallback, interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Void;
	
	/**
	* Creates a new {@link PipeHead} to process
	* incoming requests.
	*
	* <p>
	* This is not a cheap operation. The caller is expected
	* to reuse the returned {@link PipeHead}. See
	* {@link WSEndpoint class javadoc} for details.
	*
	* @return
	*      A newly created {@link PipeHead} that's ready to serve.
	*/
	@:overload @:public @:abstract public function createPipeHead() : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_PipeHead;
	
	/**
	* Indicates that the {@link WSEndpoint} is about to be turned off,
	* and will no longer serve any packet anymore.
	*
	* <p>
	* This method needs to be invoked for the JAX-WS RI to correctly
	* implement some of the spec semantics (TODO: pointer.)
	* It's the responsibility of the code that hosts a {@link WSEndpoint}
	* to invoke this method.
	*
	* <p>
	* Once this method is called, the behavior is undefed for
	* all in-progress {@link PipeHead#process} methods (by other threads)
	* and future {@link PipeHead#process} method invocations.
	*/
	@:overload @:public @:abstract public function dispose() : Void;
	
	/**
	* Gets the description of the service.
	*
	* <p>
	* A description is a set of WSDL/schema and other documents that together
	* describes a service.
	* A service is not required to have a description, and when it doesn't,
	* this method returns null.
	*
	* @return
	*      Possibly null, always the same value under ordinary circumstances but
	*      may change if the endpoint is managed.
	*/
	@:overload @:public @:abstract public function getServiceDefinition() : com.sun.xml.internal.ws.api.server.ServiceDefinition;
	
	/**
	* Gets the list of {@link EndpointComponent} that are associated
	* with this endpoint.
	*
	* <p>
	* Components (such as codec, tube, handler, etc) who wish to provide
	* some service to other components in the endpoint can iterate the
	* registry and call its {@link EndpointComponent#getSPI(Class)} to
	* establish a private contract between components.
	* <p>
	* Components who wish to subscribe to such a service can add itself
	* to this set.
	*
	* @return
	*      always return the same set.
	*/
	@:overload @:public @:abstract public function getComponentRegistry() : java.util.Set<com.sun.xml.internal.ws.api.server.EndpointComponent>;
	
	/**
	* Gets the {@link com.sun.xml.internal.ws.api.model.SEIModel} that represents the relationship
	* between WSDL and Java SEI.
	*
	* <p>
	* This method returns a non-null value if and only if this
	* endpoint is ultimately serving an application through an SEI.
	*
	* @return
	*      maybe null. See above for more discussion.
	*      Always the same value.
	*/
	@:overload @:public @:abstract public function getSEIModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* Gives the PolicMap that captures the Policy for the endpoint
	*
	* @return PolicyMap
	*
	* @deprecated
	* Do not use this method as the PolicyMap API is not final yet and might change in next few months.
	*/
	@:overload @:public @:abstract public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	/**
	* Get the ManagedObjectManager for this endpoint.
	*/
	@:overload @:public @:abstract public function getManagedObjectManager() : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	/**
	* Close the ManagedObjectManager for this endpoint.
	* This is used by the Web Service Configuration Management system so that it
	* closes the MOM before it creates a new WSEndpoint.  Then it calls dispose
	* on the existing endpoint and then installs the new endpoint.
	* The call to dispose also calls closeManagedObjectManager, but is a noop
	* if that method has already been called.
	*/
	@:overload @:public @:abstract public function closeManagedObjectManager() : Void;
	
	/**
	* This is only needed to expose info for monitoring.
	*/
	@:overload @:public @:abstract public function getAssemblerContext() : com.sun.xml.internal.ws.api.pipe.ServerTubeAssemblerContext;
	
	/**
	* Creates an endpoint from deployment or programmatic configuration
	*
	* <p>
	* This method works like the following:
	* <ol>
	* <li>{@link ServiceDefinition} is modeleed from the given SEI type.
	* <li>{@link Invoker} that always serves <tt>implementationObject</tt> will be used.
	* </ol>
	* @param implType
	*      Endpoint class(not SEI). Enpoint class must have @WebService or @WebServiceProvider
	*      annotation.
	* @param processHandlerAnnotation
	*      Flag to control processing of @HandlerChain on Impl class
	*      if true, processes @HandlerChain on Impl
	*      if false, DD might have set HandlerChain no need to parse.
	* @param invoker
	*      Pass an object to invoke the actual endpoint object. If it is null, a default
	*      invoker is created using {@link InstanceResolver#createDefault}. Appservers
	*      could create its own invoker to do additional functions like transactions,
	*      invoking the endpoint through proxy etc.
	* @param serviceName
	*      Optional service name(may be from DD) to override the one given by the
	*      implementation class. If it is null, it will be derived from annotations.
	* @param portName
	*      Optional port name(may be from DD) to override the one given by the
	*      implementation class. If it is null, it will be derived from annotations.
	* @param container
	*      Allows technologies that are built on top of JAX-WS(such as WSIT) needs to
	*      negotiate private contracts between them and the container
	* @param binding
	*      JAX-WS implementation of {@link Binding}. This object can be created by
	*      {@link BindingID#createBinding()}. Usually the binding can be got from
	*      DD, {@link javax.xml.ws.BindingType}.
	*
	*
	* TODO: DD has a configuration for MTOM threshold.
	* Maybe we need something more generic so that other technologies
	* like Tango can get information from DD.
	*
	* TODO: does it really make sense for this to take EntityResolver?
	* Given that all metadata has to be given as a list anyway.
	*
	* @param primaryWsdl
	*      The {@link ServiceDefinition#getPrimary() primary} WSDL.
	*      If null, it'll be generated based on the SEI (if this is an SEI)
	*      or no WSDL is associated (if it's a provider.)
	*      TODO: shouldn't the implementation find this from the metadata list?
	* @param metadata
	*      Other documents that become {@link SDDocument}s. Can be null.
	* @param resolver
	*      Optional resolver used to de-reference resources referenced from
	*      WSDL. Must be null if the {@code url} is null.
	* @param isTransportSynchronous
	*      If the caller knows that the returned {@link WSEndpoint} is going to be
	*      used by a synchronous-only transport, then it may pass in <tt>true</tt>
	*      to allow the callee to perform an optimization based on that knowledge
	*      (since often synchronous version is cheaper than an asynchronous version.)
	*      This value is visible from {@link ServerTubeAssemblerContext#isSynchronous()}.
	*
	* @return newly constructed {@link WSEndpoint}.
	* @throws WebServiceException
	*      if the endpoint set up fails.
	*/
	@:overload @:public @:static public static function create<T>(implType : Class<T>, processHandlerAnnotation : Bool, invoker : com.sun.xml.internal.ws.api.server.Invoker, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, container : com.sun.xml.internal.ws.api.server.Container, binding : com.sun.xml.internal.ws.api.WSBinding, primaryWsdl : com.sun.xml.internal.ws.api.server.SDDocumentSource, metadata : java.util.Collection<com.sun.xml.internal.ws.api.server.SDDocumentSource>, resolver : org.xml.sax.EntityResolver, isTransportSynchronous : Bool) : com.sun.xml.internal.ws.api.server.WSEndpoint<T>;
	
	/**
	* Deprecated version that assumes <tt>isTransportSynchronous==false</tt>
	*/
	@:overload @:public @:static public static function create<T>(implType : Class<T>, processHandlerAnnotation : Bool, invoker : com.sun.xml.internal.ws.api.server.Invoker, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, container : com.sun.xml.internal.ws.api.server.Container, binding : com.sun.xml.internal.ws.api.WSBinding, primaryWsdl : com.sun.xml.internal.ws.api.server.SDDocumentSource, metadata : java.util.Collection<com.sun.xml.internal.ws.api.server.SDDocumentSource>, resolver : org.xml.sax.EntityResolver) : com.sun.xml.internal.ws.api.server.WSEndpoint<T>;
	
	/**
	* The same as
	* {@link #create(Class, boolean, Invoker, QName, QName, Container, WSBinding, SDDocumentSource, Collection, EntityResolver)}
	* except that this version takes an url of the <tt>jax-ws-catalog.xml</tt>.
	*
	* @param catalogUrl
	*      if not null, an {@link EntityResolver} is created from it and used.
	*      otherwise no resolution will be performed.
	*/
	@:overload @:public @:static public static function create<T>(implType : Class<T>, processHandlerAnnotation : Bool, invoker : com.sun.xml.internal.ws.api.server.Invoker, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, container : com.sun.xml.internal.ws.api.server.Container, binding : com.sun.xml.internal.ws.api.WSBinding, primaryWsdl : com.sun.xml.internal.ws.api.server.SDDocumentSource, metadata : java.util.Collection<com.sun.xml.internal.ws.api.server.SDDocumentSource>, catalogUrl : java.net.URL) : com.sun.xml.internal.ws.api.server.WSEndpoint<T>;
	
	/**
	* Gives the wsdl:service default name computed from the endpoint implementaiton class
	*/
	@:overload @:public @:static public static function getDefaultServiceName(endpointClass : Class<Dynamic>) : javax.xml.namespace.QName;
	
	/**
	* Gives the wsdl:service/wsdl:port default name computed from the endpoint implementaiton class
	*/
	@:overload @:public @:static public static function getDefaultPortName(serviceName : javax.xml.namespace.QName, endpointClass : Class<Dynamic>) : javax.xml.namespace.QName;
	
	
}
/**
* Callback to notify that jax-ws runtime has finished execution of a request
* submitted via schedule().
*/
@:native('com$sun$xml$internal$ws$api$server$WSEndpoint$CompletionCallback') extern interface WSEndpoint_CompletionCallback
{
	/**
	* Indicates that the jax-ws runtime has finished execution of a request
	* submitted via schedule().
	*
	* <p>
	* Since the JAX-WS RI runs asynchronously,
	* this method maybe invoked by a different thread
	* than any of the threads that started it or run a part of tubeline.
	*
	* @param response {@link Packet}
	*/
	@:overload public function onCompletion(response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}
/**
* Represents a resource local to a thread.
*
* See {@link WSEndpoint} class javadoc for more discussion about
* this.
*/
@:native('com$sun$xml$internal$ws$api$server$WSEndpoint$PipeHead') extern interface WSEndpoint_PipeHead
{
	/**
	* Processes a request and produces a reply.
	*
	* <p>
	* This method takes a {@link Packet} that represents
	* a request, run it through a {@link Tube}line, eventually
	* pass it to the user implementation code, which produces
	* a reply, then run that through the pipeline again,
	* and eventually return it as a return value.
	*
	* @param request
	*      Unconsumed {@link Packet} that represents
	*      a request.
	* @param wscd
	*      {@link WebServiceContextDelegate} to be set to {@link Packet}.
	*      (we didn't have to take this and instead just ask the caller to
	*      set to {@link Packet#webServiceContextDelegate}, but that felt
	*      too error prone.)
	* @param tbc
	*      {@link TransportBackChannel} to be set to {@link Packet}.
	*      See the {@code wscd} parameter javadoc for why this is a parameter.
	*      Can be null.
	* @return
	*      Unconsumed {@link Packet} that represents
	*      a reply to the request.
	*
	* @throws WebServiceException
	*      This method <b>does not</b> throw a {@link WebServiceException}.
	*      The {@link WSEndpoint} must always produce a fault {@link Message}
	*      for it.
	*
	* @throws RuntimeException
	*      A {@link RuntimeException} thrown from this method, including
	*      {@link WebServiceException}, must be treated as a bug in the
	*      code (including JAX-WS and all the pipe implementations), not
	*      an operator error by the user.
	*
	*      <p>
	*      Therefore, it should be recorded by the caller in a way that
	*      allows developers to fix a bug.
	*/
	@:overload public function process(request : com.sun.xml.internal.ws.api.message.Packet, wscd : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate, tbc : com.sun.xml.internal.ws.api.server.TransportBackChannel) : com.sun.xml.internal.ws.api.message.Packet;
	
	
}
