package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class SchemaDOM extends com.sun.org.apache.xerces.internal.impl.xs.opti.DefaultDocument
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, line : Int, column : Int, offset : Int) : com.sun.org.apache.xerces.internal.impl.xs.opti.ElementImpl;
	
	@:overload @:public public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, line : Int, column : Int, offset : Int) : com.sun.org.apache.xerces.internal.impl.xs.opti.ElementImpl;
	
	@:overload @:public public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, line : Int, column : Int) : com.sun.org.apache.xerces.internal.impl.xs.opti.ElementImpl;
	
	@:overload @:public public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, line : Int, column : Int) : com.sun.org.apache.xerces.internal.impl.xs.opti.ElementImpl;
	
	@:overload @:public public function endElement() : Void;
	
	@:overload @:public public function reset() : Void;
	
	@:overload @:public public function printDOM() : Void;
	
	@:overload @:public @:static public static function traverse(node : org.w3c.dom.Node, depth : Int) : Void;
	
	@:overload @:public @:static public static function indent(amount : Int) : Void;
	
	@:overload @:public override public function getDocumentElement() : org.w3c.dom.Element;
	
	@:overload @:public override public function getImplementation() : org.w3c.dom.DOMImplementation;
	
	
}
