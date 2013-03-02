package com.sun.xml.internal.ws.encoding;
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
extern class MtomCodec extends com.sun.xml.internal.ws.encoding.MimeCodec
{
	/**
	* Mtom messge Codec. It can be used even for non-soap message's mtom encoding.
	*
	* @author Vivek Pandey
	* @author Jitendra Kotamraju
	*/
	public static var XOP_XML_MIME_TYPE(default, null) : String;
	
	/**
	* Return the soap 1.1 and soap 1.2 specific XOP packaged ContentType
	*
	* @return A non-null content type for soap11 or soap 1.2 content type
	*/
	@:overload public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function copy() : com.sun.xml.internal.ws.encoding.MtomCodec;
	
	@:overload private function decode(mpp : com.sun.xml.internal.ws.encoding.MimeMultipartParser, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MtomCodec$ByteArrayBuffer') @:internal extern class MtomCodec_ByteArrayBuffer
{
	
}
@:native('com$sun$xml$internal$ws$encoding$MtomCodec$MtomStreamWriterImpl') @:internal extern class MtomCodec_MtomStreamWriterImpl extends com.sun.xml.internal.ws.util.xml.XMLStreamWriterFilter implements com.sun.xml.internal.org.jvnet.staxex.XMLStreamWriterEx implements com.sun.xml.internal.ws.streaming.MtomStreamWriter
{
	@:overload public function new(w : javax.xml.stream.XMLStreamWriter, out : java.io.OutputStream, mtomAttachments : java.util.List<com.sun.xml.internal.ws.encoding.MtomCodec.MtomCodec_ByteArrayBuffer>) : Void;
	
	@:overload public function writeBinary(data : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int, contentType : String) : Void;
	
	@:overload public function writeBinary(dataHandler : javax.activation.DataHandler) : Void;
	
	@:overload public function writeBinary(contentType : String) : java.io.OutputStream;
	
	@:overload public function writePCDATA(data : java.lang.CharSequence) : Void;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	/**
	* JAXBMessage writes envelope directly to the OutputStream(for SJSXP, woodstox).
	* While writing, it calls the AttachmentMarshaller methods for adding attachments.
	* JAXB writes xop:Include in this case.
	*/
	@:overload public function getAttachmentMarshaller() : javax.xml.bind.attachment.AttachmentMarshaller;
	
	@:overload public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MtomCodec$MtomStreamWriterImpl$MtomNamespaceContextEx') @:internal extern class MtomCodec_MtomStreamWriterImpl_MtomNamespaceContextEx implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx
{
	@:overload public function new(nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding>;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MtomCodec$MtomXMLStreamReaderEx') @:internal extern class MtomCodec_MtomXMLStreamReaderEx extends com.sun.xml.internal.ws.util.xml.XMLStreamReaderFilter implements com.sun.xml.internal.org.jvnet.staxex.XMLStreamReaderEx
{
	@:overload public function new(mimeMP : com.sun.xml.internal.ws.encoding.MimeMultipartParser, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload public function getPCDATA() : java.lang.CharSequence;
	
	@:overload public function getNamespaceContext() : com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx;
	
	@:overload public function getElementTextTrim() : String;
	
	@:overload public function getTextLength() : Int;
	
	@:overload public function getTextStart() : Int;
	
	@:overload public function getEventType() : Int;
	
	@:overload public function next() : Int;
	
	@:overload public function getTextCharacters() : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload public function getTextCharacters(sourceStart : Int, target : java.NativeArray<java.StdTypes.Char16>, targetStart : Int, length : Int) : Int;
	
	@:overload public function getText() : String;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$MtomCodec$MtomXMLStreamReaderEx$MtomNamespaceContextEx') @:internal extern class MtomCodec_MtomXMLStreamReaderEx_MtomNamespaceContextEx implements com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx
{
	@:overload public function new(nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function iterator() : java.util.Iterator<com.sun.xml.internal.org.jvnet.staxex.NamespaceContextEx.NamespaceContextEx_Binding>;
	
	@:overload public function getNamespaceURI(prefix : String) : String;
	
	@:overload public function getPrefix(namespaceURI : String) : String;
	
	@:overload public function getPrefixes(namespaceURI : String) : java.util.Iterator<Dynamic>;
	
	
}
