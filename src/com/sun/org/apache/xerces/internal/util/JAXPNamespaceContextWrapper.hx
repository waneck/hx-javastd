package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class JAXPNamespaceContextWrapper implements com.sun.org.apache.xerces.internal.xni.NamespaceContext
{
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload @:public public function setNamespaceContext(context : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload @:public public function getNamespaceContext() : javax.xml.namespace.NamespaceContext;
	
	@:overload @:public public function setSymbolTable(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload @:public public function getSymbolTable() : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	@:overload @:public public function setDeclaredPrefixes(prefixes : java.util.List<Dynamic>) : Void;
	
	@:overload @:public public function getDeclaredPrefixes() : java.util.List<Dynamic>;
	
	/*
	* NamespaceContext methods
	*/
	@:overload @:public public function getURI(prefix : String) : String;
	
	@:overload @:public public function getPrefix(uri : String) : String;
	
	@:overload @:public public function getAllPrefixes() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function pushContext() : Void;
	
	@:overload @:public public function popContext() : Void;
	
	@:overload @:public public function declarePrefix(prefix : String, uri : String) : Bool;
	
	@:overload @:public public function getDeclaredPrefixCount() : Int;
	
	@:overload @:public public function getDeclaredPrefixAt(index : Int) : String;
	
	@:overload @:public public function reset() : Void;
	
	
}
