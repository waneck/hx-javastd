package com.sun.xml.internal.ws.message;
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
extern class AbstractMessageImpl extends com.sun.xml.internal.ws.api.message.Message
{
	/**
	* SOAP version of this message.
	* Used to implement some of the methods, but nothing more than that.
	*
	* <p>
	* So if you aren't using those methods that use this field,
	* this can be null.
	*/
	@:protected @:final private var soapVersion(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	@:overload @:protected private function new(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : Void;
	
	/**
	* Copy constructor.
	*/
	@:overload @:protected private function new(that : com.sun.xml.internal.ws.message.AbstractMessageImpl) : Void;
	
	@:overload @:public override public function readEnvelopeAsSource() : javax.xml.transform.Source;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload @:public override public function readPayloadAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	/**
	* Default implementation that relies on {@link #writePayloadTo(XMLStreamWriter)}
	*/
	@:overload @:public override public function writeTo(w : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Writes the whole envelope as SAX events.
	*/
	@:overload @:public override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Writes the payload to SAX events.
	*
	* @param fragment
	*      if true, this method will fire SAX events without start/endDocument events,
	*      suitable for embedding this into a bigger SAX event sequence.
	*      if false, this method generaets a completely SAX event sequence on its own.
	*/
	@:overload @:protected @:abstract private function writePayloadTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, fragment : Bool) : Void;
	
	/**
	* Default implementation that uses {@link #writeTo(ContentHandler, ErrorHandler)}
	*/
	@:overload @:public override public function readAsSOAPMessage() : javax.xml.soap.SOAPMessage;
	
	/**
	*
	*/
	@:overload @:public override public function readAsSOAPMessage(packet : com.sun.xml.internal.ws.api.message.Packet, inbound : Bool) : javax.xml.soap.SOAPMessage;
	
	@:protected @:static @:final private static var EMPTY_ATTS(default, null) : org.xml.sax.helpers.AttributesImpl;
	
	@:protected @:static @:final private static var NULL_LOCATOR(default, null) : org.xml.sax.helpers.LocatorImpl;
	
	
}
