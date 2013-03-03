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
extern class XMLGrammarCachingConfiguration extends com.sun.org.apache.xerces.internal.parsers.XIncludeAwareParserConfiguration
{
	/**
	* <p> This configuration provides a generic way of using
	* Xerces's grammar caching facilities.  It extends the
	* XIncludeAwareParserConfiguration and thus may validate documents
	* according to XML schemas or DTD's.  It also allows the user to
	* preparse a grammar, and to lock the grammar pool
	* implementation such that no more grammars will be added.</p>
	* <p> Using the com.sun.org.apache.xerces.internal.xni.parser property, an
	* application may instantiate a Xerces SAX or DOM parser with
	* this configuration.  When invoked in this manner, the default
	* behaviour will be elicited; to use this configuration's
	* specific facilities, the user will need to reference it
	* directly.</p>
	* <p>
	* In addition to the features and properties recognized by the base
	* parser configuration, this class recognizes these additional
	* features and properties:
	* <ul>
	* </ul>
	*
	* @author Neil Graham, IBM
	*
	* @version $Id: XMLGrammarCachingConfiguration.java,v 1.6 2010-11-01 04:40:10 joehw Exp $
	*/
	@:public @:static @:final public static var BIG_PRIME(default, null) : Int;
	
	@:protected @:static @:final private static var fStaticSymbolTable(default, null) : com.sun.org.apache.xerces.internal.util.SynchronizedSymbolTable;
	
	@:protected @:static @:final private static var fStaticGrammarPool(default, null) : com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl;
	
	@:protected @:static @:final private static var SCHEMA_FULL_CHECKING(default, null) : String;
	
	@:protected private var fSchemaLoader : com.sun.org.apache.xerces.internal.impl.xs.XMLSchemaLoader;
	
	@:protected private var fDTDLoader : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDLoader;
	
	/** Default constructor. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a parser configuration using the specified symbol table.
	*
	* @param symbolTable The symbol table to use.
	*/
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
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
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
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
	@:overload @:public public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool, parentSettings : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/*
	* lock the XMLGrammarPoolImpl object so that it does not
	* accept any more grammars from the validators.
	*/
	@:overload @:public public function lockGrammarPool() : Void;
	
	/*
	* clear the XMLGrammarPoolImpl object so that it does not
	* contain any more grammars.
	*/
	@:overload @:public public function clearGrammarPool() : Void;
	
	/*
	* unlock the XMLGrammarPoolImpl object so that it
	* accepts more grammars from the validators.
	*/
	@:overload @:public public function unlockGrammarPool() : Void;
	
	/**
	* Parse a grammar from a location identified by an URI.
	* This method also adds this grammar to the XMLGrammarPool
	*
	* @param type The type of the grammar to be constructed
	* @param uri The location of the grammar to be constructed.
	* <strong>The parser will not expand this URI or make it
	* available to the EntityResolver</strong>
	* @return The newly created <code>Grammar</code>.
	* @exception XNIException thrown on an error in grammar
	* construction
	* @exception IOException thrown if an error is encountered
	* in reading the file
	*/
	@:overload @:public public function parseGrammar(type : String, uri : String) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Parse a grammar from a location identified by an
	* XMLInputSource.
	* This method also adds this grammar to the XMLGrammarPool
	*
	* @param type The type of the grammar to be constructed
	* @param is The XMLInputSource containing this grammar's
	* information
	* <strong>If a URI is included in the systemId field, the parser will not expand this URI or make it
	* available to the EntityResolver</strong>
	* @return The newly created <code>Grammar</code>.
	* @exception XNIException thrown on an error in grammar
	* construction
	* @exception IOException thrown if an error is encountered
	* in reading the file
	*/
	@:overload @:public public function parseGrammar(type : String, is : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	
}
