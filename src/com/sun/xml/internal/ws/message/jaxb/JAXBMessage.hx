package com.sun.xml.internal.ws.message.jaxb;
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
extern class JAXBMessage extends com.sun.xml.internal.ws.message.AbstractMessageImpl
{
	@:overload public static function create(context : com.sun.xml.internal.bind.api.JAXBRIContext, jaxbObject : Dynamic, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, headers : com.sun.xml.internal.ws.api.message.HeaderList, attachments : com.sun.xml.internal.ws.api.message.AttachmentSet) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} backed by a JAXB bean.
	*
	* @param context
	*      The JAXBContext to be used for marshalling.
	* @param jaxbObject
	*      The JAXB object that represents the payload. must not be null. This object
	*      must be bound to an element (which means it either is a {@link JAXBElement} or
	*      an instanceof a class with {@link XmlRootElement}).
	* @param soapVersion
	*      The SOAP version of the message. Must not be null.
	*/
	@:overload public static function create(context : com.sun.xml.internal.bind.api.JAXBRIContext, jaxbObject : Dynamic, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Creates a {@link Message} backed by a JAXB bean.
	*
	* @param bridge
	*      Specify the payload tag name and how <tt>jaxbObject</tt> is bound.
	* @param jaxbObject
	*/
	@:overload public static function create(bridge : com.sun.xml.internal.bind.api.Bridge<Dynamic>, jaxbObject : Dynamic, soapVer : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Copy constructor.
	*/
	@:overload public function new(that : com.sun.xml.internal.ws.message.jaxb.JAXBMessage) : Void;
	
	@:overload override public function hasHeaders() : Bool;
	
	@:overload override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload override public function getPayloadLocalPart() : String;
	
	@:overload override public function getPayloadNamespaceURI() : String;
	
	@:overload override public function hasPayload() : Bool;
	
	@:overload override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	/**
	* Writes the payload as SAX events.
	*/
	@:overload override private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	@:overload override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	
}
