package com.sun.org.apache.xerces.internal.parsers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
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
extern class CachingParserPool
{
	/** Default shadow symbol table (false). */
	public static var DEFAULT_SHADOW_SYMBOL_TABLE(default, null) : Bool;
	
	/** Default shadow grammar pool (false). */
	public static var DEFAULT_SHADOW_GRAMMAR_POOL(default, null) : Bool;
	
	/**
	* Symbol table. The symbol table that the caching parser pool is
	* constructed with is automatically wrapped in a synchronized
	* version for thread-safety.
	*/
	private var fSynchronizedSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/**
	* Grammar pool. The grammar pool that the caching parser pool is
	* constructed with is automatically wrapped in a synchronized
	* version for thread-safety.
	*/
	private var fSynchronizedGrammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/**
	* Shadow the symbol table for new parser instances. If true,
	* new parser instances use shadow copies of the main symbol
	* table and are not allowed to add new symbols to the main
	* symbol table. New symbols are added to the shadow symbol
	* table and are local to the parser instance.
	*/
	private var fShadowSymbolTable : Bool;
	
	/**
	* Shadow the grammar pool for new parser instances. If true,
	* new parser instances use shadow copies of the main grammar
	* pool and are not allowed to add new grammars to the main
	* grammar pool. New grammars are added to the shadow grammar
	* pool and are local to the parser instance.
	*/
	private var fShadowGrammarPool : Bool;
	
	/** Default constructor. */
	@:overload public function new() : Void;
	
	/**
	* Constructs a caching parser pool with the specified symbol table
	* and grammar pool.
	*
	* @param symbolTable The symbol table.
	* @param grammarPool The grammar pool.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/** Returns the symbol table. */
	@:overload public function getSymbolTable() : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Returns the grammar pool. */
	@:overload public function getXMLGrammarPool() : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool;
	
	/**
	* Sets whether new parser instance receive shadow copies of the
	* main symbol table.
	*
	* @param shadow If true, new parser instances use shadow copies
	*               of the main symbol table and are not allowed to
	*               add new symbols to the main symbol table. New
	*               symbols are added to the shadow symbol table and
	*               are local to the parser instance. If false, new
	*               parser instances are allowed to add new symbols
	*               to the main symbol table.
	*/
	@:overload public function setShadowSymbolTable(shadow : Bool) : Void;
	
	/** Creates a new DOM parser. */
	@:overload public function createDOMParser() : com.sun.org.apache.xerces.internal.parsers.DOMParser;
	
	/** Creates a new SAX parser. */
	@:overload public function createSAXParser() : com.sun.org.apache.xerces.internal.parsers.SAXParser;
	
	
}
/**
* Synchronized grammar pool.
*
* @author Andy Clark, IBM
*/
@:native('com$sun$org$apache$xerces$internal$parsers$CachingParserPool$SynchronizedGrammarPool') extern class CachingParserPool_SynchronizedGrammarPool implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
{
	/** Constructs a synchronized grammar pool. */
	@:overload public function new(grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	@:overload public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	@:overload public function retrieveGrammar(gDesc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	/** lock the grammar pool */
	@:overload public function lockPool() : Void;
	
	/** clear the grammar pool */
	@:overload public function clear() : Void;
	
	/** unlock the grammar pool */
	@:overload public function unlockPool() : Void;
	
	
}
/**
* Shadowed grammar pool.
* This class is predicated on the existence of a concrete implementation;
* so using our own doesn't seem to bad an idea.
*
* @author Andy Clark, IBM
* @author Neil Graham, IBM
*/
@:native('com$sun$org$apache$xerces$internal$parsers$CachingParserPool$ShadowedGrammarPool') extern class CachingParserPool_ShadowedGrammarPool extends com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl
{
	/** Constructs a shadowed grammar pool. */
	@:overload public function new(grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Retrieve the initial set of grammars for the validator to work with.
	* REVISIT:  does this need to be synchronized since it's just reading?
	*
	* @param grammarType Type of the grammars to be retrieved.
	* @return            The initial grammar set the validator may place in its "bucket"
	*/
	@:overload override public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	/**
	* Retrieve a particular grammar.
	* REVISIT:  does this need to be synchronized since it's just reading?
	*
	* @param gDesc Description of the grammar to be retrieved
	* @return      Grammar corresponding to gDesc, or null if none exists.
	*/
	@:overload override public function retrieveGrammar(gDesc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Give the grammarPool the option of caching these grammars.
	* This certainly must be synchronized.
	*
	* @param grammarType The type of the grammars to be cached.
	* @param grammars    The Grammars that may be cached (unordered, Grammars previously
	*                    given to the validator may be included).
	*/
	@:overload override public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	/**
	* Returns the grammar associated to the specified description.
	*
	* @param desc The description of the grammar.
	*/
	@:overload override public function getGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Returns true if the grammar pool contains a grammar associated
	* to the specified description.
	*
	* @param desc The description of the grammar.
	*/
	@:overload override public function containsGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : Bool;
	
	
}
