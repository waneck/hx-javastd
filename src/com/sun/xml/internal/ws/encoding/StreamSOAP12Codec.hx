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
@:internal extern class StreamSOAP12Codec extends com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec
{
	/**
	* {@link StreamSOAPCodec} for SOAP 1.2.
	*
	* @author Paul.Sandoz@Sun.Com
	*/
	@:public @:static @:final public static var SOAP12_MIME_TYPE(default, null) : String;
	
	@:public @:static @:final public static var SOAP12_CONTENT_TYPE(default, null) : String;
	
	@:overload @:public override public function getMimeType() : String;
	
	@:overload @:protected @:final private function createHeader(reader : javax.xml.stream.XMLStreamReader, mark : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : com.sun.xml.internal.ws.message.stream.StreamHeader;
	
	@:public @:static @:final public static var defaultContentType(default, null) : com.sun.xml.internal.ws.encoding.ContentTypeImpl;
	
	@:overload @:protected private function getContentType(soapAction : String) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:public public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet, att : com.sun.xml.internal.ws.api.message.AttachmentSet) : Void;
	
	@:overload @:protected private function getExpectedContentTypes() : java.util.List<String>;
	
	
}
