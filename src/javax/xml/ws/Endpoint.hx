package javax.xml.ws;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Endpoint
{
	/** Standard property: name of WSDL service.
	*  <p>Type: javax.xml.namespace.QName
	**/
	@:public @:static @:final public static var WSDL_SERVICE(default, null) : String;
	
	/** Standard property: name of WSDL port.
	*  <p>Type: javax.xml.namespace.QName
	**/
	@:public @:static @:final public static var WSDL_PORT(default, null) : String;
	
	/**
	* Creates an endpoint with the specified implementor object. If there is
	* a binding specified via a BindingType annotation then it MUST be used else
	* a default of SOAP 1.1 / HTTP binding MUST be used.
	* <p>
	* The newly created endpoint may be published by calling
	* one of the {@link javax.xml.ws.Endpoint#publish(String)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods.
	*
	*
	* @param implementor The endpoint implementor.
	*
	* @return The newly created endpoint.
	*
	**/
	@:overload @:public @:static public static function create(implementor : Dynamic) : javax.xml.ws.Endpoint;
	
	/**
	* Creates an endpoint with the specified implementor object and web
	* service features. If there is a binding specified via a BindingType
	* annotation then it MUST be used else a default of SOAP 1.1 / HTTP
	* binding MUST be used.
	* <p>
	* The newly created endpoint may be published by calling
	* one of the {@link javax.xml.ws.Endpoint#publish(String)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods.
	*
	*
	* @param implementor The endpoint implementor.
	* @param features A list of WebServiceFeature to configure on the
	*        endpoint. Supported features not in the <code>features
	*        </code> parameter will have their default values.
	*
	*
	* @return The newly created endpoint.
	* @since JAX-WS 2.2
	*
	*/
	@:require(java2) @:overload @:public @:static public static function create(implementor : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	/**
	* Creates an endpoint with the specified binding type and
	* implementor object.
	* <p>
	* The newly created endpoint may be published by calling
	* one of the {@link javax.xml.ws.Endpoint#publish(String)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods.
	*
	* @param bindingId A URI specifying the binding to use. If the bindingID is
	* <code>null</code> and no binding is specified via a BindingType
	* annotation then a default SOAP 1.1 / HTTP binding MUST be used.
	*
	* @param implementor The endpoint implementor.
	*
	* @return The newly created endpoint.
	*
	**/
	@:overload @:public @:static public static function create(bindingId : String, implementor : Dynamic) : javax.xml.ws.Endpoint;
	
	/**
	* Creates an endpoint with the specified binding type,
	* implementor object, and web service features.
	* <p>
	* The newly created endpoint may be published by calling
	* one of the {@link javax.xml.ws.Endpoint#publish(String)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods.
	*
	* @param bindingId A URI specifying the binding to use. If the bindingID is
	* <code>null</code> and no binding is specified via a BindingType
	* annotation then a default SOAP 1.1 / HTTP binding MUST be used.
	*
	* @param implementor The endpoint implementor.
	*
	* @param features A list of WebServiceFeature to configure on the
	*        endpoint. Supported features not in the <code>features
	*        </code> parameter will have their default values.
	*
	* @return The newly created endpoint.
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public @:static public static function create(bindingId : String, implementor : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	/**
	* Returns the binding for this endpoint.
	*
	* @return The binding for this endpoint
	**/
	@:overload @:public @:abstract public function getBinding() : javax.xml.ws.Binding;
	
	/**
	* Returns the implementation object for this endpoint.
	*
	* @return The implementor for this endpoint
	**/
	@:overload @:public @:abstract public function getImplementor() : Dynamic;
	
	/**
	* Publishes this endpoint at the given address.
	* The necessary server infrastructure will be created and
	* configured by the JAX-WS implementation using some default configuration.
	* In order to get more control over the server configuration, please
	* use the {@link javax.xml.ws.Endpoint#publish(Object)} method instead.
	*
	* @param address A URI specifying the address to use. The address
	*        MUST be compatible with the binding specified at the
	*        time the endpoint was created.
	*
	* @throws java.lang.IllegalArgumentException
	*          If the provided address URI is not usable
	*          in conjunction with the endpoint's binding.
	*
	* @throws java.lang.IllegalStateException
	*          If the endpoint has been published already or it has been stopped.
	*
	* @throws java.lang.SecurityException
	*          If a <code>java.lang.SecurityManger</code>
	*          is being used and the application doesn't have the
	*          <code>WebServicePermission("publishEndpoint")</code> permission.
	**/
	@:overload @:public @:abstract public function publish(address : String) : Void;
	
	/**
	* Creates and publishes an endpoint for the specified implementor
	* object at the given address.
	* <p>
	* The necessary server infrastructure will be created and
	* configured by the JAX-WS implementation using some default configuration.
	*
	* In order to get more control over the server configuration, please
	* use the {@link javax.xml.ws.Endpoint#create(String,Object)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods instead.
	*
	* @param address A URI specifying the address and transport/protocol
	*        to use. A http: URI MUST result in the SOAP 1.1/HTTP
	*        binding being used. Implementations may support other
	*        URI schemes.
	* @param implementor The endpoint implementor.
	*
	* @return The newly created endpoint.
	*
	* @throws java.lang.SecurityException
	*          If a <code>java.lang.SecurityManger</code>
	*          is being used and the application doesn't have the
	*          <code>WebServicePermission("publishEndpoint")</code> permission.
	*
	**/
	@:native('publish') @:overload @:public @:static public static function _publish(address : String, implementor : Dynamic) : javax.xml.ws.Endpoint;
	
	/**
	* Creates and publishes an endpoint for the specified implementor
	* object at the given address. The created endpoint is configured
	* with the web service features.
	* <p>
	* The necessary server infrastructure will be created and
	* configured by the JAX-WS implementation using some default configuration.
	*
	* In order to get more control over the server configuration, please
	* use the {@link javax.xml.ws.Endpoint#create(String,Object)} and
	* {@link javax.xml.ws.Endpoint#publish(Object)} methods instead.
	*
	* @param address A URI specifying the address and transport/protocol
	*        to use. A http: URI MUST result in the SOAP 1.1/HTTP
	*        binding being used. Implementations may support other
	*        URI schemes.
	* @param implementor The endpoint implementor.
	* @param features A list of WebServiceFeature to configure on the
	*        endpoint. Supported features not in the <code>features
	*        </code> parameter will have their default values.
	* @return The newly created endpoint.
	*
	* @throws java.lang.SecurityException
	*          If a <code>java.lang.SecurityManger</code>
	*          is being used and the application doesn't have the
	*          <code>WebServicePermission("publishEndpoint")</code> permission.
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:native('publish') @:overload @:public @:static public static function _publish(address : String, implementor : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	/**
	* Publishes this endpoint at the provided server context.
	* A server context encapsulates the server infrastructure
	* and addressing information for a particular transport.
	* For a call to this method to succeed, the server context
	* passed as an argument to it MUST be compatible with the
	* endpoint's binding.
	*
	* @param serverContext An object representing a server
	*           context to be used for publishing the endpoint.
	*
	* @throws java.lang.IllegalArgumentException
	*              If the provided server context is not
	*              supported by the implementation or turns
	*              out to be unusable in conjunction with the
	*              endpoint's binding.
	*
	* @throws java.lang.IllegalStateException
	*         If the endpoint has been published already or it has been stopped.
	*
	* @throws java.lang.SecurityException
	*          If a <code>java.lang.SecurityManger</code>
	*          is being used and the application doesn't have the
	*          <code>WebServicePermission("publishEndpoint")</code> permission.
	**/
	@:overload @:public @:abstract public function publish(serverContext : Dynamic) : Void;
	
	/**
	* Publishes this endpoint at the provided server context.
	* A server context encapsulates the server infrastructure
	* and addressing information for a particular transport.
	* For a call to this method to succeed, the server context
	* passed as an argument to it MUST be compatible with the
	* endpoint's binding.
	*
	* <p>
	* This is meant for container developers to publish the
	* the endpoints portably and not intended for the end
	* developers.
	*
	*
	* @param serverContext An object representing a server
	*           context to be used for publishing the endpoint.
	*
	* @throws java.lang.IllegalArgumentException
	*              If the provided server context is not
	*              supported by the implementation or turns
	*              out to be unusable in conjunction with the
	*              endpoint's binding.
	*
	* @throws java.lang.IllegalStateException
	*         If the endpoint has been published already or it has been stopped.
	*
	* @throws java.lang.SecurityException
	*          If a <code>java.lang.SecurityManger</code>
	*          is being used and the application doesn't have the
	*          <code>WebServicePermission("publishEndpoint")</code> permission.
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public public function publish(serverContext : javax.xml.ws.spi.http.HttpContext) : Void;
	
	/**
	* Stops publishing this endpoint.
	*
	* If the endpoint is not in a published state, this method
	* has no effect.
	*
	**/
	@:overload @:public @:abstract public function stop() : Void;
	
	/**
	* Returns true if the endpoint is in the published state.
	*
	* @return <code>true</code> if the endpoint is in the published state.
	**/
	@:overload @:public @:abstract public function isPublished() : Bool;
	
	/**
	* Returns a list of metadata documents for the service.
	*
	* @return <code>List&lt;javax.xml.transform.Source&gt;</code> A list of metadata documents for the service
	**/
	@:overload @:public @:abstract public function getMetadata() : java.util.List<javax.xml.transform.Source>;
	
	/**
	* Sets the metadata for this endpoint.
	*
	* @param metadata A list of XML document sources containing
	*           metadata information for the endpoint (e.g.
	*           WSDL or XML Schema documents)
	*
	* @throws java.lang.IllegalStateException  If the endpoint
	*         has already been published.
	**/
	@:overload @:public @:abstract public function setMetadata(metadata : java.util.List<javax.xml.transform.Source>) : Void;
	
	/**
	* Returns the executor for this <code>Endpoint</code>instance.
	*
	* The executor is used to dispatch an incoming request to
	* the implementor object.
	*
	* @return The <code>java.util.concurrent.Executor</code> to be
	*         used to dispatch a request.
	*
	* @see java.util.concurrent.Executor
	**/
	@:overload @:public @:abstract public function getExecutor() : java.util.concurrent.Executor;
	
	/**
	* Sets the executor for this <code>Endpoint</code> instance.
	*
	* The executor is used to dispatch an incoming request to
	* the implementor object.
	*
	* If this <code>Endpoint</code> is published using the
	* <code>publish(Object)</code> method and the specified server
	* context defines its own threading behavior, the executor
	* may be ignored.
	*
	* @param executor The <code>java.util.concurrent.Executor</code>
	*        to be used to dispatch a request.
	*
	* @throws SecurityException  If the instance does not support
	*         setting an executor for security reasons (e.g. the
	*         necessary permissions are missing).
	*
	* @see java.util.concurrent.Executor
	**/
	@:overload @:public @:abstract public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	/**
	* Returns the property bag for this <code>Endpoint</code> instance.
	*
	* @return Map&lt;String,Object&gt; The property bag
	*         associated with this instance.
	**/
	@:overload @:public @:abstract public function getProperties() : java.util.Map<String, Dynamic>;
	
	/**
	* Sets the property bag for this <code>Endpoint</code> instance.
	*
	* @param properties The property bag associated with
	*        this instance.
	**/
	@:overload @:public @:abstract public function setProperties(properties : java.util.Map<String, Dynamic>) : Void;
	
	/**
	* Returns the <code>EndpointReference</code> associated with
	* this <code>Endpoint</code> instance.
	* <p>
	* If the Binding for this <code>bindingProvider</code> is
	* either SOAP1.1/HTTP or SOAP1.2/HTTP, then a
	* <code>W3CEndpointReference</code> MUST be returned.
	*
	* @param referenceParameters Reference parameters to be associated with the
	* returned <code>EndpointReference</code> instance.
	* @return EndpointReference of this <code>Endpoint</code> instance.
	* If the returned <code>EndpointReference</code> is of type
	* <code>W3CEndpointReference</code> then it MUST contain the
	* the specified <code>referenceParameters</code>.

	* @throws WebServiceException If any error in the creation of
	* the <code>EndpointReference</code> or if the <code>Endpoint</code> is
	* not in the published state.
	* @throws UnsupportedOperationException If this <code>BindingProvider</code>
	* uses the XML/HTTP binding.
	*
	* @see W3CEndpointReference
	*
	* @since JAX-WS 2.1
	**/
	@:require(java1) @:overload @:public @:abstract public function getEndpointReference(referenceParameters : java.NativeArray<org.w3c.dom.Element>) : javax.xml.ws.EndpointReference;
	
	/**
	* Returns the <code>EndpointReference</code> associated with
	* this <code>Endpoint</code> instance.
	*
	* @param clazz Specifies the type of EndpointReference  that MUST be returned.
	* @param referenceParameters Reference parameters to be associated with the
	* returned <code>EndpointReference</code> instance.
	* @return EndpointReference of type <code>clazz</code> of this
	* <code>Endpoint</code> instance.
	* If the returned <code>EndpointReference</code> is of type
	* <code>W3CEndpointReference</code> then it MUST contain the
	* the specified <code>referenceParameters</code>.

	* @throws WebServiceException If any error in the creation of
	* the <code>EndpointReference</code> or if the <code>Endpoint</code> is
	* not in the published state or if the <code>clazz</code> is not a supported
	* <code>EndpointReference</code> type.
	* @throws UnsupportedOperationException If this <code>BindingProvider</code>
	* uses the XML/HTTP binding.
	*
	*
	* @since JAX-WS 2.1
	**/
	@:require(java1) @:overload @:public @:abstract public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, referenceParameters : java.NativeArray<org.w3c.dom.Element>) : T;
	
	/**
	* By settng a <code>EndpointContext</code>, JAX-WS runtime knows about
	* addresses of other endpoints in an application. If multiple endpoints
	* share different ports of a WSDL, then the multiple port addresses
	* are patched when the WSDL is accessed.
	*
	* <p>
	* This needs to be set before publishing the endpoints.
	*
	* @param ctxt that is shared for multiple endpoints
	* @throws java.lang.IllegalStateException
	*        If the endpoint has been published already or it has been stopped.
	*
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public public function setEndpointContext(ctxt : javax.xml.ws.EndpointContext) : Void;
	
	
}
