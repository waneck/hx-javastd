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
@:internal extern class WSDLGenResolver implements com.sun.xml.internal.ws.wsdl.writer.WSDLResolver
{
	@:overload public function new(docs : java.util.List<com.sun.xml.internal.ws.server.SDDocumentImpl>, serviceName : javax.xml.namespace.QName, portTypeName : javax.xml.namespace.QName) : Void;
	
	/**
	* Generates the concrete WSDL that contains service element.
	*
	* @return Result the generated concrete WSDL
	*/
	@:overload public function getWSDL(filename : String) : javax.xml.transform.Result;
	
	/**
	* Updates filename if the suggested filename need to be changed in
	* wsdl:import. If the metadata already contains abstract wsdl(i.e. a WSDL
	* which has the porttype), then the abstract wsdl shouldn't be generated
	*
	* return null if abstract WSDL need not be generated
	*        Result the abstract WSDL
	*/
	@:overload public function getAbstractWSDL(filename : javax.xml.ws.Holder<String>) : javax.xml.transform.Result;
	
	/**
	* Updates filename if the suggested filename need to be changed in
	* xsd:import. If there is already a schema document for the namespace
	* in the metadata, then it is not generated.
	*
	* return null if schema need not be generated
	*        Result the generated schema document
	*/
	@:overload public function getSchemaOutput(namespace : String, filename : javax.xml.ws.Holder<String>) : javax.xml.transform.Result;
	
	/**
	* Converts SDDocumentSource to SDDocumentImpl and updates original docs. It
	* categories the generated documents into WSDL, Schema types.
	*
	* @return the primary WSDL
	*         null if it is not there in the generated documents
	*
	*/
	@:overload public function updateDocs() : com.sun.xml.internal.ws.server.SDDocumentImpl;
	
	
}
