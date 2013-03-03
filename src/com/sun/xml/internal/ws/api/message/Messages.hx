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
extern class Messages
{
	/**
	* Creates a {@link Message} backed by a JAXB bean.
	*
	* @param context
	*      The context to be used to produce infoset from the object. Must not be null.
	* @param jaxbObject
	*      The JAXB object that represents the payload. must not be null. This object
	*      must be bound to an element (which means it either is a {@link JAXBElement} or
	*      an instanceof a class with {@link XmlRootElement}).
	* @param soapVersion
	*      The SOAP version of the message. Must not be null.
	*/
	@:overload @:public @:static public static function create(context : com.sun.xml.internal.bind.api.JAXBRIContext, jaxbObject : Dynamic, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* @deprecated
	*      Use {@link #create(JAXBRIContext, Object, SOAPVersion)}
	*/
	@:overload @:public @:static public static function create(marshaller : javax.xml.bind.Marshaller, jaxbObject : Dynamic, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} backed by a SAAJ {@link SOAPMessage} object.
	*
	* <p>
	* If the {@link SOAPMessage} contains headers and attachments, this method
	* does the right thing.
	*
	* @param saaj
	*      The SOAP message to be represented as a {@link Message}.
	*      Must not be null. Once this method is invoked, the created
	*      {@link Message} will own the {@link SOAPMessage}, so it shall
	*      never be touched directly.
	*/
	@:overload @:public @:static public static function create(saaj : javax.xml.soap.SOAPMessage) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} using {@link Source} as payload.
	*
	* @param payload
	*      Source payload is {@link Message}'s payload
	*      Must not be null. Once this method is invoked, the created
	*      {@link Message} will own the {@link Source}, so it shall
	*      never be touched directly.
	*
	* @param ver
	*      The SOAP version of the message. Must not be null.
	*/
	@:overload @:public @:static public static function createUsingPayload(payload : javax.xml.transform.Source, ver : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} using {@link XMLStreamReader} as payload.
	*
	* @param payload
	*      XMLStreamReader payload is {@link Message}'s payload
	*      Must not be null. Once this method is invoked, the created
	*      {@link Message} will own the {@link XMLStreamReader}, so it shall
	*      never be touched directly.
	*
	* @param ver
	*      The SOAP version of the message. Must not be null.
	*/
	@:overload @:public @:static public static function createUsingPayload(payload : javax.xml.stream.XMLStreamReader, ver : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} from an {@link Element} that represents
	* a payload.
	*
	* @param payload
	*      The element that becomes the child element of the SOAP body.
	*      Must not be null.
	*
	* @param ver
	*      The SOAP version of the message. Must not be null.
	*/
	@:overload @:public @:static public static function createUsingPayload(payload : org.w3c.dom.Element, ver : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} from an {@link Element} that represents
	* the whole SOAP message.
	*
	* @param soapEnvelope
	*      The SOAP envelope element.
	*/
	@:overload @:public @:static public static function create(soapEnvelope : org.w3c.dom.Element) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} using Source as entire envelope.
	*
	* @param envelope
	*      Source envelope is used to create {@link Message}
	*      Must not be null. Once this method is invoked, the created
	*      {@link Message} will own the {@link Source}, so it shall
	*      never be touched directly.
	*
	*/
	@:overload @:public @:static public static function create(envelope : javax.xml.transform.Source, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} that doesn't have any payload.
	*/
	@:overload @:public @:static public static function createEmpty(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} from {@link XMLStreamReader} that points to
	* the start of the envelope.
	*
	* @param reader
	*      can point to the start document or the start element (of &lt;s:Envelope>)
	*/
	@:overload @:public @:static public static function create(reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} from {@link XMLStreamBuffer} that retains the
	* whole envelope infoset.
	*
	* @param xsb
	*      This buffer must contain the infoset of the whole envelope.
	*/
	@:overload @:public @:static public static function create(xsb : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} that represents an exception as a fault. The
	* created message reflects if t or t.getCause() is SOAPFaultException.
	*
	* creates a fault message with default faultCode env:Server if t or t.getCause()
	* is not SOAPFaultException. Otherwise, it use SOAPFaultException's faultCode
	*
	* @return
	*      Always non-null. A message that wraps this {@link Throwable}.
	*
	*/
	@:overload @:public @:static public static function create(t : java.lang.Throwable, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a fault {@link Message}.
	*
	* <p>
	* This method is not designed for efficiency, and we don't expect
	* to be used for the performance critical codepath.
	*
	* @param fault
	*      The populated SAAJ data structure that represents a fault
	*      in detail.
	*
	* @return
	*      Always non-null. A message that wraps this {@link SOAPFault}.
	*/
	@:overload @:public @:static public static function create(fault : javax.xml.soap.SOAPFault) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* @deprecated
	*      Use {@link #createAddressingFaultMessage(WSBinding, Packet, QName)}
	*/
	@:overload @:public @:static public static function createAddressingFaultMessage(binding : com.sun.xml.internal.ws.api.WSBinding, missingHeader : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a fault {@link Message} that captures the code/subcode/subsubcode
	* defined by WS-Addressing if one of the expected WS-Addressing headers is
	* missing in the message
	*
	* @param binding WSBinding
	* @param p
	*      {@link Packet} that was missing a WS-Addressing header.
	* @param missingHeader The missing WS-Addressing Header
	* @return
	*      A message representing SOAPFault that contains the WS-Addressing code/subcode/subsubcode.
	*/
	@:overload @:public @:static public static function createAddressingFaultMessage(binding : com.sun.xml.internal.ws.api.WSBinding, p : com.sun.xml.internal.ws.api.message.Packet, missingHeader : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a fault {@link Message} that captures the code/subcode/subsubcode
	* defined by WS-Addressing if wsa:Action is not supported.
	*
	* @param unsupportedAction The unsupported Action. Must not be null.
	* @param av The WS-Addressing version of the message. Must not be null.
	* @param sv The SOAP Version of the message. Must not be null.
	*
	* @return
	*      A message representing SOAPFault that contains the WS-Addressing code/subcode/subsubcode.
	*/
	@:overload @:public @:static public static function create(unsupportedAction : String, av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* To be called to convert a  {@link ProtocolException} and faultcode for a given {@link SOAPVersion} in to a {@link Message}.
	*
	* @param soapVersion {@link SOAPVersion#SOAP_11} or {@link SOAPVersion#SOAP_12}
	* @param pex a ProtocolException
	* @param faultcode soap faultcode. Its ignored if the {@link ProtocolException} instance is {@link javax.xml.ws.soap.SOAPFaultException} and it has a
	* faultcode present in the underlying {@link SOAPFault}.
	* @return {@link Message} representing SOAP fault
	*/
	@:overload @:public @:static public static function create(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, pex : javax.xml.ws.ProtocolException, faultcode : javax.xml.namespace.QName) : com.sun.xml.internal.ws.api.message.Message;
	
	
}
