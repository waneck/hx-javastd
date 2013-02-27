package com.sun.org.apache.xalan.internal.xsltc.runtime;
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
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: Attributes.java,v 1.2.4.1 2005/09/06 10:53:04 pvedula Exp $
*/
extern class Attributes implements org.xml.sax.AttributeList
{
	@:overload public function new(document : com.sun.org.apache.xalan.internal.xsltc.DOM, element : Int) : Void;
	
	@:overload public function getLength() : Int;
	
	@:overload public function getName(i : Int) : String;
	
	@:overload public function getType(i : Int) : String;
	
	@:overload public function getType(name : String) : String;
	
	@:overload public function getValue(i : Int) : String;
	
	@:overload public function getValue(name : String) : String;
	
	
}
