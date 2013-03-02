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
extern class W3CAddressingMetadataWSDLParserExtension extends com.sun.xml.internal.ws.wsdl.parser.W3CAddressingWSDLParserExtension
{
	@:overload public function bindingElements(binding : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portElements(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload private function patchAnonymousDefault(binding : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl) : Void;
	
	@:overload private function getNamespaceURI() : String;
	
	@:overload private function getWsdlActionTag() : javax.xml.namespace.QName;
	
	
}
