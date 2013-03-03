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
@:internal extern class FoolProofParserExtension extends com.sun.xml.internal.ws.wsdl.parser.DelegatingParserExtension
{
	/**
	* {@link WSDLParserExtension} filter that checks if
	* another {@link WSDLParserExtension} is following the contract.
	*
	* <p>
	* This code protects the JAX-WS RI from broken extensions.
	*
	* <p>
	* For now it just checks if {@link XMLStreamReader} is placed
	* at the expected start/end element.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function new(core : com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension) : Void;
	
	@:overload @:public override public function serviceElements(service : com.sun.xml.internal.ws.api.model.wsdl.WSDLService, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portElements(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function definitionsElements(reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function bindingElements(binding : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portTypeElements(portType : com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portTypeOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function bindingOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function messageElements(msg : com.sun.xml.internal.ws.api.model.wsdl.WSDLMessage, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portTypeOperationInputElements(input : com.sun.xml.internal.ws.api.model.wsdl.WSDLInput, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portTypeOperationOutputElements(output : com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function portTypeOperationFaultElements(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function bindingOperationInputElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function bindingOperationOutputElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload @:public override public function bindingOperationFaultElements(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundFault, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	
}
