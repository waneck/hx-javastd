package com.sun.xml.internal.ws.api;
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
extern class WSService extends javax.xml.ws.spi.ServiceDelegate
{
	/**
	* JAX-WS implementation of {@link ServiceDelegate}.
	*
	* <p>
	* This abstract class is used only to improve the static type safety
	* of the JAX-WS internal API.
	*
	* <p>
	* The class name intentionally doesn't include "Delegate",
	* because the fact that it's a delegate is a detail of
	* the JSR-224 API, and for the layers above us this object
	* nevertheless represents {@link Service}. We want them
	* to think of this as an internal representation of a service.
	*
	* <p>
	* Only JAX-WS internal code may downcast this to {@link WSServiceDelegate}.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload private function new() : Void;
	
	/**
	* Works like {@link #getPort(EndpointReference, Class, WebServiceFeature...)}
	* but takes {@link WSEndpointReference}.
	*/
	@:overload @:abstract public function getPort<T>(epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, portInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	/**
	* Works like {@link #createDispatch(EndpointReference, Class, Mode, WebServiceFeature[])}
	* but it takes the port name separately, so that EPR without embedded metadata can be used.
	*/
	@:overload @:abstract public function createDispatch<T>(portName : javax.xml.namespace.QName, wsepr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, aClass : Class<T>, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<T>;
	
	/**
	* Works like {@link #createDispatch(EndpointReference, JAXBContext, Mode, WebServiceFeature[])}
	* but it takes the port name separately, so that EPR without embedded metadata can be used.
	*/
	@:overload @:abstract public function createDispatch(portName : javax.xml.namespace.QName, wsepr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<Dynamic>;
	
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
	@:overload @:abstract public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	/**
	* Create a <code>Service</code> instance.
	*
	* The specified WSDL document location and service qualified name MUST
	* uniquely identify a <code>wsdl:service</code> element.
	*
	* @param wsdlDocumentLocation URL for the WSDL document location
	*                             for the service
	* @param serviceName QName for the service
	* @throws WebServiceException If any error in creation of the
	*                    specified service.
	**/
	@:overload public static function create(wsdlDocumentLocation : java.net.URL, serviceName : javax.xml.namespace.QName) : WSService;
	
	/**
	* Create a <code>Service</code> instance.
	*
	* @param serviceName QName for the service
	* @throws WebServiceException If any error in creation of the
	*                    specified service
	*/
	@:overload public static function create(serviceName : javax.xml.namespace.QName) : WSService;
	
	/**
	* Creates a service with a dummy service name.
	*/
	@:overload public static function create() : WSService;
	
	/**
	* To create a {@link Service}, we need to go through the API that doesn't let us
	* pass parameters, so as a hack we use thread local.
	*/
	private static var INIT_PARAMS(default, null) : java.lang.ThreadLocal<WSService_InitParams>;
	
	/**
	* Used as a immutable constant so that we can avoid null check.
	*/
	private static var EMPTY_PARAMS(default, null) : WSService_InitParams;
	
	/**
	* Creates a {@link Service} instance.
	*
	* <p>
	* This method works really like {@link Service#create(URL, QName)}
	* except it takes one more RI specific parameter.
	*
	* @param wsdlDocumentLocation
	*          {@code URL} for the WSDL document location for the service.
	*          Can be null, in which case WSDL is not loaded.
	* @param serviceName
	*          {@code QName} for the service.
	* @param properties
	*          Additional RI specific initialization parameters. Can be null.
	* @throws WebServiceException
	*          If any error in creation of the specified service.
	**/
	@:overload public static function create(wsdlDocumentLocation : java.net.URL, serviceName : javax.xml.namespace.QName, properties : WSService_InitParams) : javax.xml.ws.Service;
	
	/**
	* Obtains the {@link WSService} that's encapsulated inside a {@link Service}.
	*
	* @throws IllegalArgumentException
	*      if the given service object is not from the JAX-WS RI.
	*/
	@:overload public static function unwrap(svc : javax.xml.ws.Service) : WSService;
	
	
}
/**
* Typed parameter bag used by {@link WSService#create(URL, QName, InitParams)}
*
* @since 2.1.3
*/
@:require(java1) @:native('com$sun$xml$internal$ws$api$WSService$InitParams') extern class WSService_InitParams
{
	/**
	* Sets the {@link Container} object used by the created service.
	* This allows the client to use a specific {@link Container} instance
	* as opposed to the one obtained by {@link ContainerResolver}.
	*/
	@:overload public function setContainer(c : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	@:overload public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	
}
