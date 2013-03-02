package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class SAXConnector implements javax.xml.bind.UnmarshallerHandler
{
	/**
	* @param externalLocator
	*      If the caller is producing SAX events from sources other than Unicode and angle brackets,
	*      the caller can override the default SAX {@link Locator} object by this object
	*      to provide better location information.
	*/
	@:overload public function new(next : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor, externalLocator : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx) : Void;
	
	@:overload public function getResult() : Dynamic;
	
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	@:overload public function setDocumentLocator(locator : org.xml.sax.Locator) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startPrefixMapping(prefix : String, uri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function startElement(uri : String, local : String, qname : String, atts : org.xml.sax.Attributes) : Void;
	
	@:overload public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:final public function characters(buf : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload @:final public function ignorableWhitespace(buf : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : Void;
	
	@:overload public function processingInstruction(target : String, data : String) : Void;
	
	@:overload public function skippedEntity(name : String) : Void;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$SAXConnector$TagNameImpl') @:internal extern class SAXConnector_TagNameImpl extends com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName
{
	@:overload public function getQname() : String;
	
	
}
