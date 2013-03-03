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
* $Id: StringValueHandler.java,v 1.2.4.1 2005/09/06 11:33:25 pvedula Exp $
*/
extern class StringValueHandler extends com.sun.org.apache.xml.internal.serializer.EmptySerializer
{
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, off : Int, len : Int) : Void;
	
	@:overload @:public public function getValue() : String;
	
	@:overload @:public override public function characters(characters : String) : Void;
	
	@:overload @:public override public function startElement(qname : String) : Void;
	
	@:overload @:public override public function endElement(qname : String) : Void;
	
	@:overload @:public override public function setEscaping(bool : Bool) : Bool;
	
	/**
	* The value of a PI must not contain the substring "?>". Should
	* that substring be present, replace it by "? >".
	*/
	@:overload @:public public function getValueOfPI() : String;
	
	
}
