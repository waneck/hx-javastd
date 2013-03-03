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
extern class StreamHeader extends com.sun.xml.internal.ws.message.AbstractHeaderImpl
{
	/**
	* {@link Header} whose physical data representation is an XMLStreamBuffer.
	*
	* @author Paul.Sandoz@Sun.Com
	*/
	@:protected @:final private var _mark(default, null) : com.sun.xml.internal.stream.buffer.XMLStreamBuffer;
	
	@:protected private var _isMustUnderstand : Bool;
	
	/**
	* Role or actor value.
	*/
	@:protected private var _role : String;
	
	@:protected private var _isRelay : Bool;
	
	@:protected private var _localName : String;
	
	@:protected private var _namespaceURI : String;
	
	/**
	* Creates a {@link StreamHeader}.
	*
	* @param reader
	*      The parser pointing at the start of the mark.
	*      Technically this information is redundant,
	*      but it achieves a better performance.
	* @param mark
	*      The start of the buffered header content.
	*/
	@:overload @:protected private function new(reader : javax.xml.stream.XMLStreamReader, mark : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : Void;
	
	/**
	* Creates a {@link StreamHeader}.
	*
	* @param reader
	*      The parser that points to the start tag of the header.
	*      By the end of this method, the parser will point at
	*      the end tag of this element.
	*/
	@:overload @:protected private function new(reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:public @:final override public function isIgnorable(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion, roles : java.util.Set<String>) : Bool;
	
	@:overload @:public override public function getRole(soapVersion : com.sun.xml.internal.ws.api.SOAPVersion) : String;
	
	@:overload @:public override public function isRelay() : Bool;
	
	@:overload @:public override public function getNamespaceURI() : String;
	
	@:overload @:public override public function getLocalPart() : String;
	
	@:overload @:public override public function getAttribute(nsUri : String, localName : String) : String;
	
	/**
	* Reads the header as a {@link XMLStreamReader}
	*/
	@:overload @:public override public function readHeader() : javax.xml.stream.XMLStreamReader;
	
	@:overload @:public override public function writeTo(w : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public override public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	@:overload @:public override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	/**
	* Creates an EPR without copying infoset.
	*
	* This is the most common implementation on which {@link Header#readAsEPR(AddressingVersion)}
	* is invoked on.
	*/
	@:overload @:public override public function readAsEPR(expected : com.sun.xml.internal.ws.api.addressing.AddressingVersion) : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	@:overload @:protected @:abstract private function processHeaderAttributes(reader : javax.xml.stream.XMLStreamReader) : com.sun.istack.internal.FinalArrayList<com.sun.xml.internal.ws.message.stream.StreamHeader.StreamHeader_Attribute>;
	
	
}
/**
* Keep the information about an attribute on the header element.
*
* TODO: this whole attribute handling could be done better, I think.
*/
@:native('com$sun$xml$internal$ws$message$stream$StreamHeader$Attribute') extern class StreamHeader_Attribute
{
	@:overload @:public public function new(nsUri : String, localName : String, value : String) : Void;
	
	
}
