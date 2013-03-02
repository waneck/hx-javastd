package com.sun.tools.internal.xjc.reader.dtd;
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
extern class TDTDReader extends com.sun.xml.internal.dtdparser.DTDHandlerBase
{
	/**
	* Parses DTD grammar and a binding information into BGM.
	*
	* <p>
	* This method is just a utility method that covers 80% of the use
	* cases.
	*
	* @param    bindingInfo
	*        binding information file, if any. Can be null.
	*/
	@:overload public static function parse(dtd : org.xml.sax.InputSource, bindingInfo : org.xml.sax.InputSource, errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver, opts : com.sun.tools.internal.xjc.Options) : com.sun.tools.internal.xjc.model.Model;
	
	@:overload private function new(errorReceiver : com.sun.tools.internal.xjc.ErrorReceiver, opts : com.sun.tools.internal.xjc.Options, _bindInfo : org.xml.sax.InputSource) : Void;
	
	@:overload public function startDTD(entity : com.sun.xml.internal.dtdparser.InputEntity) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function attributeDecl(elementName : String, attributeName : String, attributeType : String, enumeration : java.NativeArray<String>, attributeUse : java.StdTypes.Int16, defaultValue : String) : Void;
	
	@:overload private function createAttribute(elementName : String, attributeName : String, attributeType : String, enums : java.NativeArray<String>, attributeUse : java.StdTypes.Int16, defaultValue : String) : com.sun.tools.internal.xjc.model.CPropertyInfo;
	
	@:overload public function startContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	@:overload public function endContentModel(elementName : String, contentModelType : java.StdTypes.Int16) : Void;
	
	@:overload public function startModelGroup() : Void;
	
	@:overload public function endModelGroup(occurence : java.StdTypes.Int16) : Void;
	
	@:overload public function connector(connectorType : java.StdTypes.Int16) : Void;
	
	@:overload public function childElement(elementName : String, occurence : java.StdTypes.Int16) : Void;
	
	@:overload public function setDocumentLocator(loc : org.xml.sax.Locator) : Void;
	
	@:overload public function error(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function fatalError(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload public function warning(e : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:final private function error(loc : org.xml.sax.Locator, prop : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$dtd$TDTDReader$InterfaceAcceptor') @:internal extern interface TDTDReader_InterfaceAcceptor
{
	@:overload public function implement(c : com.sun.codemodel.internal.JClass) : Void;
	
	
}
