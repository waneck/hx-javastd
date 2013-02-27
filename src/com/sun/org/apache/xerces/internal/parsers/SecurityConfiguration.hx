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
extern class SecurityConfiguration extends com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration
{
	/**
	* This configuration allows Xerces to behave in a security-conscious manner; that is,
	* it permits applications to instruct Xerces to limit certain
	* operations that could be exploited by malicious document authors to cause a denail-of-service
	* attack when the document is parsed.
	*
	* In addition to the features and properties recognized by the base
	* parser configuration, this class recognizes these additional
	* features and properties:
	* <ul>
	* <li>Properties
	*  <ul>
	*   <li>http://apache.org/xml/properties/security-manager</li>
	*  </ul>
	* </ul>
	*
	* @author Neil Graham, IBM
	*
	*/
	private static var SECURITY_MANAGER_PROPERTY(default, null) : String;
	
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
	* <strong>REVISIT:</strong>
	* Grammar pool will be updated when the new validation engine is
	* implemented.
	*
	* @param symbolTable The symbol table to use.
	* @param grammarPool The grammar pool to use.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table,
	* grammar pool, and parent settings.
	* <p>
	* <strong>REVISIT:</strong>
	* Grammar pool will be updated when the new validation engine is
	* implemented.
	*
	* @param symbolTable    The symbol table to use.
	* @param grammarPool    The grammar pool to use.
	* @param parentSettings The parent settings.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	
}
