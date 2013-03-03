package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2005 The Apache Software Foundation.
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
extern class SAXParser extends com.sun.org.apache.xerces.internal.parsers.AbstractSAXParser
{
	/** Feature identifier: notify built-in refereces. */
	@:protected @:static @:final private static var NOTIFY_BUILTIN_REFS(default, null) : String;
	
	@:protected @:static @:final private static var REPORT_WHITESPACE(default, null) : String;
	
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: XML grammar pool. */
	@:protected @:static @:final private static var XMLGRAMMAR_POOL(default, null) : String;
	
	/**
	* Constructs a SAX parser using the specified parser configuration.
	*/
	@:overload @:public public function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* Constructs a SAX parser using the dtd/xml schema parser configuration.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a SAX parser using the specified symbol table.
	*/
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a SAX parser using the specified symbol table and
	* grammar pool.
	*/
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	
}
