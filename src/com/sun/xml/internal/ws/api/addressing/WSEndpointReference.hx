package com.sun.xml.internal.ws.api.addressing;
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
/**
* Internal representation of the EPR.
*
* <p>
* Instances of this class are immutable and thread-safe.
*
* @author Kohsuke Kawaguchi
* @see AddressingVersion#anonymousEpr
*/
extern class WSEndpointReference implements com.sun.xml.internal.ws.api.model.wsdl.WSDLExtension
{
	/**
	* Creates from the spec version of {@link EndpointReference}.
	*
	* <p>
	* This method performs the data conversion, so it's slow.
	* Do not use this method in a performance critical path.
	*/
	@:overload @:public public function new(epr : javax.xml.ws.EndpointReference, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* Creates from the spec version of {@link EndpointReference}.
	*
	* <p>
	* This method performs the data conversion, so it's slow.
	* Do not use this method in a performance critical path.
	*/
	@:overload @:public public function new(epr : javax.xml.ws.EndpointReference) : Void;
	
	/**
	* Creates a {@link WSEndpointReference} that wraps a given infoset.
	*/
	@:overload @:public public function new(infoset : com.sun.xml.internal.stream.buffer.XMLStreamBuffer, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* Creates a {@link WSEndpointReference} by parsing an infoset.
	*/
	@:overload @:public public function new(infoset : java.io.InputStream, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* Creates a {@link WSEndpointReference} from the given infoset.
	* The {@link XMLStreamReader} must point to either a document or an element.
	*/
	@:overload @:public public function new(_in : javax.xml.stream.XMLStreamReader, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* @see #WSEndpointReference(String, AddressingVersion)
	*/
	@:overload @:public public function new(address : java.net.URL, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* @see #WSEndpointReference(String, AddressingVersion)
	*/
	@:overload @:public public function new(address : java.net.URI, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* Creates a {@link WSEndpointReference} that only has an address.
	*/
	@:overload @:public public function new(address : String, version : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : Void;
	
	/**
	* Creates an EPR from individual components.
	*
	* <p>
	* This version takes various information about metadata, and creates an EPR that has
	* the necessary embedded WSDL.
	*/
	@:overload @:public public function new(version : com.sun.xml.internal.ws.api.addressing.AddressingVersion, address : String, service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, portType : javax.xml.namespace.QName, metadata : java.util.List<org.w3c.dom.Element>, wsdlAddress : String, referenceParameters : java.util.List<org.w3c.dom.Element>) : Void;
	
	/**
	* Creates an EPR from individual components.
	*
	* <p>
	* This version takes various information about metadata, and creates an EPR that has
	* the necessary embedded WSDL.
	*/
	@:overload @:public public function new(version : com.sun.xml.internal.ws.api.addressing.AddressingVersion, address : String, service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, portType : javax.xml.namespace.QName, metadata : java.util.List<org.w3c.dom.Element>, wsdlAddress : String, referenceParameters : java.util.List<org.w3c.dom.Element>, extns : java.util.Collection<com.sun.xml.internal.ws.api.addressing.WSEndpointReference.WSEndpointReference_EPRExtension>, attributes : java.util.Map<javax.xml.namespace.QName, String>) : Void;
	
	/**
	* Creates an EPR from individual components.
	*
	* <p>
	* This version takes various information about metadata, and creates an EPR that has
	* the necessary embedded WSDL.
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload @:public public function new(version : com.sun.xml.internal.ws.api.addressing.AddressingVersion, address : String, service : javax.xml.namespace.QName, port : javax.xml.namespace.QName, portType : javax.xml.namespace.QName, metadata : java.util.List<org.w3c.dom.Element>, wsdlAddress : String, wsdlTargetNamepsace : String, referenceParameters : java.util.List<org.w3c.dom.Element>, elements : java.util.List<org.w3c.dom.Element>, attributes : java.util.Map<javax.xml.namespace.QName, String>) : Void;
	
	/**
	* Converts from {@link EndpointReference}.
	*
	* This handles null {@link EndpointReference} correctly.
	* Call {@link #WSEndpointReference(EndpointReference)} directly
	* if you know it's not null.
	*/
	@:overload @:public @:static public static function create(epr : javax.xml.ws.EndpointReference) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* @see #createWithAddress(String)
	*/
	@:overload @:public public function createWithAddress(newAddress : java.net.URI) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* @see #createWithAddress(String)
	*/
	@:overload @:public public function createWithAddress(newAddress : java.net.URL) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Creates a new {@link WSEndpointReference} by replacing the address of this EPR
	* to the new one.
	*
	* <p>
	* The following example shows how you can use this to force an HTTPS EPR,
	* when the endpoint can serve both HTTP and HTTPS requests.
	* <pre>
	* if(epr.getAddress().startsWith("http:"))
	*   epr = epr.createWithAddress("https:"+epr.getAddress().substring(5));
	* </pre>
	*
	* @param newAddress
	*      This is a complete URL to be written inside &lt;Adress> element of the EPR,
	*      such as "http://foo.bar/abc/def"
	*/
	@:overload @:public public function createWithAddress(newAddress : String) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	* Convert the EPR to the spec version. The actual type of
	* {@link EndpointReference} to be returned depends on which version
	* of the addressing spec this EPR conforms to.
	*
	* @throws WebServiceException
	*      if the conversion fails, which can happen if the EPR contains
	*      invalid infoset (wrong namespace URI, etc.)
	*/
	@:overload @:public public function toSpec() : javax.xml.ws.EndpointReference;
	
	/**
	* Converts the EPR to the specified spec version.
	*
	* If the {@link #getVersion() the addressing version in use} and
	* the given class is different, then this may involve version conversion.
	*/
	@:overload @:public public function toSpec<T : javax.xml.ws.EndpointReference>(clazz : Class<T>) : T;
	
	/**
	* Creates a proxy that can be used to talk to this EPR.
	*
	* <p>
	* All the normal WS-Addressing processing happens automatically,
	* such as setting the endpoint address to {@link #getAddress() the address},
	* and sending the reference parameters associated with this EPR as
	* headers, etc.
	*/
	@:overload @:public public function getPort<T>(jaxwsService : javax.xml.ws.Service, serviceEndpointInterface : Class<T>, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : T;
	
	/**
	* Creates a {@link Dispatch} that can be used to talk to this EPR.
	*
	* <p>
	* All the normal WS-Addressing processing happens automatically,
	* such as setting the endpoint address to {@link #getAddress() the address},
	* and sending the reference parameters associated with this EPR as
	* headers, etc.
	*/
	@:overload @:public public function createDispatch<T>(jaxwsService : javax.xml.ws.Service, type : Class<T>, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<T>;
	
	/**
	* Creates a {@link Dispatch} that can be used to talk to this EPR.
	*
	* <p>
	* All the normal WS-Addressing processing happens automatically,
	* such as setting the endpoint address to {@link #getAddress() the address},
	* and sending the reference parameters associated with this EPR as
	* headers, etc.
	*/
	@:overload @:public public function createDispatch(jaxwsService : javax.xml.ws.Service, context : javax.xml.bind.JAXBContext, mode : javax.xml.ws.Service.Service_Mode, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : javax.xml.ws.Dispatch<Dynamic>;
	
	/**
	* Gets the addressing version of this EPR.
	*/
	@:overload @:public public function getVersion() : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	/**
	* The value of the &lt;wsa:address> header.
	*/
	@:overload @:public public function getAddress() : String;
	
	/**
	* Returns true if this has anonymous URI as the {@link #getAddress() address}.
	*/
	@:overload @:public public function isAnonymous() : Bool;
	
	/**
	* Returns true if this has {@link AddressingVersion#noneUri none URI}
	* as the {@link #getAddress() address}.
	*/
	@:overload @:public public function isNone() : Bool;
	
	/**
	* Reads this EPR as {@link XMLStreamReader}.
	*
	* @param localName
	*      EPR uses a different root tag name depending on the context.
	*      The returned {@link XMLStreamReader} will use the given local name
	*      for the root element name.
	*/
	@:overload @:public public function read(localName : String) : javax.xml.stream.XMLStreamReader;
	
	/**
	* Returns a {@link Source} that represents this EPR.
	*
	* @param localName
	*      EPR uses a different root tag name depending on the context.
	*      The returned {@link Source} will use the given local name
	*      for the root element name.
	*/
	@:overload @:public public function asSource(localName : String) : javax.xml.transform.Source;
	
	/**
	* Writes this EPR to the given {@link ContentHandler}.
	*
	* @param localName
	*      EPR uses a different root tag name depending on the context.
	*      The returned {@link Source} will use the given local name
	*      for the root element name.
	* @param fragment
	*      If true, generate a fragment SAX events without start/endDocument callbacks.
	*      If false, generate a full XML document event.
	*/
	@:overload @:public public function writeTo(localName : String, contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	/**
	* Writes this EPR into the given writer.
	*
	* @param localName
	*      EPR uses a different root tag name depending on the context.
	*      The returned {@link Source} will use the given local name
	*/
	@:overload @:public public function writeTo(localName : String, w : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Returns a {@link Header} that wraps this {@link WSEndpointReference}.
	*
	* <p>
	* The returned header is immutable too, and can be reused with
	* many {@link Message}s.
	*
	* @param rootTagName
	*      The header tag name to be used, such as &lt;ReplyTo> or &lt;FaultTo>.
	*      (It's bit ugly that this method takes {@link QName} and not just local name,
	*      unlike other methods. If it's making the caller's life miserable, then
	*      we can talk.)
	*/
	@:overload @:public public function createHeader(rootTagName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Header;
	
	/**
	* Copies all the reference parameters in this EPR as headers
	* to the given {@link HeaderList}.
	*/
	@:overload @:public public function addReferenceParameters(outbound : com.sun.xml.internal.ws.api.message.HeaderList) : Void;
	
	/**
	* Dumps the EPR infoset in a human-readable string.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* Gets the QName of the EndpointReference element.
	* @return
	*/
	@:overload @:public public function getName() : javax.xml.namespace.QName;
	
	/**
	* Returns the first extensibility element inside EPR root element with input QName.
	*/
	@:overload @:public public function getEPRExtension(extnQName : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference.WSEndpointReference_EPRExtension;
	
	@:overload @:public public function getEPRExtensions() : java.util.Collection<com.sun.xml.internal.ws.api.addressing.WSEndpointReference.WSEndpointReference_EPRExtension>;
	
	/**
	* Parses the metadata inside this EPR and obtains it in a easy-to-process form.
	*
	* <p>
	* See {@link Metadata} class for what's avaliable as "metadata".
	*/
	@:overload @:public public function getMetaData() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference.WSEndpointReference_Metadata;
	
	
}
/**
* Filtering {@link SAXBufferProcessor} that replaces the root tag name.
*/
@:native('com$sun$xml$internal$ws$api$addressing$WSEndpointReference$SAXBufferProcessorImpl') @:internal extern class WSEndpointReference_SAXBufferProcessorImpl extends com.sun.xml.internal.stream.buffer.sax.SAXBufferProcessor
{
	@:overload @:public public function new(rootLocalName : String) : Void;
	
	@:overload @:protected override private function processElement(uri : String, localName : String, qName : String) : Void;
	
	
}
/**
* Represents an extensibility element inside an EndpointReference
*/
@:native('com$sun$xml$internal$ws$api$addressing$WSEndpointReference$EPRExtension') extern class WSEndpointReference_EPRExtension
{
	@:overload @:public @:abstract public function readAsXMLStreamReader() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public @:abstract public function getQName() : javax.xml.namespace.QName;
	
	
}
/**
* Parses the Metadata in an EPR and provides convenience methods to access
* the metadata.
*
*/
@:native('com$sun$xml$internal$ws$api$addressing$WSEndpointReference$Metadata') extern class WSEndpointReference_Metadata
{
	@:overload @:public public function getServiceName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getPortName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getPortTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getWsdlSource() : javax.xml.transform.Source;
	
	@:overload @:public public function getWsdliLocation() : String;
	
	
}
