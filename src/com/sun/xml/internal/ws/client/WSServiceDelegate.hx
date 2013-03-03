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
extern class WSServiceDelegate extends com.sun.xml.internal.ws.api.WSService
{
	@:overload @:public public function new(wsdlDocumentLocation : java.net.URL, serviceName : javax.xml.namespace.QName, serviceClass : Class<javax.xml.ws.Service>) : Void;
	
	/**
	* @param serviceClass
	*      Either {@link Service}.class or other generated service-derived classes.
	*/
	@:overload @:public public function new(wsdl : javax.xml.transform.Source, serviceName : javax.xml.namespace.QName, serviceClass : Class<javax.xml.ws.Service>) : Void;
	
	@:overload @:public override public function getExecutor() : java.util.concurrent.Executor;
	
	@:overload @:public override public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	@:overload @:public override public function getHandlerResolver() : javax.xml.ws.handler.HandlerResolver;
	
	@:overload @:public override public function setHandlerResolver(resolver : javax.xml.ws.handler.HandlerResolver) : Void;
	
	@:overload @:public override public function getPort<T>(portName : javax.xml.namespace.QName, portInterface : Class<T>) : T;
	
	@:overload @:public override public function getPort<T>(portName : javax.xml.namespace.QName, portInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	@:overload @:public override public function getPort<T>(epr : javax.xml.ws.EndpointReference, portInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	@:overload @:public override public function getPort<T>(wsepr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, portInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	@:overload @:public override public function getPort<T>(portInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	@:overload @:public override public function getPort<T>(portInterface : Class<T>) : T;
	
	@:overload @:public override public function addPort(portName : javax.xml.namespace.QName, bindingId : String, endpointAddress : String) : Void;
	
	@:overload @:public override public function createDispatch<T>(portName : javax.xml.namespace.QName, aClass : Class<T>, mode : javax.xml.ws.Service.Service_Mode) : javax.xml.ws.Dispatch<T>;
	
	@:overload @:public override public function createDispatch<T>(portName : javax.xml.namespace.QName, wsepr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, aClass : Class<T>, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<T>;
	
	@:overload @:public override public function createDispatch<T>(portName : javax.xml.namespace.QName, aClass : Class<T>, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<T>;
	
	@:overload @:public override public function createDispatch<T>(endpointReference : javax.xml.ws.EndpointReference, type : Class<T>, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<T>;
	
	/**
	* Obtains {@link PortInfo} for the given name, with error check.
	*/
	@:overload @:public public function safeGetPort(portName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.client.PortInfo;
	
	@:overload @:public public function getEndpointAddress(qName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.EndpointAddress;
	
	@:overload @:public override public function createDispatch(portName : javax.xml.namespace.QName, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode) : javax.xml.ws.Dispatch<Dynamic>;
	
	@:overload @:public override public function createDispatch(portName : javax.xml.namespace.QName, wsepr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<Dynamic>;
	
	@:overload @:public override public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	@:overload @:public override public function createDispatch(portName : javax.xml.namespace.QName, jaxbContext : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, webServiceFeatures : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<Dynamic>;
	
	@:overload @:public override public function createDispatch(endpointReference : javax.xml.ws.EndpointReference, context : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<Dynamic>;
	
	@:overload @:public override public function getServiceName() : javax.xml.namespace.QName;
	
	@:overload @:protected private function getServiceClass() : Class<Dynamic>;
	
	@:overload @:public override public function getPorts() : java.util.Iterator<javax.xml.namespace.QName>;
	
	@:overload @:public override public function getWSDLDocumentLocation() : java.net.URL;
	
	@:overload @:public public function getWsdlService() : com.sun.xml.internal.ws.model.wsdl.WSDLServiceImpl;
	
	
}
@:native('com$sun$xml$internal$ws$client$WSServiceDelegate$DaemonThreadFactory') @:internal extern class WSServiceDelegate_DaemonThreadFactory implements java.util.concurrent.ThreadFactory
{
	@:overload @:public public function newThread(r : java.lang.Runnable) : java.lang.Thread;
	
	
}
