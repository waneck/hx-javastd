package com.sun.xml.internal.ws.message.saaj;
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
extern class SAAJMessage extends com.sun.xml.internal.ws.api.message.Message
{
	@:overload public function new(sm : javax.xml.soap.SOAPMessage) : Void;
	
	@:overload override public function hasHeaders() : Bool;
	
	@:overload override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	/**
	* Gets the attachments of this message
	* (attachments live outside a message.)
	*/
	@:overload override public function getAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	/**
	* Optimization hint for the derived class to check
	* if we may have some attachments.
	*/
	@:overload override private function hasAttachments() : Bool;
	
	@:overload override public function getPayloadLocalPart() : String;
	
	@:overload override public function getPayloadNamespaceURI() : String;
	
	@:overload override public function hasPayload() : Bool;
	
	@:overload override public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	@:overload override public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function writeTo(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Creates a copy of a {@link com.sun.xml.internal.ws.api.message.Message}.
	* <p/>
	* <p/>
	* This method creates a new {@link com.sun.xml.internal.ws.api.message.Message} whose header/payload/attachments/properties
	* are identical to this {@link com.sun.xml.internal.ws.api.message.Message}. Once created, the created {@link com.sun.xml.internal.ws.api.message.Message}
	* and the original {@link com.sun.xml.internal.ws.api.message.Message} behaves independently --- adding header/
	* attachment to one {@link com.sun.xml.internal.ws.api.message.Message} doesn't affect another {@link com.sun.xml.internal.ws.api.message.Message}
	* at all.
	* <p/>
	* <h3>Design Rationale</h3>
	* <p/>
	* Since a {@link com.sun.xml.internal.ws.api.message.Message} body is read-once, sometimes
	* (such as when you do fail-over, or WS-RM) you need to
	* create an idential copy of a {@link com.sun.xml.internal.ws.api.message.Message}.
	* <p/>
	* <p/>
	* The actual copy operation depends on the layout
	* of the data in memory, hence it's best to be done by
	* the {@link com.sun.xml.internal.ws.api.message.Message} implementation itself.
	*/
	@:overload override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$message$saaj$SAAJMessage$SAAJAttachment') @:internal extern class SAAJMessage_SAAJAttachment implements com.sun.xml.internal.ws.api.message.Attachment
{
	@:overload public function new(part : javax.xml.soap.AttachmentPart) : Void;
	
	/**
	* Content ID of the attachment. Uniquely identifies an attachment.
	*/
	@:overload public function getContentId() : String;
	
	/**
	* Gets the MIME content-type of this attachment.
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Gets the attachment as an exact-length byte array.
	*/
	@:overload public function asByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the attachment as a {@link javax.activation.DataHandler}.
	*/
	@:overload public function asDataHandler() : javax.activation.DataHandler;
	
	/**
	* Gets the attachment as a {@link javax.xml.transform.Source}.
	* Note that there's no guarantee that the attachment is actually an XML.
	*/
	@:overload public function asSource() : javax.xml.transform.Source;
	
	/**
	* Obtains this attachment as an {@link java.io.InputStream}.
	*/
	@:overload public function asInputStream() : java.io.InputStream;
	
	/**
	* Writes the contents of the attachment into the given stream.
	*/
	@:overload public function writeTo(os : java.io.OutputStream) : Void;
	
	/**
	* Writes this attachment to the given {@link javax.xml.soap.SOAPMessage}.
	*/
	@:overload public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	
}
/**
* {@link AttachmentSet} for SAAJ.
*
* SAAJ wants '&lt;' and '>' for the content ID, but {@link AttachmentSet}
* doesn't. S this class also does the conversion between them.
*/
@:native('com$sun$xml$internal$ws$message$saaj$SAAJMessage$SAAJAttachmentSet') @:internal extern class SAAJMessage_SAAJAttachmentSet implements com.sun.xml.internal.ws.api.message.AttachmentSet
{
	@:overload public function new(sm : javax.xml.soap.SOAPMessage) : Void;
	
	/**
	* Gets the attachment by the content ID.
	*
	* @return null
	*         if no such attachment exist.
	*/
	@:overload public function get(contentId : String) : com.sun.xml.internal.ws.api.message.Attachment;
	
	@:overload public function isEmpty() : Bool;
	
	/**
	* Returns an iterator over a set of elements of type T.
	*
	* @return an Iterator.
	*/
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.ws.api.message.Attachment>;
	
	@:overload public function add(att : com.sun.xml.internal.ws.api.message.Attachment) : Void;
	
	
}
