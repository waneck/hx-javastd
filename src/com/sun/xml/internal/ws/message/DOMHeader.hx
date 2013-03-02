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
extern class DOMHeader<N> extends com.sun.xml.internal.ws.message.AbstractHeaderImpl
{
	/**
	* {@link com.sun.xml.internal.ws.api.message.Header} implementation for a DOM.
	*
	* @author Kohsuke Kawaguchi
	*/
	private var node(default, null) : N;
	
	@:overload public function new(node : N) : Void;
	
	@:overload override public function getNamespaceURI() : String;
	
	@:overload override public function getLocalPart() : String;
	
	@:overload override public function readHeader() : javax.xml.stream.XMLStreamReader;
	
	@:overload public function readAsJAXB<T>(unmarshaller : javax.xml.bind.Unmarshaller) : T;
	
	@:overload public function readAsJAXB<T>(bridge : com.sun.xml.internal.bind.api.Bridge<T>) : T;
	
	@:overload override public function writeTo(w : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload override public function writeTo(contentHandler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload public function getAttribute(nsUri : String, localName : String) : String;
	
	@:overload override public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	@:overload public function getStringContent() : String;
	
	
}
