package com.sun.xml.internal.ws.encoding.xml;
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
extern class XMLMessage
{
	/*
	* Construct a message given a content type and an input stream.
	*/
	@:overload @:public @:static public static function create(ct : String, _in : java.io.InputStream, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:public @:static public static function create(source : javax.xml.transform.Source) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:public @:static public static function create(ds : javax.activation.DataSource, binding : com.sun.xml.internal.ws.api.WSBinding) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:public @:static public static function create(e : java.lang.Exception) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Return true if the content uses fast infoset.
	*/
	@:overload @:public @:static public static function isFastInfoset(ct : String) : Bool;
	
	/*
	* Verify a contentType.
	*
	* @return
	* MIME_MULTIPART_FLAG | PLAIN_XML_FLAG
	* MIME_MULTIPART_FLAG | FI_ENCODED_FLAG;
	* PLAIN_XML_FLAG
	* FI_ENCODED_FLAG
	*
	*/
	@:overload @:public @:static public static function identifyContentType(contentType : com.sun.xml.internal.ws.encoding.ContentType) : Int;
	
	@:overload @:protected @:static private static function isXMLType(primary : String, sub : String) : Bool;
	
	@:overload @:protected @:static private static function isXMLType(type : String) : Bool;
	
	@:overload @:protected @:static private static function isFastInfosetType(primary : String, sub : String) : Bool;
	
	@:overload @:protected @:static private static function isFastInfosetType(type : String) : Bool;
	
	@:overload @:public @:static public static function getDataSource(msg : com.sun.xml.internal.ws.api.message.Message, binding : com.sun.xml.internal.ws.api.WSBinding) : javax.activation.DataSource;
	
	@:overload @:public @:static public static function createDataSource(contentType : String, is : java.io.InputStream) : javax.activation.DataSource;
	
	
}
/**
* Access a {@link Message} as a {@link DataSource}.
* <p>
* A {@link Message} implementation will implement this if the
* messages is to be access as data source.
* <p>
* TODO: consider putting as part of the API.
*/
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$MessageDataSource') extern interface XMLMessage_MessageDataSource
{
	/**
	* Check if the data source has been consumed.
	* @return true of the data source has been consumed, otherwise false.
	*/
	@:overload public function hasUnconsumedDataSource() : Bool;
	
	/**
	* Get the data source.
	* @return the data source.
	*/
	@:overload public function getDataSource() : javax.activation.DataSource;
	
	
}
/**
* It's conent-type is some XML type
*
*/
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$XmlContent') @:internal extern class XMLMessage_XmlContent extends com.sun.xml.internal.ws.message.AbstractMessageImpl implements com.sun.xml.internal.ws.encoding.xml.XMLMessage.XMLMessage_MessageDataSource
{
	@:overload @:public public function new(ct : String, _in : java.io.InputStream, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload @:public public function hasUnconsumedDataSource() : Bool;
	
	@:overload @:public public function getDataSource() : javax.activation.DataSource;
	
	@:overload @:public override public function hasHeaders() : Bool;
	
	@:overload @:public override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload @:public override public function getPayloadLocalPart() : String;
	
	@:overload @:public override public function getPayloadNamespaceURI() : String;
	
	@:overload @:public override public function hasPayload() : Bool;
	
	@:overload @:public override public function isFault() : Bool;
	
	@:overload @:public override public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readAsSOAPMessage(packet : com.sun.xml.internal.ws.api.message.Packet, inbound : Bool) : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload @:public override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:protected override private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	
}
/**
* Data represented as a multi-part MIME message.
* <p>
* The root part may be an XML or an FI document. This class
* parses MIME message lazily.
*/
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$XMLMultiPart') extern class XMLMessage_XMLMultiPart extends com.sun.xml.internal.ws.message.AbstractMessageImpl implements com.sun.xml.internal.ws.encoding.xml.XMLMessage.XMLMessage_MessageDataSource
{
	@:overload @:public public function new(contentType : String, is : java.io.InputStream, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload @:public public function hasUnconsumedDataSource() : Bool;
	
	@:overload @:public public function getDataSource() : javax.activation.DataSource;
	
	@:overload @:public override public function hasHeaders() : Bool;
	
	@:overload @:public override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload @:public override public function getPayloadLocalPart() : String;
	
	@:overload @:public override public function getPayloadNamespaceURI() : String;
	
	@:overload @:public override public function hasPayload() : Bool;
	
	@:overload @:public override public function isFault() : Bool;
	
	@:overload @:public override public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readAsSOAPMessage(packet : com.sun.xml.internal.ws.api.message.Packet, inbound : Bool) : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload @:public override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:protected override private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	@:overload @:public override public function isOneWay(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Bool;
	
	@:overload @:public override public function getAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$FaultMessage') @:internal extern class XMLMessage_FaultMessage extends com.sun.xml.internal.ws.message.EmptyMessageImpl
{
	@:overload @:public public function new(version : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	@:overload @:public override public function isFault() : Bool;
	
	
}
/**
* Don't know about this content. It's conent-type is NOT the XML types
* we recognize(text/xml, application/xml, multipart/related;text/xml etc).
*
* This could be used to represent image/jpeg etc
*/
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$UnknownContent') extern class XMLMessage_UnknownContent extends com.sun.xml.internal.ws.message.AbstractMessageImpl implements com.sun.xml.internal.ws.encoding.xml.XMLMessage.XMLMessage_MessageDataSource
{
	@:overload @:public public function new(ct : String, _in : java.io.InputStream) : Void;
	
	@:overload @:public public function new(ds : javax.activation.DataSource) : Void;
	
	@:overload @:public public function hasUnconsumedDataSource() : Bool;
	
	@:overload @:public public function getDataSource() : javax.activation.DataSource;
	
	@:overload @:protected override private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	@:overload @:public override public function hasHeaders() : Bool;
	
	@:overload @:public override public function isFault() : Bool;
	
	@:overload @:public override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload @:public override public function getPayloadLocalPart() : String;
	
	@:overload @:public override public function getPayloadNamespaceURI() : String;
	
	@:overload @:public override public function hasPayload() : Bool;
	
	@:overload @:public override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$xml$XMLMessage$XmlDataSource') @:internal extern class XMLMessage_XmlDataSource implements javax.activation.DataSource
{
	@:overload @:public public function consumed() : Bool;
	
	@:overload @:public public function getInputStream() : java.io.InputStream;
	
	@:overload @:public public function getOutputStream() : java.io.OutputStream;
	
	@:overload @:public public function getContentType() : String;
	
	@:overload @:public public function getName() : String;
	
	
}
