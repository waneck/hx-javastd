package com.sun.org.apache.xerces.internal.impl.xs.opti;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class NamedNodeMapImpl implements org.w3c.dom.NamedNodeMap
{
	@:overload public function new(attrs : java.NativeArray<org.w3c.dom.Attr>) : Void;
	
	@:overload public function getNamedItem(name : String) : org.w3c.dom.Node;
	
	@:overload public function item(index : Int) : org.w3c.dom.Node;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	@:overload public function setNamedItemNS(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function setNamedItem(arg : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	@:overload public function removeNamedItem(name : String) : org.w3c.dom.Node;
	
	@:overload public function removeNamedItemNS(namespaceURI : String, localName : String) : org.w3c.dom.Node;
	
	
}
