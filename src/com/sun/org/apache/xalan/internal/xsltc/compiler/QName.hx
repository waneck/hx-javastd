package com.sun.org.apache.xalan.internal.xsltc.compiler;
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
* $Id: QName.java,v 1.2.4.1 2005/09/02 11:45:56 pvedula Exp $
*/
/**
* @author Jacek Ambroziak
* @author Santiago Pericas-Geertsen
* @author Morten Jorgensen
*/
@:internal extern class QName
{
	@:overload public function new(namespace : String, prefix : String, localname : String) : Void;
	
	@:overload public function clearNamespace() : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function getStringRep() : String;
	
	@:overload public function equals(other : Dynamic) : Bool;
	
	@:overload public function getLocalPart() : String;
	
	@:overload public function getNamespace() : String;
	
	@:overload public function getPrefix() : String;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function dump() : String;
	
	
}
