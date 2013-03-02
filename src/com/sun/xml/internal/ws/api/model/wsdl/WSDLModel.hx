package com.sun.xml.internal.ws.api.model.wsdl;
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
extern interface WSDLModel extends com.sun.xml.internal.ws.api.model.wsdl.WSDLExtensible
{
	/**
	* Gets {@link WSDLPortType} that models <code>wsdl:portType</code>
	*
	* @param name non-null quaified name of wsdl:message, where the localName is the value of <code>wsdl:portType@name</code> and
	*             the namespaceURI is the value of wsdl:definitions@targetNamespace
	* @return A {@link com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType} or null if no wsdl:portType found.
	*/
	@:overload public function getPortType(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType;
	
	/**
	* Gets {@link WSDLBoundPortType} that models <code>wsdl:binding</code>
	*
	* @param name non-null quaified name of wsdl:binding, where the localName is the value of <code>wsdl:binding@name</code> and
	*             the namespaceURI is the value of wsdl:definitions@targetNamespace
	* @return A {@link WSDLBoundPortType} or null if no wsdl:binding found
	*/
	@:overload public function getBinding(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType;
	
	/**
	* Give a {@link WSDLBoundPortType} for the given wsdl:service and wsdl:port names.
	*
	* @param serviceName service QName
	* @param portName    port QName
	* @return A {@link WSDLBoundPortType}. null if the Binding for the given wsd:service and wsdl:port name are not
	*         found.
	*/
	@:overload public function getBinding(serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType;
	
	/**
	* Gets {@link WSDLService} that models <code>wsdl:service</code>
	*
	* @param name non-null quaified name of wsdl:service, where the localName is the value of <code>wsdl:service@name</code> and
	*             the namespaceURI is the value of wsdl:definitions@targetNamespace
	* @return A {@link WSDLService} or null if no wsdl:service found
	*/
	@:overload public function getService(name : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.model.wsdl.WSDLService;
	
	/**
	* Gives a {@link Map} of wsdl:portType {@link QName} and {@link WSDLPortType}
	*
	* @return an empty Map if the wsdl document has no wsdl:portType
	*/
	@:overload public function getPortTypes() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType>;
	
	/**
	* Gives a {@link Map} of wsdl:binding {@link QName} and {@link WSDLBoundPortType}
	*
	* @return an empty Map if the wsdl document has no wsdl:binding
	*/
	@:overload public function getBindings() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType>;
	
	/**
	* Gives a {@link Map} of wsdl:service qualified name and {@link com.sun.xml.internal.ws.api.model.wsdl.WSDLService}
	*
	* @return an empty Map if the wsdl document has no wsdl:service
	*/
	@:overload public function getServices() : java.util.Map<javax.xml.namespace.QName, com.sun.xml.internal.ws.api.model.wsdl.WSDLService>;
	
	/**
	* Gives the PolicyMap associated with the WSDLModel
	*
	* @return PolicyMap
	*
	* @deprecated
	* Do not use this method as the PolicyMap API is not final yet and might change in next few months.
	*/
	@:overload public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	
}
/**
* Main purpose of this class is to  parsing of a WSDL and get the {@link WSDLModel} from it.
*/
@:native('com$sun$xml$internal$ws$api$model$wsdl$WSDLModel$WSDLParser') extern class WSDLModel_WSDLParser
{
	/**
	* Parses WSDL from the given wsdlLoc and gives a {@link WSDLModel} built from it.
	*
	* @param wsdlEntityParser  Works like an entityResolver to resolve WSDLs
	* @param resolver  {@link XMLEntityResolver}, works at XML infoset level
	* @param isClientSide  true - its invoked on the client, false means its invoked on the server
	* @param extensions var args of {@link com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension}s
	* @return A {@link WSDLModel} built from the given wsdlLocation}
	* @throws java.io.IOException
	* @throws javax.xml.stream.XMLStreamException
	* @throws org.xml.sax.SAXException
	*/
	@:overload public static function parse(wsdlEntityParser : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser, resolver : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver, isClientSide : Bool, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.api.model.wsdl.WSDLModel;
	
	/**
	* Parses WSDL from the given wsdlLoc and gives a {@link WSDLModel} built from it.
	*
	* @param wsdlEntityParser  Works like an entityResolver to resolve WSDLs
	* @param resolver  {@link XMLEntityResolver}, works at XML infoset level
	* @param isClientSide  true - its invoked on the client, false means its invoked on the server
	* @param container - container in which the parser is run
	* @param extensions var args of {@link com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension}s
	* @return A {@link WSDLModel} built from the given wsdlLocation}
	* @throws java.io.IOException
	* @throws javax.xml.stream.XMLStreamException
	* @throws org.xml.sax.SAXException
	*/
	@:overload public static function parse(wsdlEntityParser : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser, resolver : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.api.model.wsdl.WSDLModel;
	
	/**
	* Parses WSDL from the given wsdlLoc and gives a {@link WSDLModel} built from it.
	*
	* @param wsdlEntityParser  Works like an entityResolver to resolve WSDLs
	* @param resolver  {@link XMLEntityResolver}, works at XML infoset level
	* @param isClientSide  true - its invoked on the client, false means its invoked on the server
	* @param container - container in which the parser is run
	* @param policyResolver - PolicyResolver for resolving effective Policy
	* @param extensions var args of {@link com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension}s
	* @return A {@link WSDLModel} built from the given wsdlLocation}
	* @throws java.io.IOException
	* @throws javax.xml.stream.XMLStreamException
	* @throws org.xml.sax.SAXException
	*/
	@:overload public static function parse(wsdlEntityParser : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser, resolver : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, policyResolver : com.sun.xml.internal.ws.api.policy.PolicyResolver, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.api.model.wsdl.WSDLModel;
	
	
}
