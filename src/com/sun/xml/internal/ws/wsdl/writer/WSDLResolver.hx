package com.sun.xml.internal.ws.wsdl.writer;
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
extern interface WSDLResolver
{
	/**
	* Create a Result object into which concrete WSDL is to be generated.
	*
	* @return Result for the concrete WSDL
	*/
	@:overload public function getWSDL(suggestedFilename : String) : javax.xml.transform.Result;
	
	/**
	* Create a Result object into which abstract WSDL is to be generated. If the the
	* abstract WSDL is already in metadata, it is not generated.
	*
	* Update filename if the suggested filename need to be changed in wsdl:import.
	* This needs to be done if the metadata contains abstract WSDL, and that systemid
	* needs to be reflected in concrete WSDL's wsdl:import
	*
	* @return null if abstract WSDL need not be generated
	*/
	@:overload public function getAbstractWSDL(filename : javax.xml.ws.Holder<String>) : javax.xml.transform.Result;
	
	/**
	* Create a Result object into which schema doc is to be generated. Typically if
	* there is a schema doc for namespace in metadata, then it is not generated.
	*
	* Update filename if the suggested filename need to be changed in xsd:import. This
	* needs to be done if the metadata contains the document, and that systemid
	* needs to be reflected in some other document's xsd:import
	*
	* @return null if schema need not be generated
	*/
	@:overload public function getSchemaOutput(namespace : String, filename : javax.xml.ws.Holder<String>) : javax.xml.transform.Result;
	
	
}
