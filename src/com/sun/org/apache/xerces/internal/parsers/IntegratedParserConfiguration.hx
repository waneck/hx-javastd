package com.sun.org.apache.xerces.internal.parsers;
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
extern class IntegratedParserConfiguration extends com.sun.org.apache.xerces.internal.parsers.StandardParserConfiguration
{
	/** Document scanner that does namespace binding. */
	private var fNamespaceScanner : com.sun.org.apache.xerces.internal.impl.XMLNSDocumentScannerImpl;
	
	/** Default Xerces implementation of scanner */
	private var fNonNSScanner : com.sun.org.apache.xerces.internal.impl.XMLDocumentScannerImpl;
	
	/** DTD Validator that does not bind namespaces */
	private var fNonNSDTDValidator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
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
	
	/** Configures the pipeline. */
	@:overload override private function configurePipeline() : Void;
	
	/** Create a document scanner: this scanner performs namespace binding
	*/
	@:overload override private function createDocumentScanner() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentScanner;
	
	/** Create a DTD validator: this validator performs namespace binding.
	*/
	@:overload override private function createDTDValidator() : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator;
	
	
}
