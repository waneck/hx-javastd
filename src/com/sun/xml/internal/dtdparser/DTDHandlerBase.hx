package com.sun.xml.internal.dtdparser;
/*
* Copyright (c) 1998, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class DTDHandlerBase implements com.sun.xml.internal.dtdparser.DTDEventListener
{
	/**
	* do-nothing implementation of DTDEventHandler.
	*/
	@:overload @:public public function processingInstruction(target : String, data : String) : Void;
	
	@:overload @:public public function setDocumentLocator(loc : org.xml.sax.Locator) : Void;
	
	@:overload @:public public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function warning(err : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public public function notationDecl(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function unparsedEntityDecl(name : String, publicId : String, systemId : String, notationName : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function externalGeneralEntityDecl(n : String, p : String, s : String) : Void;
	
	@:overload @:public public function internalGeneralEntityDecl(n : String, v : String) : Void;
	
	@:overload @:public public function externalParameterEntityDecl(n : String, p : String, s : String) : Void;
	
	@:overload @:public public function internalParameterEntityDecl(n : String, v : String) : Void;
	
	@:overload @:public public function startDTD(_in : com.sun.xml.internal.dtdparser.InputEntity) : Void;
	
	@:overload @:public public function comment(n : String) : Void;
	
	@:overload @:public public function characters(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function ignorableWhitespace(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, length : Int) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	@:overload @:public public function startContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function endContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function attributeDecl(elementName : String, attributeName : String, attributeType : String, enumeration : java.NativeArray<String>, attributeUse : java.StdTypes.Int16, defaultValue : String) : Void;
	
	@:overload @:public public function childElement(elementName : String, occurence : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function mixedElement(elementName : String) : Void;
	
	@:overload @:public public function startModelGroup() : Void;
	
	@:overload @:public public function endModelGroup(occurence : java.StdTypes.Int16) : Void;
	
	@:overload @:public public function connector(connectorType : java.StdTypes.Int16) : Void;
	
	
}
