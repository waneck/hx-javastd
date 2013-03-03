package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
extern class DOMInputSource extends com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(node : org.w3c.dom.Node) : Void;
	
	@:overload @:public public function new(node : org.w3c.dom.Node, systemId : String) : Void;
	
	@:overload @:public public function getNode() : org.w3c.dom.Node;
	
	@:overload @:public public function setNode(node : org.w3c.dom.Node) : Void;
	
	
}
