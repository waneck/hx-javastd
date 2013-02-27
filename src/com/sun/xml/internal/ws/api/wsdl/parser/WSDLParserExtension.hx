package com.sun.xml.internal.ws.api.wsdl.parser;
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
extern class WSDLParserExtension
{
	/**
	* Extends the WSDL parsing process.
	*
	* <p>
	* This interface is implemented by components that build on top of the JAX-WS RI,
	* to participate in the WSDL parsing process that happens in the runtime.
	* This allows such components to retrieve information from WSDL extension elements,
	* and use that later to, for example, configure {@link Tube}s.
	*
	*
	*
	* <h2>How it works?</h2>
	* <p>
	* Each method on this interface denotes one extension point in WSDL
	* (the place where foreign elements/attributes can be added.) A {@link RuntimeWSDLParser}
	* starts parsing WSDL with a fixed set of {@link WSDLParserExtension}s, and
	* as it finds extension elements/attributes, it calls appropriate callback methods
	* to provide a chance for {@link WSDLParserExtension} to parse such
	* an extension element.
	*
	* <p>
	* There are two kinds of callbacks.
	*
	* <h3>Attribute callbacks</h3>
	* <p>
	* One is for attributes, which ends with the name {@code Attributes}.
	* This callback is invoked with {@link XMLStreamReader} that points
	* to the start tag of the WSDL element.
	*
	* <p>
	* The callback method can read interesting attributes on it.
	* The method must return without advancing the parser to the next token.
	*
	* <h3>Element callbacks</h3>
	* <p>
	* The other callback is for extension elements, which ends with the name
	* {@code Elements}.
	* When a callback is invoked, {@link XMLStreamReader} points to the
	* start tag of the extension element. The callback method can do
	* one of the following:
	*
	* <ol>
	*  <li>Return {@code false} without moving {@link XMLStreamReader},
	*      to indicate that the extension element isn't recognized.
	*      This allows the next {@link WSDLParserExtension} to see this
	*      extension element.
	*  <li>Parse the whole subtree rooted at the element,
	*      move the cursor to the {@link XMLStreamConstants#END_ELEMENT} state,
	*      and return {@code true}, indicating that the extension
	*      element is consumed.
	*      No other {@link WSDLParserExtension}s are notified of this extension.
	* </ol>
	*
	* <h3>Parsing in callback</h3>
	* <p>
	* For each callback, the corresponding WSDL model object is passed in,
	* so that {@link WSDLParserExtension} can relate what it's parsing
	* to the {@link WSDLModel}. Most likely, extensions can parse
	* their data into an {@link WSDLExtension}-derived classes, then
	* use {@link WSDLExtensible} interface to hook them into {@link WSDLModel}.
	*
	* <p>
	* Note that since the {@link WSDLModel} itself
	* is being built, {@link WSDLParserExtension} may not invoke any of
	* the query methods on the WSDL model. Those references are passed just so that
	* {@link WSDLParserExtension} can hold on to those references, or put
	* {@link WSDLExtensible} objects into the model, not to query it.
	*
	* <p>
	* If {@link WSDLParserExtension} needs to query {@link WSDLModel},
	* defer that processing until {@link #finished(WSDLParserExtensionContext)}, when it's
	* safe to use {@link WSDLModel} can be used safely.
	*
	* <p>
	* Also note that {@link WSDLParserExtension}s are called in no particular order.
	* This interface is not designed for having multiple {@link WSDLParserExtension}s
	* parse the same extension element.
	*
	*
	* <h2>Error Handling</h2>
	* <p>
	* For usability, {@link WSDLParserExtension}s are expected to check possible
	* errors in the extension elements that it parses. When an error is found,
	* it may throw a {@link WebServiceException} to abort the parsing of the WSDL.
	* This exception will be propagated to the user, so it should have
	* detailed error messages pointing at the problem.
	*
	* <h2>Discovery</h2>
	* <p>
	* The JAX-WS RI locates the implementation of {@link WSDLParserExtension}s
	* by using the standard service look up mechanism, in particular looking for
	* <tt>META-INF/services/com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtension</tt>
	*
	*
	* <h2>TODO</h2>
	* <p>
	* As it's designed today, extensions cannot access to any of the environmental
	* information before the parsing begins (such as what {@link WSService} this
	* WSDL is being parsed for, etc.) We might need to reconsider this aspect.
	* The JAX-WS team waits for feedback on this topic.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload public function start(context : com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtensionContext) : Void;
	
	@:overload public function serviceAttributes(service : com.sun.xml.internal.ws.api.model.wsdl.WSDLService, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function serviceElements(service : com.sun.xml.internal.ws.api.model.wsdl.WSDLService, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portAttributes(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portElements(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationInput(op : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationOutput(op : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationFault(op : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function definitionsElements(reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingElements(binding : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingAttributes(binding : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portTypeElements(portType : com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeAttributes(portType : com.sun.xml.internal.ws.api.model.wsdl.WSDLPortType, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portTypeOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationAttributes(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLOperation, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function bindingOperationElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingOperationAttributes(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function messageElements(msg : com.sun.xml.internal.ws.api.model.wsdl.WSDLMessage, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function messageAttributes(msg : com.sun.xml.internal.ws.api.model.wsdl.WSDLMessage, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portTypeOperationInputElements(input : com.sun.xml.internal.ws.api.model.wsdl.WSDLInput, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationInputAttributes(input : com.sun.xml.internal.ws.api.model.wsdl.WSDLInput, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portTypeOperationOutputElements(output : com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationOutputAttributes(output : com.sun.xml.internal.ws.api.model.wsdl.WSDLOutput, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function portTypeOperationFaultElements(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function portTypeOperationFaultAttributes(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLFault, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function bindingOperationInputElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingOperationInputAttributes(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function bindingOperationOutputElements(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingOperationOutputAttributes(operation : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function bindingOperationFaultElements(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundFault, reader : javax.xml.stream.XMLStreamReader) : Bool;
	
	@:overload public function bindingOperationFaultAttributes(fault : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundFault, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	/**
	* Called when the parsing of a set of WSDL documents are all done.
	* <p>
	* This is the opportunity to do any post-processing of the parsing
	* you've done.
	*
	* @param context  {@link WSDLParserExtensionContext} gives fully parsed {@link WSDLModel}.
	*/
	@:overload public function finished(context : com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtensionContext) : Void;
	
	@:overload public function postFinished(context : com.sun.xml.internal.ws.api.wsdl.parser.WSDLParserExtensionContext) : Void;
	
	
}
