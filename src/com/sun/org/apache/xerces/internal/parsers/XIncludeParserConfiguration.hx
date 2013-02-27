package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2005 The Apache Software Foundation.
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
extern class XIncludeParserConfiguration extends com.sun.org.apache.xerces.internal.parsers.XML11Configuration
{
	/** Feature identifier: allow notation and unparsed entity events to be sent out of order. */
	private static var ALLOW_UE_AND_NOTATION_EVENTS(default, null) : String;
	
	/** Feature identifier: fixup base URIs. */
	private static var XINCLUDE_FIXUP_BASE_URIS(default, null) : String;
	
	/** Feature identifier: fixup language. */
	private static var XINCLUDE_FIXUP_LANGUAGE(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var XINCLUDE_HANDLER(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var NAMESPACE_CONTEXT(default, null) : String;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table and
	* grammar pool.
	* <p>
	*
	* @param symbolTable The symbol table to use.
	* @param grammarPool The grammar pool to use.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table,
	* grammar pool, and parent settings.
	* <p>
	*
	* @param symbolTable    The symbol table to use.
	* @param grammarPool    The grammar pool to use.
	* @param parentSettings The parent settings.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/** Configures the pipeline. */
	@:overload override private function configurePipeline() : Void;
	
	@:overload override private function configureXML11Pipeline() : Void;
	
	@:overload override public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	
}
