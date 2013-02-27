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
extern class StreamSOAPCodec implements com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec implements com.sun.xml.internal.ws.encoding.RootOnlyCodec
{
	@:overload public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:abstract private function getContentType(soapAction : String) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:abstract private function getExpectedContentTypes() : java.util.List<String>;
	
	@:overload public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Decodes a message from {@link XMLStreamReader} that points to
	* the beginning of a SOAP infoset.
	*
	* @param reader
	*      can point to the start document or the start element.
	*/
	@:overload @:final public function decode(reader : javax.xml.stream.XMLStreamReader) : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Decodes a message from {@link XMLStreamReader} that points to
	* the beginning of a SOAP infoset.
	*
	* @param reader
	*      can point to the start document or the start element.
	* @param attachmentSet
	*      {@link StreamSOAPCodec} can take attachments parsed outside,
	*      so that this codec can be used as a part of a biggre codec
	*      (like MIME multipart codec.)
	*/
	@:overload @:final public function decode(reader : javax.xml.stream.XMLStreamReader, attachmentSet : com.sun.xml.internal.ws.api.message.AttachmentSet) : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:final public function copy() : StreamSOAPCodec;
	
	@:overload @:abstract private function createHeader(reader : javax.xml.stream.XMLStreamReader, mark : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : com.sun.xml.internal.ws.message.stream.StreamHeader;
	
	@:overload public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet, att : com.sun.xml.internal.ws.api.message.AttachmentSet) : Void;
	
	@:overload public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet, att : com.sun.xml.internal.ws.api.message.AttachmentSet) : Void;
	
	/**
	* Creates a new {@link StreamSOAPCodec} instance.
	*/
	@:overload public static function create(version : com.sun.xml.internal.ws.api.SOAPVersion) : StreamSOAPCodec;
	
	/**
	* Get the MIME type associated with this Codec.
	* <p>
	* If available the MIME type will represent the media that the codec
	* encodes and decodes.
	*
	* The MIME type returned will be the most general representation independent
	* of an instance of this MIME type utilized as a MIME content-type.
	*
	* @return
	*      null if the MIME type can't be determined by the <code>Codec</code>
	*      implementation. Otherwise the MIME type is returned.
	*/
	@:overload public function getMimeType() : String;
	
	
}
