package com.sun.xml.internal.ws.spi;
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
extern class ProviderImpl extends javax.xml.ws.spi.Provider
{
	/**
	* Convenient singleton instance.
	*/
	@:public @:static @:final public static var INSTANCE(default, null) : com.sun.xml.internal.ws.spi.ProviderImpl;
	
	@:overload @:public override public function createEndpoint(bindingId : String, implementor : Dynamic) : javax.xml.ws.Endpoint;
	
	@:overload @:public override public function createServiceDelegate(wsdlDocumentLocation : java.net.URL, serviceName : javax.xml.namespace.QName, serviceClass : Class<Dynamic>) : javax.xml.ws.spi.ServiceDelegate;
	
	@:overload @:public override public function createServiceDelegate(wsdlDocumentLocation : java.net.URL, serviceName : javax.xml.namespace.QName, serviceClass : Class<Dynamic>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.spi.ServiceDelegate;
	
	@:overload @:public override public function createAndPublishEndpoint(address : String, implementor : Dynamic) : javax.xml.ws.Endpoint;
	
	@:overload @:public override public function createEndpoint(bindingId : String, implementor : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	@:overload @:public override public function createAndPublishEndpoint(address : String, implementor : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	@:overload @:public override public function createEndpoint(bindingId : String, implementorClass : Class<Dynamic>, invoker : javax.xml.ws.spi.Invoker, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Endpoint;
	
	@:overload @:public override public function readEndpointReference(eprInfoset : javax.xml.transform.Source) : javax.xml.ws.EndpointReference;
	
	@:overload @:public override public function getPort<T>(endpointReference : javax.xml.ws.EndpointReference, clazz : Class<T>, webServiceFeatures : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	@:overload @:public override public function createW3CEndpointReference(address : String, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, metadata : java.util.List<org.w3c.dom.Element>, wsdlDocumentLocation : String, referenceParameters : java.util.List<org.w3c.dom.Element>) : javax.xml.ws.wsaddressing.W3CEndpointReference;
	
	@:overload @:public override public function createW3CEndpointReference(address : String, interfaceName : javax.xml.namespace.QName, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, metadata : java.util.List<org.w3c.dom.Element>, wsdlDocumentLocation : String, referenceParameters : java.util.List<org.w3c.dom.Element>, elements : java.util.List<org.w3c.dom.Element>, attributes : java.util.Map<javax.xml.namespace.QName, String>) : javax.xml.ws.wsaddressing.W3CEndpointReference;
	
	
}
