package com.sun.tools.internal.ws.wsdl.framework;
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
extern class TWSDLParserContextImpl implements com.sun.tools.internal.ws.api.wsdl.TWSDLParserContext
{
	@:overload @:public public function new(forest : com.sun.tools.internal.ws.wsdl.parser.DOMForest, doc : com.sun.tools.internal.ws.wsdl.framework.AbstractDocument, listeners : java.util.ArrayList<com.sun.tools.internal.ws.wsdl.framework.ParserListener>, errReceiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:public public function getDocument() : com.sun.tools.internal.ws.wsdl.framework.AbstractDocument;
	
	@:overload @:public public function getFollowImports() : Bool;
	
	@:overload @:public public function setFollowImports(b : Bool) : Void;
	
	@:overload @:public public function push() : Void;
	
	@:overload @:public public function pop() : Void;
	
	@:overload @:public public function getNamespaceURI(prefix : String) : String;
	
	@:overload @:public public function getPrefixes() : java.lang.Iterable<String>;
	
	@:overload @:public public function getDefaultNamespaceURI() : String;
	
	@:overload @:public public function registerNamespaces(e : org.w3c.dom.Element) : Void;
	
	@:overload @:public public function getLocation(e : org.w3c.dom.Element) : org.xml.sax.Locator;
	
	@:overload @:public public function translateQualifiedName(locator : org.xml.sax.Locator, s : String) : javax.xml.namespace.QName;
	
	@:overload @:public public function fireIgnoringExtension(e : org.w3c.dom.Element, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload @:public public function fireDoneParsingEntity(element : javax.xml.namespace.QName, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	@:overload @:public public function pushWSDLLocation() : Void;
	
	@:overload @:public public function popWSDLLocation() : Void;
	
	@:overload @:public public function setWSDLLocation(loc : String) : Void;
	
	@:overload @:public public function getWSDLLocation() : String;
	
	
}
