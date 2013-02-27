package com.sun.xml.internal.ws.wsdl.parser;
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
extern class RuntimeWSDLParser
{
	/**
	* Parses the WSDL and gives WSDLModel. If wsdl parameter is null, then wsdlLoc is used to get the WSDL. If the WSDL
	* document could not be obtained then {@link MetadataResolverFactory} is tried to get the WSDL document, if not found
	* then as last option, if the wsdlLoc has no '?wsdl' as query parameter then it is tried by appending '?wsdl'.
	*
	* @param wsdlLoc
	*      Either this or <tt>wsdl</tt> parameter must be given.
	*      Null location means the system won't be able to resolve relative references in the WSDL,
	*/
	@:overload public static function parse(wsdlLoc : java.net.URL, wsdlSource : javax.xml.transform.Source, resolver : org.xml.sax.EntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	/**
	* Parses the WSDL and gives WSDLModel. If wsdl parameter is null, then wsdlLoc is used to get the WSDL. If the WSDL
	* document could not be obtained then {@link MetadataResolverFactory} is tried to get the WSDL document, if not found
	* then as last option, if the wsdlLoc has no '?wsdl' as query parameter then it is tried by appending '?wsdl'.
	*
	* @param wsdlLoc
	*      Either this or <tt>wsdl</tt> parameter must be given.
	*      Null location means the system won't be able to resolve relative references in the WSDL,
	*/
	@:overload public static function parse(wsdlLoc : java.net.URL, wsdlSource : javax.xml.transform.Source, resolver : org.xml.sax.EntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, policyResolver : com.sun.xml.internal.ws.api.policy.PolicyResolver, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	@:overload public static function parse(wsdl : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser, resolver : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, policyResolver : com.sun.xml.internal.ws.api.policy.PolicyResolver, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	@:overload public static function parse(wsdl : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver.XMLEntityResolver_Parser, resolver : com.sun.xml.internal.ws.api.wsdl.parser.XMLEntityResolver, isClientSide : Bool, container : com.sun.xml.internal.ws.api.server.Container, extensions : java.NativeArray<com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension>) : com.sun.xml.internal.ws.model.wsdl.WSDLModelImpl;
	
	@:overload private function parseImport(baseURL : java.net.URL, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$wsdl$parser$RuntimeWSDLParser$BindingMode') privateextern enum RuntimeWSDLParser_BindingMode
{
	INPUT;
	OUTPUT;
	FAULT;
	
}

