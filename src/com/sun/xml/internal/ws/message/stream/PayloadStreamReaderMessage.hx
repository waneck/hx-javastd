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
extern class PayloadStreamReaderMessage extends com.sun.xml.internal.ws.message.AbstractMessageImpl
{
	@:overload public function new(reader : javax.xml.stream.XMLStreamReader, soapVer : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	@:overload public function new(headers : com.sun.xml.internal.ws.api.message.HeaderList, reader : javax.xml.stream.XMLStreamReader, attSet : com.sun.xml.internal.ws.api.message.AttachmentSet, soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	@:overload override public function hasHeaders() : Bool;
	
	@:overload override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload override public function getAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	@:overload override public function getPayloadLocalPart() : String;
	
	@:overload override public function getPayloadNamespaceURI() : String;
	
	@:overload override public function hasPayload() : Bool;
	
	@:overload override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload override private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	@:overload override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	
}
