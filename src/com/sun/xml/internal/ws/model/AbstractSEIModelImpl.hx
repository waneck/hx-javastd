package com.sun.xml.internal.ws.model;
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
extern class AbstractSEIModelImpl implements com.sun.xml.internal.ws.api.model.SEIModel
{
	/**
	* model of the web service.  Used by the runtime marshall/unmarshall
	* web service invocations
	*
	* @author JAXWS Development Team
	*/
	@:overload private function new(features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	/**
	* Link {@link SEIModel} to {@link WSDLModel}.
	* Merge it with {@link #postProcess()}.
	*/
	@:overload public function freeze(port : com.sun.xml.internal.ws.model.wsdl.WSDLPortImpl) : Void;
	
	/**
	* Populate methodToJM and nameToJM maps.
	*/
	@:overload @:abstract private function populateMaps() : Void;
	
	@:overload public function getMarshallerPool() : com.sun.xml.internal.ws.util.Pool.Pool_Marshaller;
	
	/**
	* @return the <code>JAXBRIContext</code>
	*/
	@:overload public function getJAXBContext() : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	/**
	* @return the known namespaces from JAXBRIContext
	*/
	@:overload public function getKnownNamespaceURIs() : java.util.List<String>;
	
	/**
	* @return the <code>Bridge</code> for the <code>type</code>
	*/
	@:overload @:final public function getBridge(type : com.sun.xml.internal.bind.api.TypeReference) : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	/**
	* @return true if <code>name</code> is the name
	* of a known fault name for the <code>Method method</code>
	*/
	@:overload public function isKnownFault(name : javax.xml.namespace.QName, method : java.lang.reflect.Method) : Bool;
	
	/**
	* @return true if <code>ex</code> is a Checked Exception
	* for <code>Method m</code>
	*/
	@:overload public function isCheckedException(m : java.lang.reflect.Method, ex : Class<Dynamic>) : Bool;
	
	/**
	* @return the <code>JavaMethod</code> representing the <code>method</code>
	*/
	@:overload public function getJavaMethod(method : java.lang.reflect.Method) : com.sun.xml.internal.ws.model.JavaMethodImpl;
	
	/**
	* @return the <code>JavaMethod</code> associated with the
	* operation named name
	*/
	@:overload public function getJavaMethod(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.model.JavaMethodImpl;
	
	@:overload public function getJavaMethodForWsdlOperation(operationName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* @return the <code>QName</code> associated with the
	* JavaMethod jm.
	*
	* @deprecated
	*      Use {@link JavaMethod#getOperationName()}.
	*/
	@:overload public function getQNameForJM(jm : com.sun.xml.internal.ws.model.JavaMethodImpl) : javax.xml.namespace.QName;
	
	/**
	* @return a <code>Collection</code> of <code>JavaMethods</code>
	* associated with this <code>RuntimeModel</code>
	*/
	@:overload @:final public function getJavaMethods() : java.util.Collection<com.sun.xml.internal.ws.model.JavaMethodImpl>;
	
	@:overload public function getWSDLLocation() : String;
	
	@:overload public function getServiceQName() : javax.xml.namespace.QName;
	
	@:overload public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload public function getPortName() : javax.xml.namespace.QName;
	
	@:overload public function getPortTypeName() : javax.xml.namespace.QName;
	
	/**
	* This is the targetNamespace for the WSDL containing the PortType
	* definition
	*/
	@:overload public function getTargetNamespace() : String;
	
	@:overload public function getBoundPortTypeName() : javax.xml.namespace.QName;
	
	/**
	* Adds additional classes obtained from {@link XmlSeeAlso} annotation. In starting
	* from wsdl case these classes would most likely be JAXB ObjectFactory that references other classes.
	*/
	@:overload public function addAdditionalClasses(additionalClasses : java.NativeArray<Class<Dynamic>>) : Void;
	
	private var jaxbContext : com.sun.xml.internal.bind.api.JAXBRIContext;
	
	private var emptyBodyName(default, null) : javax.xml.namespace.QName;
	
	
}
