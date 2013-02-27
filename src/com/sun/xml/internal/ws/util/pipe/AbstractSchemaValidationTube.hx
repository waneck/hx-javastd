package com.sun.xml.internal.ws.util.pipe;
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
extern class AbstractSchemaValidationTube extends com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl
{
	private var binding(default, null) : com.sun.xml.internal.ws.api.WSBinding;
	
	private var feature(default, null) : com.sun.xml.internal.ws.developer.SchemaValidationFeature;
	
	private var resolver(default, null) : com.sun.xml.internal.ws.api.server.DocumentAddressResolver;
	
	private var sf(default, null) : javax.xml.validation.SchemaFactory;
	
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	@:overload private function new(that : AbstractSchemaValidationTube, cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : Void;
	
	@:overload @:abstract private function getValidator() : javax.xml.validation.Validator;
	
	@:overload @:abstract private function isNoValidation() : Bool;
	
	/*
	* Using the following algorithm described in the xerces discussion thread:
	*
	* "If you're synthesizing schema documents to glue together the ones in
	* the WSDL then you may not even need to use "honour-all-schemaLocations".
	* Create a schema document for each namespace with <xs:include>s
	* (for each schema document in the WSDL with that target namespace)
	* and then combine those together with <xs:import>s for each of those
	* namespaces in a "master" schema document.
	*
	* That should work with any schema processor, not just those which
	* honour multiple imports for the same namespace."
	*/
	@:overload private function getSchemaSources(docs : java.lang.Iterable<com.sun.xml.internal.ws.api.server.SDDocument>, mdresolver : AbstractSchemaValidationTube_MetadataResolverImpl) : java.NativeArray<javax.xml.transform.Source>;
	
	@:overload private function doProcess(packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$util$pipe$AbstractSchemaValidationTube$ValidationDocumentAddressResolver') @:internal extern class AbstractSchemaValidationTube_ValidationDocumentAddressResolver implements com.sun.xml.internal.ws.api.server.DocumentAddressResolver
{
	@:overload public function getRelativeAddressFor(current : com.sun.xml.internal.ws.api.server.SDDocument, referenced : com.sun.xml.internal.ws.api.server.SDDocument) : String;
	
	
}
@:native('com$sun$xml$internal$ws$util$pipe$AbstractSchemaValidationTube$MetadataResolverImpl') extern class AbstractSchemaValidationTube_MetadataResolverImpl implements com.sun.xml.internal.ws.wsdl.SDDocumentResolver implements org.w3c.dom.ls.LSResourceResolver
{
	@:overload public function new() : Void;
	
	@:overload public function new(it : java.lang.Iterable<com.sun.xml.internal.ws.api.server.SDDocument>) : Void;
	
	@:overload public function resolve(systemId : String) : com.sun.xml.internal.ws.api.server.SDDocument;
	
	@:overload public function resolveResource(type : String, namespaceURI : String, publicId : String, systemId : String, baseURI : String) : org.w3c.dom.ls.LSInput;
	
	
}
