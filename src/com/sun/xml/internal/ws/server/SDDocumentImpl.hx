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
extern class SDDocumentImpl extends com.sun.xml.internal.ws.api.server.SDDocumentSource implements com.sun.xml.internal.ws.api.server.SDDocument
{
	/**
	* Creates {@link SDDocument} from {@link SDDocumentSource}.
	* @param src WSDL document infoset
	* @param serviceName wsdl:service name
	* @param portTypeName
	*      The information about the port of {@link WSEndpoint} to which this document is built for.
	*      These values are used to determine which document is the concrete and abstract WSDLs
	*      for this endpoint.
	*
	* @return null
	*      Always non-null.
	*/
	@:overload public static function create(src : com.sun.xml.internal.ws.api.server.SDDocumentSource, serviceName : javax.xml.namespace.QName, portTypeName : javax.xml.namespace.QName) : SDDocumentImpl;
	
	@:overload private function new(rootName : javax.xml.namespace.QName, url : java.net.URL, source : com.sun.xml.internal.ws.api.server.SDDocumentSource) : Void;
	
	@:overload private function new(rootName : javax.xml.namespace.QName, url : java.net.URL, source : com.sun.xml.internal.ws.api.server.SDDocumentSource, imports : java.util.Set<String>) : Void;
	
	@:overload public function getRootName() : javax.xml.namespace.QName;
	
	@:overload public function isWSDL() : Bool;
	
	@:overload public function isSchema() : Bool;
	
	@:overload public function getURL() : java.net.URL;
	
	@:overload override public function read(xif : javax.xml.stream.XMLInputFactory) : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function read() : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function getSystemId() : java.net.URL;
	
	@:overload public function getImports() : java.util.Set<String>;
	
	@:overload public function writeTo(os : java.io.OutputStream) : Void;
	
	@:overload public function writeTo(portAddressResolver : com.sun.xml.internal.ws.api.server.PortAddressResolver, resolver : com.sun.xml.internal.ws.api.server.DocumentAddressResolver, os : java.io.OutputStream) : Void;
	
	@:overload public function writeTo(portAddressResolver : com.sun.xml.internal.ws.api.server.PortAddressResolver, resolver : com.sun.xml.internal.ws.api.server.DocumentAddressResolver, out : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
/**
* {@link SDDocument.Schema} implementation.
*
* @author Kohsuke Kawaguchi
*/
@:native('com$sun$xml$internal$ws$server$SDDocumentImpl$SchemaImpl') @:internal extern class SDDocumentImpl_SchemaImpl extends SDDocumentImpl implements com.sun.xml.internal.ws.api.server.SDDocument.SDDocument_Schema
{
	@:overload public function new(rootName : javax.xml.namespace.QName, url : java.net.URL, source : com.sun.xml.internal.ws.api.server.SDDocumentSource, targetNamespace : String, imports : java.util.Set<String>) : Void;
	
	@:overload public function getTargetNamespace() : String;
	
	@:overload override public function isSchema() : Bool;
	
	
}
@:native('com$sun$xml$internal$ws$server$SDDocumentImpl$WSDLImpl') @:internal extern class SDDocumentImpl_WSDLImpl extends SDDocumentImpl implements com.sun.xml.internal.ws.api.server.SDDocument.SDDocument_WSDL
{
	@:overload public function new(rootName : javax.xml.namespace.QName, url : java.net.URL, source : com.sun.xml.internal.ws.api.server.SDDocumentSource, targetNamespace : String, hasPortType : Bool, hasService : Bool, imports : java.util.Set<String>, allServices : java.util.Set<javax.xml.namespace.QName>) : Void;
	
	@:overload public function getTargetNamespace() : String;
	
	@:overload public function hasPortType() : Bool;
	
	@:overload public function hasService() : Bool;
	
	@:overload public function getAllServices() : java.util.Set<javax.xml.namespace.QName>;
	
	@:overload override public function isWSDL() : Bool;
	
	
}
@:native('com$sun$xml$internal$ws$server$SDDocumentImpl$DocumentLocationResolverImpl') @:internal extern class SDDocumentImpl_DocumentLocationResolverImpl implements com.sun.xml.internal.ws.wsdl.writer.DocumentLocationResolver
{
	@:overload public function getLocationFor(namespaceURI : String, systemId : String) : String;
	
	
}
