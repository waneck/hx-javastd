package com.sun.xml.internal.ws.handler;
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
extern class HandlerChainsModel
{
	@:overload public function getId() : String;
	
	@:overload public function setId(value : String) : Void;
	
	/**
	* reader should be on <handler-chains> element
	*/
	@:overload public static function parseHandlerConfigFile(annotatedClass : Class<Dynamic>, reader : javax.xml.stream.XMLStreamReader) : HandlerChainsModel;
	
	/**
	* <p>This method is called internally by HandlerAnnotationProcessor,
	* and by
	* {@link com.sun.xml.internal.ws.transport.http.DeploymentDescriptorParser}
	* directly when it reaches the handler chains element in the
	* descriptor file it is parsing.
	* @param reader should be on <handler-chains> element
	* @return A HandlerAnnotationInfo object that stores the
	* handlers and roles.
	*/
	@:overload public static function parseHandlerFile(reader : javax.xml.stream.XMLStreamReader, classLoader : java.lang.ClassLoader, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName, wsbinding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.util.HandlerAnnotationInfo;
	
	@:overload public function getHandlersForPortInfo(info : javax.xml.ws.handler.PortInfo) : com.sun.xml.internal.ws.util.HandlerAnnotationInfo;
	
	public static var PROTOCOL_SOAP11_TOKEN(default, null) : String;
	
	public static var PROTOCOL_SOAP12_TOKEN(default, null) : String;
	
	public static var PROTOCOL_XML_TOKEN(default, null) : String;
	
	public static var NS_109(default, null) : String;
	
	public static var QNAME_CHAIN_PORT_PATTERN(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_CHAIN_PROTOCOL_BINDING(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_CHAIN_SERVICE_PATTERN(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_CHAIN(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_CHAINS(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_NAME(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_CLASS(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_PARAM(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_PARAM_NAME(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_PARAM_VALUE(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_HEADER(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_HANDLER_ROLE(default, null) : javax.xml.namespace.QName;
	
	
}
@:native('com$sun$xml$internal$ws$handler$HandlerChainsModel$HandlerChainType') @:internal extern class HandlerChainsModel_HandlerChainType
{
	/** Creates a new instance of HandlerChain */
	@:overload public function new() : Void;
	
	@:overload public function setServiceNamePattern(value : javax.xml.namespace.QName) : Void;
	
	@:overload public function getServiceNamePattern() : javax.xml.namespace.QName;
	
	@:overload public function setPortNamePattern(value : javax.xml.namespace.QName) : Void;
	
	@:overload public function getPortNamePattern() : javax.xml.namespace.QName;
	
	@:overload public function getProtocolBindings() : java.util.List<String>;
	
	@:overload public function addProtocolBinding(tokenOrURI : String) : Void;
	
	@:overload public function isConstraintSet() : Bool;
	
	@:overload public function getId() : String;
	
	@:overload public function setId(value : String) : Void;
	
	@:overload public function getHandlers() : java.util.List<HandlerChainsModel_HandlerType>;
	
	
}
@:native('com$sun$xml$internal$ws$handler$HandlerChainsModel$HandlerType') @:internal extern class HandlerChainsModel_HandlerType
{
	/** Creates a new instance of HandlerComponent */
	@:overload public function new() : Void;
	
	@:overload public function getHandlerName() : String;
	
	@:overload public function setHandlerName(value : String) : Void;
	
	@:overload public function getHandlerClass() : String;
	
	@:overload public function setHandlerClass(value : String) : Void;
	
	@:overload public function getId() : String;
	
	@:overload public function setId(value : String) : Void;
	
	@:overload public function getSoapRoles() : java.util.List<String>;
	
	
}
