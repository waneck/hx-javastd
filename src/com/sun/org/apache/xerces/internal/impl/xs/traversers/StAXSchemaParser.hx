package com.sun.org.apache.xerces.internal.impl.xs.traversers;
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
@:internal extern class StAXSchemaParser
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function reset(schemaDOMParser : com.sun.org.apache.xerces.internal.impl.xs.opti.SchemaDOMParser, symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload @:public public function getDocument() : org.w3c.dom.Document;
	
	@:overload @:public public function parse(input : javax.xml.stream.XMLEventReader) : Void;
	
	@:overload @:public public function parse(input : javax.xml.stream.XMLStreamReader) : Void;
	
	
}
