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
extern class InterningXmlVisitor implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor
{
	@:overload @:public public function new(next : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor) : Void;
	
	@:overload @:public public function startDocument(locator : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:public public function startElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:public public function endElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload @:public public function startPrefixMapping(prefix : String, nsUri : String) : Void;
	
	@:overload @:public public function endPrefixMapping(prefix : String) : Void;
	
	@:overload @:public public function text(pcdata : java.lang.CharSequence) : Void;
	
	@:overload @:public public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	@:overload @:public public function getPredictor() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor;
	
	
}
@:native('com$sun$xml$internal$bind$v2$runtime$unmarshaller$InterningXmlVisitor$AttributesImpl') @:internal extern class InterningXmlVisitor_AttributesImpl implements org.xml.sax.Attributes
{
	@:overload @:public public function getIndex(qName : String) : Int;
	
	@:overload @:public public function getIndex(uri : String, localName : String) : Int;
	
	@:overload @:public public function getLength() : Int;
	
	@:overload @:public public function getLocalName(index : Int) : String;
	
	@:overload @:public public function getQName(index : Int) : String;
	
	@:overload @:public public function getType(index : Int) : String;
	
	@:overload @:public public function getType(qName : String) : String;
	
	@:overload @:public public function getType(uri : String, localName : String) : String;
	
	@:overload @:public public function getURI(index : Int) : String;
	
	@:overload @:public public function getValue(index : Int) : String;
	
	@:overload @:public public function getValue(qName : String) : String;
	
	@:overload @:public public function getValue(uri : String, localName : String) : String;
	
	
}
