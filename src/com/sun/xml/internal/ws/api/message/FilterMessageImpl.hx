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
extern class FilterMessageImpl extends com.sun.xml.internal.ws.api.message.Message
{
	@:overload @:protected private function new(delegate : com.sun.xml.internal.ws.api.message.Message) : Void;
	
	@:overload @:public override public function hasHeaders() : Bool;
	
	@:overload @:public override public function getHeaders() : com.sun.xml.internal.ws.api.message.HeaderList;
	
	@:overload @:public override public function getAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	@:overload @:protected override private function hasAttachments() : Bool;
	
	@:overload @:public override public function isOneWay(port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Bool;
	
	@:overload @:public override public function getPayloadLocalPart() : String;
	
	@:overload @:public override public function getPayloadNamespaceURI() : String;
	
	@:overload @:public override public function hasPayload() : Bool;
	
	@:overload @:public override public function isFault() : Bool;
	
	@:overload @:public override public function getFirstDetailEntryName() : javax.xml.namespace.QName;
	
	@:overload @:public override public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readPayloadAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readAsSOAPMessage(packet : com.sun.xml.internal.ws.api.message.Packet, inbound : Bool) : javax.xml.soap.SOAPMessage;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload @:public override public function readPayload() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public override public function consume() : Void;
	
	@:overload @:public override public function writePayloadTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(sw : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public override public function copy() : com.sun.xml.internal.ws.api.message.Message;
	
	@:overload @:public override public function getID(binding : com.sun.xml.internal.ws.api.WSBinding) : String;
	
	@:overload @:public override public function getID(av : com.sun.xml.internal.ws.api.addressing.AddressingVersion, sv : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	
}
