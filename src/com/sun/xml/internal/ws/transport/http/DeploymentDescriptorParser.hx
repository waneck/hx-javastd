package com.sun.xml.internal.ws.transport.http;
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
extern class DeploymentDescriptorParser<A>
{
	/**
	*
	* @param cl
	*      Used to load service implementations.
	* @param loader
	*      Used to locate resources, in particular WSDL.
	* @param container
	*      Optional {@link Container} that {@link WSEndpoint}s receive.
	* @param adapterFactory
	*      Creates {@link HttpAdapter} (or its derived class.)
	*/
	@:overload public function new(cl : java.lang.ClassLoader, loader : com.sun.xml.internal.ws.transport.http.ResourceLoader, container : com.sun.xml.internal.ws.api.server.Container, adapterFactory : DeploymentDescriptorParser_AdapterFactory<A>) : Void;
	
	/**
	* Parses the {@code sun-jaxws.xml} file and configures
	* a set of {@link HttpAdapter}s.
	*/
	@:overload public function parse(systemId : String, is : java.io.InputStream) : java.util.List<A>;
	
	/**
	* Parses the {@code sun-jaxws.xml} file and configures
	* a set of {@link HttpAdapter}s.
	*/
	@:overload public function parse(f : java.io.File) : java.util.List<A>;
	
	/**
	* JSR-109 defines short-form tokens for standard binding Ids. These are
	* used only in DD. So stand alone deployment descirptor should also honor
	* these tokens. This method converts the tokens to API's standard
	* binding ids
	*
	* @param lexical binding attribute value from DD. Always not null
	*
	* @return returns corresponding API's binding ID or the same lexical
	*/
	@:overload public static function getBindingIdForToken(lexical : String) : String;
	
	@:overload private function getAttribute(attrs : com.sun.xml.internal.ws.streaming.Attributes, name : String) : String;
	
	@:overload private function getQNameAttribute(attrs : com.sun.xml.internal.ws.streaming.Attributes, name : String) : javax.xml.namespace.QName;
	
	@:overload private function getNonEmptyAttribute(reader : javax.xml.stream.XMLStreamReader, attrs : com.sun.xml.internal.ws.streaming.Attributes, name : String) : String;
	
	@:overload private function getMandatoryAttribute(reader : javax.xml.stream.XMLStreamReader, attrs : com.sun.xml.internal.ws.streaming.Attributes, name : String) : String;
	
	@:overload private function getMandatoryNonEmptyAttribute(reader : javax.xml.stream.XMLStreamReader, attributes : com.sun.xml.internal.ws.streaming.Attributes, name : String) : String;
	
	/**
	* Parses the handler and role information and sets it
	* on the {@link WSBinding}.
	* @return true if <handler-chains> element present in DD
	*         false otherwise.
	*/
	@:overload private function setHandlersAndRoles(binding : com.sun.xml.internal.ws.api.WSBinding, reader : javax.xml.stream.XMLStreamReader, serviceName : javax.xml.namespace.QName, portName : javax.xml.namespace.QName) : Bool;
	
	@:overload private static function ensureNoContent(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload private static function fail(key : String, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload private static function failWithFullName(key : String, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload private static function failWithLocalName(key : String, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload private static function failWithLocalName(key : String, reader : javax.xml.stream.XMLStreamReader, arg : String) : Void;
	
	@:overload private function loadClass(name : String) : Class<Dynamic>;
	
	public static var NS_RUNTIME(default, null) : String;
	
	public static var JAXWS_WSDL_DD_DIR(default, null) : String;
	
	public static var QNAME_ENDPOINTS(default, null) : javax.xml.namespace.QName;
	
	public static var QNAME_ENDPOINT(default, null) : javax.xml.namespace.QName;
	
	public static var ATTR_VERSION(default, null) : String;
	
	public static var ATTR_NAME(default, null) : String;
	
	public static var ATTR_IMPLEMENTATION(default, null) : String;
	
	public static var ATTR_WSDL(default, null) : String;
	
	public static var ATTR_SERVICE(default, null) : String;
	
	public static var ATTR_PORT(default, null) : String;
	
	public static var ATTR_URL_PATTERN(default, null) : String;
	
	public static var ATTR_ENABLE_MTOM(default, null) : String;
	
	public static var ATTR_MTOM_THRESHOLD_VALUE(default, null) : String;
	
	public static var ATTR_BINDING(default, null) : String;
	
	public static var ATTRVALUE_VERSION_1_0(default, null) : String;
	
	
}
/**
* Creates a new "Adapter".
*
* <P>
* Normally 'A' would be {@link HttpAdapter} or some derived class.
* But the parser doesn't require that to be of any particular type.
*/
@:native('com$sun$xml$internal$ws$transport$http$DeploymentDescriptorParser$AdapterFactory') extern interface DeploymentDescriptorParser_AdapterFactory<A>
{
	@:overload public function createAdapter(name : String, urlPattern : String, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : A;
	
	
}
