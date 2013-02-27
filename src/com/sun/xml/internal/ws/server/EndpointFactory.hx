package com.sun.xml.internal.ws.server;
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
extern class EndpointFactory
{
	/**
	* Implements {@link WSEndpoint#create}.
	*
	* No need to take WebServiceContext implementation. When InvokerPipe is
	* instantiated, it calls InstanceResolver to set up a WebServiceContext.
	* We shall only take delegate to getUserPrincipal and isUserInRole from adapter.
	*
	* <p>
	* Nobody else should be calling this method.
	*/
	@:overload public static function createEndpoint<T>(implType : Class<T>, processHandlerAnnotation : Bool, invoker : com.sun.xml.internal.ws.api.server.Invoker, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, container : com.sun.xml.internal.ws.api.server.Container, binding : com.sun.xml.internal.ws.api.WSBinding, primaryWsdl : com.sun.xml.internal.ws.api.server.SDDocumentSource, metadata : java.util.Collection<com.sun.xml.internal.ws.api.server.SDDocumentSource>, resolver : org.xml.sax.EntityResolver, isTransportSynchronous : Bool) : com.sun.xml.internal.ws.api.server.WSEndpoint<T>;
	
	/**
	* Verifies if the endpoint implementor class has @WebService or @WebServiceProvider
	* annotation
	*
	* @return
	*       true if it is a Provider or AsyncProvider endpoint
	*       false otherwise
	* @throws java.lang.IllegalArgumentException
	*      If it doesn't have any one of @WebService or @WebServiceProvider
	*      If it has both @WebService and @WebServiceProvider annotations
	*/
	@:overload public static function verifyImplementorClass(clz : Class<Dynamic>) : Bool;
	
	/**
	* If service name is not already set via DD or programmatically, it uses
	* annotations {@link WebServiceProvider}, {@link WebService} on implementorClass to get PortName.
	*
	* @return non-null service name
	*/
	@:overload public static function getDefaultServiceName(implType : Class<Dynamic>) : javax.xml.namespace.QName;
	
	/**
	* If portName is not already set via DD or programmatically, it uses
	* annotations on implementorClass to get PortName.
	*
	* @return non-null port name
	*/
	@:overload public static function getDefaultPortName(serviceName : javax.xml.namespace.QName, implType : Class<Dynamic>) : javax.xml.namespace.QName;
	
	/**
	* Returns the wsdl from @WebService, or @WebServiceProvider annotation using
	* wsdlLocation element.
	*
	* @param implType
	*      endpoint implementation class
	*      make sure that you called {@link #verifyImplementorClass} on it.
	* @return wsdl if there is wsdlLocation, else null
	*/
	@:overload public static function getWsdlLocation(implType : Class<Dynamic>) : String;
	
	
}
/**
* {@link XMLEntityResolver} that can resolve to {@link SDDocumentSource}s.
*/
@:native('com$sun$xml$internal$ws$server$EndpointFactory$EntityResolverImpl') @:internal extern class EndpointFactory_EntityResolverImpl implements com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver
{
	@:overload public function new(metadata : java.util.List<com.sun.xml.internal.ws.api.server.SDDocumentSource>) : Void;
	
	@:overload public function resolveEntity(publicId : String, systemId : String) : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser;
	
	
}
