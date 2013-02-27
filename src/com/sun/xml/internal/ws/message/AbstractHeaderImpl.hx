package com.sun.xml.internal.ws.message;
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
extern class AbstractHeaderImpl implements com.sun.xml.internal.ws.api.message.Header
{
	/**
	* Partial default implementation of {@link Header}.
	*
	* <p>
	* This is meant to be a convenient base class
	* for {@link Header}-derived classes.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload private function new() : Void;
	
	/**
	* @deprecated
	*/
	@:overload @:final public function readAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>, context : com.sun.xml.internal.bind.api.BridgeContext) : T;
	
	@:overload public function readAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload public function readAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	/**
	* Default implementation that copies the infoset. Not terribly efficient.
	*/
	@:overload public function readAsEPR(expected : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	@:overload public function isIgnorable(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, roles : java.util.Set<String>) : Bool;
	
	@:overload public function getRole(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	@:overload public function isRelay() : Bool;
	
	@:overload public function getAttribute(name : javax.xml.namespace.QName) : String;
	
	/**
	* Parses a string that looks like <tt>xs:boolean</tt> into boolean.
	*
	* This method assumes that the whilespace normalization has already taken place.
	*/
	@:overload @:final private function parseBool(value : String) : Bool;
	
	@:overload public function getStringContent() : String;
	
	private static var EMPTY_ATTS(default, null) : org.xml.sax.helpers.AttributesImpl;
	
	/**
	* Gets the namespace URI of this header element.
	*
	* @return
	*      this string must be interned.
	*/
	@:overload @:public public function getNamespaceURI() : String;
	
	/**
	* Reads the header as a {@link XMLStreamReader}.
	*
	* <p>
	* The returned parser points at the start element of this header.
	* (IOW, {@link XMLStreamReader#getEventType()} would return
	* {@link XMLStreamReader#START_ELEMENT}.
	*
	* <h3>Performance Expectation</h3>
	* <p>
	* For some {@link Header} implementations, this operation
	* is a non-trivial operation. Therefore, use of this method
	* is discouraged unless the caller is interested in reading
	* the whole header.
	*
	* <p>
	* Similarly, if the caller wants to use this method only to do
	* the API conversion (such as simply firing SAX events from
	* {@link XMLStreamReader}), then the JAX-WS team requests
	* that you talk to us.
	*
	* <p>
	* {@link Message}s that come from tranport usually provides
	* a reasonably efficient implementation of this method.
	*
	* @return
	*      must not null.
	*/
	@:overload @:public public function readHeader() : javax.xml.stream.XMLStreamReader;
	
	/**
	* Writes out the header as a fragment.
	*
	* @throws XMLStreamException
	*      if the operation fails for some reason. This leaves the
	*      writer to an undefined state.
	*/
	@:overload @:public public function writeTo(w : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes out the header to the given SOAPMessage.
	*
	* <p>
	* Sometimes a {@link Message} needs to produce itself
	* as {@link SOAPMessage}, in which case each header needs
	* to turn itself into a header.
	*
	* @throws SOAPException
	*      if the operation fails for some reason. This leaves the
	*      writer to an undefined state.
	*/
	@:overload @:public public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	/**
	* Gets the local name of this header element.
	*
	* @return
	*      this string must be interned.
	*/
	@:overload @:public public function getLocalPart() : String;
	
	/**
	* Writes out the header as SAX events.
	*
	* <p>
	* Sometimes a {@link Message} needs to produce SAX events,
	* and this method is necessary for headers to participate to it.
	*
	* <p>
	* A header is responsible for producing the SAX events for its part,
	* including <tt>startPrefixMapping</tt> and <tt>endPrefixMapping</tt>,
	* but not startDocument/endDocument.
	*
	* <p>
	* Note that SAX contract requires that any error that does NOT originate
	* from {@link ContentHandler} (meaning any parsing error and etc) must
	* be first reported to {@link ErrorHandler}. If the SAX event production
	* cannot be continued and the processing needs to abort, the code may
	* then throw the same {@link SAXParseException} reported to {@link ErrorHandler}.
	*
	* @param contentHandler
	*      The {@link ContentHandler} that receives SAX events.
	*
	* @param errorHandler
	*      The {@link ErrorHandler} that receives parsing errors.
	*/
	@:overload @:public public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Gets the attribute value on the header element.
	*
	* @param nsUri
	*      The namespace URI of the attribute. Can be empty.
	* @param localName
	*      The local name of the attribute.
	*
	* @return
	*      if the attribute is found, return the whitespace normalized value.
	*      (meaning no leading/trailing space, no consequtive whitespaces in-between.)
	*      Otherwise null. Note that the XML parsers are responsible for
	*      whitespace-normalizing attributes, so {@link Header} implementation
	*      doesn't have to do anything.
	*/
	@:overload public function getAttribute(nsUri : String, localName : String) : String;
	
	
}
