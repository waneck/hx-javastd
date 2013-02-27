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
extern class W3CAddressingWSDLParserExtension extends com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension
{
	/**
	* W3C WS-Addressing Runtime WSDL parser extension
	*
	* @author Arun Gupta
	*/
	@:overload override public function bindingElements(binding : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload override public function portElements(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload override public function bindingOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload override public function portTypeOperationInputAttributes(input : com.sun.xml.internal.ws.api.model.wsdl.WSDLInput, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload override public function portTypeOperationOutputAttributes(output : com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload override public function portTypeOperationFaultAttributes(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Process wsdl:portType operation after the entire WSDL model has been populated.
	* The task list includes: <p>
	* <ul>
	* <li>Patch the value of UsingAddressing in wsdl:port and wsdl:binding</li>
	* <li>Populate actions for the messages that do not have an explicit wsaw:Action</li>
	* <li>Patch the default value of wsaw:Anonymous=optional if none is specified</li>
	* </ul>
	* @param context
	*/
	@:overload override public function finished(context : com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtensionContext) : Void;
	
	@:overload private function getNamespaceURI() : String;
	
	@:overload private function getWsdlActionTag() : javax.xml.namespace.QName;
	
	/**
	* Patch the default value of wsaw:Anonymous=optional if none is specified
	*
	* @param binding WSDLBoundPortTypeImpl
	*/
	@:overload private function patchAnonymousDefault(binding : com.sun.xml.internal.ws.model.wsdl.WSDLBoundPortTypeImpl) : Void;
	
	@:overload @:final private static function buildAction(name : String, o : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, isFault : Bool) : String;
	
	private static var COLON_DELIMITER(default, null) : String;
	
	private static var SLASH_DELIMITER(default, null) : String;
	
	
}
