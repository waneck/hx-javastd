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
extern class Packet extends com.sun.xml.internal.ws.api.DistributedPropertySet
{
	/**
	* Creates a {@link Packet} that wraps a given {@link Message}.
	*
	* <p>
	* This method should be only used to create a fresh {@link Packet}.
	* To create a {@link Packet} for a reply, use {@link #createResponse(Message)}.
	*
	* @param request
	*      The request {@link Message}. Can be null.
	*/
	@:overload @:public public function new(request : com.sun.xml.internal.ws.api.message.Message) : Void;
	
	/**
	* Creates an empty {@link Packet} that doesn't have any {@link Message}.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a copy of this {@link Packet}.
	*
	* @param copyMessage determines whether the {@link Message} from the original {@link Packet} should be copied as
	*        well, or not. If the value is {@code false}, the {@link Message} in the copy of the {@link Packet} is {@code null}.
	* @return copy of the original packet
	*/
	@:overload @:public public function copy(copyMessage : Bool) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Gets the last {@link Message} set through {@link #setMessage(Message)}.
	*
	* @return
	*      may null. See the class javadoc for when it's null.
	*/
	@:overload @:public public function getMessage() : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Sets a {@link Message} to this packet.
	*
	* @param message
	*      Can be null.
	*/
	@:overload @:public public function setMessage(message : com.sun.xml.internal.ws.api.message.Message) : Void;
	
	/**
	* Returns the QName of the wsdl operation associated with this packet.
	* <p/>
	* Information such as Payload QName, wsa:Action header, SOAPAction HTTP header are used depending on the features
	* enabled on the particular port.
	*
	* @return null if there is no WSDL model or
	*              runtime cannot uniquely identify the wsdl operation from the information in the packet.
	*/
	@:overload @:public @:final public function getWSDLOperation() : javax.xml.namespace.QName;
	
	/**
	* Set the wsdl operation to avoid lookup from other data.
	* This is useful in SEI based clients, where the WSDL operation can be known
	* from the associated {@link JavaMethod}
	*
	* @param wsdlOp QName
	*/
	@:overload @:public public function setWSDLOperation(wsdlOp : javax.xml.namespace.QName) : Void;
	
	/**
	* True if this message came from a transport (IOW inbound),
	* and in paricular from a "secure" transport. A transport
	* needs to set this flag appropriately.
	*
	* <p>
	* This is a requirement from the security team.
	*/
	@:public public var wasTransportSecure : Bool;
	
	/**
	* Inbound transport headers are captured in a transport neutral way.
	* Transports are expected to fill this data after creating a Packet.
	* <p>
	* {@link SOAPMessage#getMimeHeaders()} would return these headers.
	*
	*/
	@:public @:static @:final public static var INBOUND_TRANSPORT_HEADERS(default, null) : String;
	
	/**
	* Outbound transport headers are captured in a transport neutral way.
	*
	* <p>
	* Transports may choose to ignore certain headers that interfere with
	* its correct operation, such as
	* <tt>Content-Type</tt> and <tt>Content-Length</tt>.
	*/
	@:public @:static @:final public static var OUTBOUND_TRANSPORT_HEADERS(default, null) : String;
	
	/**
	*
	*/
	@:public @:static @:final public static var HA_INFO(default, null) : String;
	
	/**
	* This property holds the snapshot of HandlerConfiguration
	* at the time of invocation.
	* This property is used by MUPipe and HandlerPipe implementations.
	*/
	@:public public var handlerConfig : com.sun.xml.internal.ws.client.HandlerConfiguration;
	
	/**
	* If a message originates from a proxy stub that implements
	* a port interface, this field is set to point to that object.
	*
	* TODO: who's using this property?
	*/
	@:public public var proxy : javax.xml.ws.BindingProvider;
	
	/**
	* The endpoint address to which this message is sent to.
	*
	* <p>
	* The JAX-WS spec allows this to be changed for each message,
	* so it's designed to be a property.
	*
	* <p>
	* Must not be null for a request message on the client. Otherwise
	* it's null.
	*/
	@:public public var endpointAddress : com.sun.xml.internal.ws.api.EndpointAddress;
	
	/**
	* @deprecated
	*      The programatic acccess should be done via
	*      {@link #endpointAddress}. This is for JAX-WS client applications
	*      that access this property via {@link BindingProvider#ENDPOINT_ADDRESS_PROPERTY}.
	*/
	@:overload @:public public function getEndPointAddressString() : String;
	
	@:overload @:public public function setEndPointAddressString(s : String) : Void;
	
	/**
	* The value of {@link ContentNegotiation#PROPERTY}
	* property.
	*
	* This property is used only on the client side.
	*/
	@:public public var contentNegotiation : com.sun.xml.internal.ws.client.ContentNegotiation;
	
	@:overload @:public public function getContentNegotiationString() : String;
	
	@:overload @:public public function setContentNegotiationString(s : String) : Void;
	
	/**
	* Gives a list of Reference Parameters in the Message
	* <p>
	* Headers which have attribute wsa:IsReferenceParameter="true"
	* This is not cached as one may reset the Message.
	*<p>
	*/
	@:overload @:public public function getReferenceParameters() : java.util.List<org.w3c.dom.Element>;
	
	/**
	* The list of MIME types that are acceptable to a receiver
	* of an outbound message.
	*
	* This property is used only on the server side.
	*
	* <p>The representation shall be that specified by the HTTP Accept
	* request-header field.
	*
	* <p>The list of content types will be obtained from the transport
	* meta-data of a inbound message in a request/response message exchange.
	* Hence this property will be set by the service-side transport pipe.
	*
	*/
	@:public public var acceptableMimeTypes : String;
	
	/**
	* When non-null, this object is consulted to
	* implement {@link WebServiceContext} methods
	* exposed to the user application.
	*
	* Used only on the server side.
	*
	* <p>
	* This property is set from the parameter
	* of {@link WSEndpoint.PipeHead#process}.
	*/
	@:public public var webServiceContextDelegate : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate;
	
	/**
	* Used only on the server side so that the transport
	* can close the connection early.
	*
	* <p>
	* This field can be null. While a message is being processed,
	* this field can be set explicitly to null, to prevent
	* future pipes from closing a transport (see {@link #keepTransportBackChannelOpen()})
	*
	* <p>
	* This property is set from the parameter
	* of {@link WSEndpoint.PipeHead#process}.
	*/
	@:public public var transportBackChannel : com.sun.xml.internal.ws.api.server.TransportBackChannel;
	
	/**
	* Keeps the transport back channel open (by seeting {@link #transportBackChannel} to null.)
	*
	* @return
	*      The previous value of {@link #transportBackChannel}.
	*/
	@:overload @:public public function keepTransportBackChannelOpen() : com.sun.xml.internal.ws.api.server.TransportBackChannel;
	
	/**
	* The governing {@link WSEndpoint} in which this message is floating.
	*
	* <p>
	* This property is set if and only if this is on the server side.
	*/
	@:public public var endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	/**
	* The value of the SOAPAction header associated with the message.
	*
	* <p>
	* For outgoing messages, the transport may sends out this value.
	* If this field is null, the transport may choose to send <tt>""</tt>
	* (quoted empty string.)
	*
	* For incoming messages, the transport will set this field.
	* If the incoming message did not contain the SOAPAction header,
	* the transport sets this field to null.
	*
	* <p>
	* If the value is non-null, it must be always in the quoted form.
	* The value can be null.
	*
	* <p>
	* Note that the way the transport sends this value out depends on
	* transport and SOAP version.
	*
	* For HTTP transport and SOAP 1.1, BP requires that SOAPAction
	* header is present (See {@BP R2744} and {@BP R2745}.) For SOAP 1.2,
	* this is moved to the parameter of the "application/soap+xml".
	*/
	@:public public var soapAction : String;
	
	/**
	* A hint indicating that whether a transport should expect
	* a reply back from the server.
	*
	* <p>
	* This property is used on the client-side for
	* outbound messages, so that a pipeline
	* can communicate to the terminal (or intermediate) {@link Tube}s
	* about this knowledge.
	*
	* <p>
	* This property <b>MUST NOT</b> be used by 2-way transports
	* that have the transport back channel. Those transports
	* must always check a reply coming through the transport back
	* channel regardless of this value, and act accordingly.
	* (This is because the expectation of the client and
	* that of the server can be different, for example because
	* of a bug in user's configuration.)
	*
	* <p>
	* This property is for one-way transports, and more
	* specifically for the coordinator that correlates sent requests
	* and incoming replies, to decide whether to block
	* until a response is received.
	*
	* <p>
	* Also note that this property is related to
	* {@link WSDLOperation#isOneWay()} but not the same thing.
	* In fact in general, they are completely orthogonal.
	*
	* For example, the calling application can choose to invoke
	* {@link Dispatch#invoke(Object)} or {@link Dispatch#invokeOneWay(Object)}
	* with an operation (which determines the value of this property),
	* regardless of whether WSDL actually says it's one way or not.
	* So these two booleans can take any combinations.
	*
	*
	* <p>
	* When this property is {@link Boolean#FALSE}, it means that
	* the pipeline does not expect a reply from a server (and therefore
	* the correlator should not block for a reply message
	* -- if such a reply does arrive, it can be just ignored.)
	*
	* <p>
	* When this property is {@link Boolean#TRUE}, it means that
	* the pipeline expects a reply from a server (and therefore
	* the correlator should block to see if a reply message is received,
	*
	* <p>
	* This property is always set to {@link Boolean#TRUE} or
	* {@link Boolean#FALSE} when used on the request message
	* on the client side.
	* No other {@link Boolean} instances are allowed.
	* <p>
	*
	* In all other situations, this property is null.
	*
	*/
	@:public public var expectReply : Null<Bool>;
	
	/**
	* This property will be removed in a near future.
	*
	* <p>
	* A part of what this flag represented moved to
	* {@link #expectReply} and the other part was moved
	* to {@link Message#isOneWay(WSDLPort)}. Please update
	* your code soon, or risk breaking your build!!
	*/
	@:public public var isOneWay : Null<Bool>;
	
	/**
	* Bag to capture properties that are available for the whole
	* message invocation (namely on both requests and responses.)
	*
	* <p>
	* These properties are copied from a request to a response.
	* This is where we keep properties that are set by handlers.
	*
	* <p>
	* See <a href="#properties">class javadoc</a> for more discussion.
	*
	* @see #getHandlerScopePropertyNames(boolean)
	*/
	@:public @:final public var invocationProperties(default, null) : java.util.Map<String, Dynamic>;
	
	/**
	* Gets a {@link Set} that stores handler-scope properties.
	*
	* <p>
	* These properties will not be exposed to the response context.
	* Consequently, if a {@link Tube} wishes to hide a property
	* to {@link ResponseContext}, it needs to add the property name
	* to this set.
	*
	* @param readOnly
	*      Return true if the caller only intends to read the value of this set.
	*      Internally, the {@link Set} is allocated lazily, and this flag helps
	*      optimizing the strategy.
	*
	* @return
	*      always non-null, possibly empty set that stores property names.
	*/
	@:overload @:public @:final public function getHandlerScopePropertyNames(readOnly : Bool) : java.util.Set<String>;
	
	/**
	* This method no longer works.
	*
	* @deprecated
	*      Use {@link #getHandlerScopePropertyNames(boolean)}.
	*      To be removed once Tango components are updated.
	*/
	@:overload @:public @:final public function getApplicationScopePropertyNames(readOnly : Bool) : java.util.Set<String>;
	
	/**
	* Creates a response {@link Packet} from a request packet ({@code this}).
	*
	* <p>
	* When a {@link Packet} for a reply is created, some properties need to be
	* copied over from a request to a response, and this method handles it correctly.
	*
	* @deprecated
	*      Use createClientResponse(Message) for client side and
	*      createServerResponse(Message, String) for server side response
	*      creation.
	*
	* @param msg
	*      The {@link Message} that represents a reply. Can be null.
	*/
	@:overload @:public public function createResponse(msg : com.sun.xml.internal.ws.api.message.Message) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Creates a response {@link Packet} from a request packet ({@code this}).
	*
	* <p>
	* When a {@link Packet} for a reply is created, some properties need to be
	* copied over from a request to a response, and this method handles it correctly.
	*
	* @param msg
	*      The {@link Message} that represents a reply. Can be null.
	*/
	@:overload @:public public function createClientResponse(msg : com.sun.xml.internal.ws.api.message.Message) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Creates a server-side response {@link Packet} from a request
	* packet ({@code this}). If WS-Addressing is enabled, a default Action
	* Message Addressing Property is obtained using <code>wsdlPort</code> {@link WSDLPort}
	* and <code>binding</code> {@link WSBinding}.
	* <p><p>
	* This method should be called to create application response messages
	* since they are associated with a {@link WSBinding} and {@link WSDLPort}.
	* For creating protocol messages that require a non-default Action, use
	* {@link #createServerResponse(Message, com.sun.xml.internal.ws.api.addressing.AddressingVersion, com.sun.xml.internal.ws.api.SOAPVersion, String)}.
	*
	* @param responseMessage The {@link Message} that represents a reply. Can be null.
	* @param wsdlPort The response WSDL port.
	* @param binding The response Binding. Cannot be null.
	* @return response packet
	*/
	@:overload @:public public function createServerResponse(responseMessage : com.sun.xml.internal.ws.api.message.Message, wsdlPort : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, seiModel : com.sun.xml.internal.ws.api.model.SEIModel, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Creates a server-side response {@link Packet} from a request
	* packet ({@code this}). If WS-Addressing is enabled, <code>action</code>
	* is used as Action Message Addressing Property.
	* <p><p>
	* This method should be called only for creating protocol response messages
	* that require a particular value of Action since they are not associated
	* with a {@link WSBinding} and {@link WSDLPort} but do know the {@link AddressingVersion}
	* and {@link SOAPVersion}.
	*
	* @param responseMessage The {@link Message} that represents a reply. Can be null.
	* @param addressingVersion The WS-Addressing version of the response message.
	* @param soapVersion The SOAP version of the response message.
	* @param action The response Action Message Addressing Property value.
	* @return response packet
	*/
	@:overload @:public public function createServerResponse(responseMessage : com.sun.xml.internal.ws.api.message.Message, addressingVersion : com.sun.xml.internal.ws.api.addressing.AddressingVersion, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, action : String) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Overwrites the {@link Message} of the response packet ({@code this}) by the given {@link Message}.
	* Unlike {@link #setMessage(Message)}, fill in the addressing headers correctly, and this process
	* requires the access to the request packet.
	*
	* <p>
	* This method is useful when the caller needs to swap a response message completely to a new one.
	*
	* @see #createServerResponse(Message, AddressingVersion, SOAPVersion, String)
	*/
	@:overload @:public public function setResponseMessage(request : com.sun.xml.internal.ws.api.message.Packet, responseMessage : com.sun.xml.internal.ws.api.message.Message, addressingVersion : com.sun.xml.internal.ws.api.addressing.AddressingVersion, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, action : String) : Void;
	
	@:overload @:protected override private function getPropertyMap() : com.sun.xml.internal.ws.api.PropertySet.PropertySet_PropertyMap;
	
	
}
