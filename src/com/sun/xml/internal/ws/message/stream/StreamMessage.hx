package com.sun.xml.internal.ws.message.stream;
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
extern class StreamMessage extends com.sun.xml.internal.ws.message.AbstractMessageImpl
{
	/**
	* Creates a {@link StreamMessage} from a {@link XMLStreamReader}
	* that points at the start element of the payload, and headers.
	*
	* <p>
	* This method creaets a {@link Message} from a payload.
	*
	* @param headers
	*      if null, it means no headers. if non-null,
	*      it will be owned by this message.
	* @param reader
	*      points at the start element/document of the payload (or the end element of the &lt;s:Body>
	*      if there's no payload)
	*/
	@:overload public function new(headers : com.sun.xml.internal.ws.api.message.HeaderList, attachmentSet : com.sun.xml.internal.ws.api.message.AttachmentSet, reader : javax.xml.stream.XMLStreamReader, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	/**
	* Creates a {@link StreamMessage} from a {@link XMLStreamReader}
	* and the complete infoset of the SOAP envelope.
	*
	* <p>
	* See {@link #StreamMessage(HeaderList, AttachmentSet, XMLStreamReader, SOAPVersion)} for
	* the description of the basic parameters.
	*
	* @param headerTag
	*      Null if the message didn't have a header tag.
	*
	*/
	@:overload public function new(envelopeTag : com.sun.xml.internal.ws.encoding.TagInfoset, headerTag : com.sun.xml.internal.ws.encoding.TagInfoset, attachmentSet : com.sun.xml.internal.ws.api.message.AttachmentSet, headers : com.sun.xml.internal.ws.api.message.HeaderList, bodyTag : com.sun.xml.internal.ws.encoding.TagInfoset, reader : javax.xml.stream.XMLStreamReader, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	@:overload override public function hasHeaders() : Bool;
	
	@:overload override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload override public function getPayloadLocalPart() : String;
	
	@:overload override public function getPayloadNamespaceURI() : String;
	
	@:overload override public function hasPayload() : Bool;
	
	@:overload override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload override public function readPayloadAsJAXB(unmarshaller : javax.xml.bind.Unmarshaller) : Dynamic;
	
	@:overload override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload override public function consume() : Void;
	
	@:overload override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function writePayloadTo(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function writeTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	@:overload override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	
}
