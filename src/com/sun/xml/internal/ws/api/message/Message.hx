package com.sun.xml.internal.ws.api.message;
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
extern class Message
{
	/**
	* Returns true if headers are present in the message.
	*
	* @return
	*      true if headers are present.
	*/
	@:overload @:abstract public function hasHeaders() : Bool;
	
	/**
	* Gets all the headers of this message.
	*
	* <h3>Implementation Note</h3>
	* <p>
	* {@link Message} implementation is allowed to defer
	* the construction of {@link HeaderList} object. So
	* if you only want to check for the existence of any header
	* element, use {@link #hasHeaders()}.
	*
	* @return
	*      always return the same non-null object.
	*/
	@:overload @:abstract public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	/**
	* Gets the attachments of this message
	* (attachments live outside a message.)
	*/
	@:overload public function getAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	/**
	* Optimization hint for the derived class to check
	* if we may have some attachments.
	*/
	@:overload private function hasAttachments() : Bool;
	
	private var attachmentSet : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	/**
	* Returns the operation of which this message is an instance of.
	*
	* <p>
	* This method relies on {@link WSDLBoundPortType#getOperation(String, String)} but
	* it does so in an efficient way.
	*
	* @deprecated  It is not always possible to uniquely identify the WSDL Operation from just the
	* information in the Message. Instead, Use {@link com.sun.xml.internal.ws.api.message.Packet#getWSDLOperation()}
	* to get it correctly.
	*
	* <p>
	* This method works only for a request. A pipe can determine an operation for a request,
	* and then keep it in a local variable to use it with a response, so there should be
	* no need to find out operation from a response (besides, there might not be any response!).
	*
	* @param boundPortType
	*      This represents the port for which this message is used.
	*      Most {@link Pipe}s should get this information when they are created,
	*      since a pippeline always work against a particular type of {@link WSDLPort}.
	*
	* @return
	*      Null if the operation was not found. This is possible, for example when a protocol
	*      message is sent through a pipeline, or when we receive an invalid request on the server,
	*      or when we are on the client and the user appliation sends a random DOM through
	*      {@link Dispatch}, so this error needs to be handled gracefully.
	*/
	@:overload @:final public function getOperation(boundPortType : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundPortType) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	/**
	* The same as {@link #getOperation(WSDLBoundPortType)} but
	* takes {@link WSDLPort} for convenience.
	*
	* @deprecated  It is not always possible to uniquely identify the WSDL Operation from just the
	* information in the Message. Instead, Use {@link com.sun.xml.internal.ws.api.message.Packet#getWSDLOperation()}
	* to get it correctly.
	*/
	@:overload @:final public function getOperation(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : com.sun.xml.internal.ws.api.model.wsdl.WSDLBoundOperation;
	
	/**
	* Returns the java Method of which this message is an instance of.
	*
	* It is not always possible to uniquely identify the WSDL Operation from just the
	* information in the Message. Instead, Use {@link com.sun.xml.internal.ws.api.message.Packet#getWSDLOperation()}
	* to get the QName of the associated wsdl operation correctly.
	*
	* <p>
	* This method works only for a request. A pipe can determine a {@link Method}
	* for a request, and then keep it in a local variable to use it with a response,
	* so there should be no need to find out operation from a response (besides,
	* there might not be any response!).
	*
	* @param seiModel
	*      This represents the java model for the endpoint
	*      Some server {@link Pipe}s would get this information when they are created.
	*
	* @return
	*      Null if there is no corresponding Method for this message. This is
	*      possible, for example when a protocol message is sent through a
	*      pipeline, or when we receive an invalid request on the server,
	*      or when we are on the client and the user appliation sends a random
	*      DOM through {@link Dispatch}, so this error needs to be handled
	*      gracefully.
	*/
	@:overload @:final public function getMethod(seiModel : com.sun.xml.internal.ws.api.model.SEIModel) : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* Returns true if this message is a request message for a
	* one way operation according to the given WSDL. False otherwise.
	*
	* <p>
	* This method is functionally equivalent as doing
	* {@code getOperation(port).getOperation().isOneWay()}
	* (with proper null check and all.) But this method
	* can sometimes work faster than that (for example,
	* on the client side when used with SEI.)
	*
	* @param port
	*      {@link Message}s are always created under the context of
	*      one {@link WSDLPort} and they never go outside that context.
	*      Pass in that "governing" {@link WSDLPort} object here.
	*      We chose to receive this as a parameter instead of
	*      keeping {@link WSDLPort} in a message, just to save the storage.
	*
	*      <p>
	*      The implementation of this method involves caching the return
	*      value, so the behavior is undefined if multiple callers provide
	*      different {@link WSDLPort} objects, which is a bug of the caller.
	*/
	@:overload public function isOneWay(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Bool;
	
	/**
	* Makes an assertion that this {@link Message} is
	* a request message for an one-way operation according
	* to the context WSDL.
	*
	* <p>
	* This method is really only intended to be invoked from within
	* the JAX-WS runtime, and not by any code building on top of it.
	*
	* <p>
	* This method can be invoked only when the caller "knows" what
	* WSDL says. Also, there's no point in invoking this method if the caller
	* is doing  {@code getOperation(port).getOperation().isOneWay()},
	* or sniffing the payload tag name.
	* In particular, this includes {@link DispatchImpl}.
	*
	* <p>
	* Once called, this allows {@link #isOneWay(WSDLPort)} method
	* to return a value quickly.
	*
	* @see #isOneWay(WSDLPort)
	*/
	@:overload @:final public function assertOneWay(value : Bool) : Void;
	
	/**
	* Gets the local name of the payload element.
	*
	* @return
	*      null if a {@link Message} doesn't have any payload.
	*/
	@:overload @:abstract public function getPayloadLocalPart() : String;
	
	/**
	* Gets the namespace URI of the payload element.
	*
	* @return
	*      null if a {@link Message} doesn't have any payload.
	*/
	@:overload @:abstract public function getPayloadNamespaceURI() : String;
	
	/**
	* Returns true if a {@link Message} has a payload.
	*
	* <p>
	* A message without a payload is a SOAP message that looks like:
	* <pre><xmp>
	* <S:Envelope>
	*   <S:Header>
	*     ...
	*   </S:Header>
	*   <S:Body />
	* </S:Envelope>
	* </xmp></pre>
	*/
	@:overload @:abstract public function hasPayload() : Bool;
	
	/**
	* Returns true if this message is a fault.
	*
	* <p>
	* Just a convenience method built on {@link #getPayloadNamespaceURI()}
	* and {@link #getPayloadLocalPart()}.
	*/
	@:overload public function isFault() : Bool;
	
	/**
	* It gives S:Envelope/S:Body/S:Fault/detail 's first child's name. Should
	* be called for messages that have SOAP Fault.
	*
	* <p> This implementation is expensive so concrete implementations are
	* expected to override this one.
	*
	* @return first detail entry's name, if there is one
	*         else null
	*/
	@:overload public function getFirstDetailEntryName() : javax.xml.namespace.QName;
	
	/**
	* Consumes this message including the envelope.
	* returns it as a {@link Source} object.
	*/
	@:overload @:abstract public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	/**
	* Returns the payload as a {@link Source} object.
	*
	* This consumes the message.
	*
	* @return
	*      if there's no payload, this method returns null.
	*/
	@:overload @:abstract public function readPayloadAsSource() : javax.xml.transform.Source;
	
	/**
	* Creates the equivalent {@link SOAPMessage} from this message.
	*
	* This consumes the message.
	*
	* @throws SOAPException
	*      if there's any error while creating a {@link SOAPMessage}.
	*/
	@:overload @:abstract public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	/**
	* Creates the equivalent {@link SOAPMessage} from this message. It also uses
	* transport specific headers from Packet during the SOAPMessage construction
	* so that {@link SOAPMessage#getMimeHeaders()} gives meaningful transport
	* headers.
	*
	* This consumes the message.
	*
	* @throws SOAPException
	*      if there's any error while creating a {@link SOAPMessage}.
	*/
	@:overload public function readAsSOAPMessage(packet : com.sun.xml.internal.ws.api.message.Packet, inbound : Bool) : javax.xml.soap.SOAPMessage;
	
	/**
	* Reads the payload as a JAXB object by using the given unmarshaller.
	*
	* This consumes the message.
	*
	* @throws JAXBException
	*      If JAXB reports an error during the processing.
	*/
	@:overload @:abstract public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	/**
	* Reads the payload as a JAXB object according to the given {@link Bridge}.
	*
	* This consumes the message.
	*
	* @return null
	*      if there's no payload.
	* @throws JAXBException
	*      If JAXB reports an error during the processing.
	*/
	@:overload @:abstract public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	/**
	* Reads the payload as a {@link XMLStreamReader}
	*
	* This consumes the message. The caller is encouraged to call
	* {@link XMLStreamReaderFactory#recycle(XMLStreamReader)} when finished using
	* the instance.
	*
	* @return
	*      If there's no payload, this method returns null.
	*      Otherwise always non-null valid {@link XMLStreamReader} that points to
	*      the payload tag name.
	*/
	@:overload @:abstract public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	/**
	* Marks the message as consumed, without actually reading the contents.
	*
	* <p>
	* This method provides an opportunity for implementations to reuse
	* any reusable resources needed for representing the payload.
	*
	* <p>
	* This method may not be called more than once since it may have
	* released the reusable resources.
	*/
	@:overload public function consume() : Void;
	
	/**
	* Writes the payload to StAX.
	*
	* This method writes just the payload of the message to the writer.
	* This consumes the message.
	* The implementation will not write
	* {@link XMLStreamWriter#writeStartDocument()}
	* nor
	* {@link XMLStreamWriter#writeEndDocument()}
	*
	* <p>
	* If there's no payload, this method is no-op.
	*
	* @throws XMLStreamException
	*      If the {@link XMLStreamWriter} reports an error,
	*      or some other errors happen during the processing.
	*/
	@:overload @:abstract public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes the whole SOAP message (but not attachments)
	* to the given writer.
	*
	* This consumes the message.
	*
	* @throws XMLStreamException
	*      If the {@link XMLStreamWriter} reports an error,
	*      or some other errors happen during the processing.
	*/
	@:overload @:abstract public function writeTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes the whole SOAP envelope as SAX events.
	*
	* <p>
	* This consumes the message.
	*
	* @param contentHandler
	*      must not be nulll.
	* @param errorHandler
	*      must not be null.
	*      any error encountered during the SAX event production must be
	*      first reported to this error handler. Fatal errors can be then
	*      thrown as {@link SAXParseException}. {@link SAXException}s thrown
	*      from {@link ErrorHandler} should propagate directly through this method.
	*/
	@:overload @:abstract public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Creates a copy of a {@link Message}.
	*
	* <p>
	* This method creates a new {@link Message} whose header/payload/attachments/properties
	* are identical to this {@link Message}. Once created, the created {@link Message}
	* and the original {@link Message} behaves independently --- adding header/
	* attachment to one {@link Message} doesn't affect another {@link Message}
	* at all.
	*
	* <p>
	* This method does <b>NOT</b> consume a message.
	*
	* <p>
	* To enable efficient copy operations, there's a few restrictions on
	* how copied message can be used.
	*
	* <ol>
	*  <li>The original and the copy may not be
	*      used concurrently by two threads (this allows two {@link Message}s
	*      to share some internal resources, such as JAXB marshallers.)
	*      Note that it's OK for the original and the copy to be processed
	*      by two threads, as long as they are not concurrent.
	*
	*  <li>The copy has the same 'life scope'
	*      as the original (this allows shallower copy, such as
	*      JAXB beans wrapped in {@link JAXBMessage}.)
	* </ol>
	*
	* <p>
	* A 'life scope' of a message created during a message processing
	* in a pipeline is until a pipeline processes the next message.
	* A message cannot be kept beyond its life scope.
	*
	* (This experimental design is to allow message objects to be reused
	* --- feedback appreciated.)
	*
	*
	*
	* <h3>Design Rationale</h3>
	* <p>
	* Since a {@link Message} body is read-once, sometimes
	* (such as when you do fail-over, or WS-RM) you need to
	* create an idential copy of a {@link Message}.
	*
	* <p>
	* The actual copy operation depends on the layout
	* of the data in memory, hence it's best to be done by
	* the {@link Message} implementation itself.
	*
	* <p>
	* The restrictions placed on the use of copied {@link Message} can be
	* relaxed if necessary, but it will make the copy method more expensive.
	*/
	@:overload @:abstract public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Retuns a unique id for the message. The id can be used for various things,
	* like debug assistance, logging, and MIME encoding(say for boundary).
	*
	* <p>
	* This method will check the existence of the addressing <MessageID> header,
	* and if present uses that value. Otherwise it generates one from UUID.random(),
	* and return it without adding a new header. But it doesn't add a <MessageID>
	* to the header list since we expect them to be added before calling this
	* method.
	*
	* <p>
	* Addressing tube will go do a separate verification on inbound
	* headers to make sure that <MessageID> header is present when it's
	* supposed to be.
	*
	* @param binding object created by {@link BindingID#createBinding()}
	*
	* @return unique id for the message
	*/
	@:overload public function getID(binding : com.sun.xml.internal.ws.api.WSBinding) : String;
	
	/**
	* Retuns a unique id for the message.
	* <p><p>
	* @see {@link #getID(com.sun.xml.internal.ws.api.WSBinding)} for detailed description.
	* @param av WS-Addressing version
	* @param sv SOAP version
	* @return unique id for the message
	*/
	@:overload public function getID(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	
}
