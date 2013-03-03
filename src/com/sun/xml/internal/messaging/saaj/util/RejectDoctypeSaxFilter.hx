package com.sun.xml.internal.messaging.saaj.util;
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
extern class RejectDoctypeSaxFilter extends org.xml.sax.helpers.XMLFilterImpl implements org.xml.sax.XMLReader implements org.xml.sax.ext.LexicalHandler
{
	/**
	* Users of this class see a SAX2 XMLReader (via XMLFilterImpl).  This
	* class creates a parent XMLReader via JAXP and installs itself as a SAX2
	* extension LexicalHandler which rejects document type declarations
	* because they are not legal in SOAP.  If the user of this class sets a
	* LexicalHandler, then it forwards events to that handler.
	*
	*
	* @author Edwin Goei
	*/
	@:protected @:static @:final private static var log(default, null) : java.util.logging.Logger;
	
	@:overload @:public public function new(saxParser : javax.xml.parsers.SAXParser) : Void;
	
	/*
	* Override setProperty() to capture any LexicalHandler that is set for
	* forwarding of events.
	*/
	@:overload @:public override public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public override public function startElement(namespaceURI : String, localName : String, qName : String, atts : org.xml.sax.Attributes) : Void;
	
	
}
