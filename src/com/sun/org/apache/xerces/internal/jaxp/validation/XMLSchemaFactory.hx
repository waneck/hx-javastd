package com.sun.org.apache.xerces.internal.jaxp.validation;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
extern class XMLSchemaFactory extends javax.xml.validation.SchemaFactory
{
	@:overload public function new() : Void;
	
	@:overload public static function newXMLSchemaFactoryNoServiceLoader() : XMLSchemaFactory;
	
	/**
	* <p>Is specified schema supported by this <code>SchemaFactory</code>?</p>
	*
	* @param schemaLanguage Specifies the schema language which the returned <code>SchemaFactory</code> will understand.
	*    <code>schemaLanguage</code> must specify a <a href="#schemaLanguage">valid</a> schema language.
	*
	* @return <code>true</code> if <code>SchemaFactory</code> supports <code>schemaLanguage</code>, else <code>false</code>.
	*
	* @throws NullPointerException If <code>schemaLanguage</code> is <code>null</code>.
	* @throws IllegalArgumentException If <code>schemaLanguage.length() == 0</code>
	*   or <code>schemaLanguage</code> does not specify a <a href="#schemaLanguage">valid</a> schema language.
	*/
	@:overload override public function isSchemaLanguageSupported(schemaLanguage : String) : Bool;
	
	@:overload override public function getResourceResolver() : org.w3c.dom.ls.LSResourceResolver;
	
	@:overload override public function setResourceResolver(resourceResolver : org.w3c.dom.ls.LSResourceResolver) : Void;
	
	@:overload override public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload override public function setErrorHandler(errorHandler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload override public function newSchema(schemas : java.NativeArray<javax.xml.transform.Source>) : javax.xml.validation.Schema;
	
	@:overload override public function newSchema() : javax.xml.validation.Schema;
	
	@:overload override public function getFeature(name : String) : Bool;
	
	@:overload override public function getProperty(name : String) : Dynamic;
	
	@:overload override public function setFeature(name : String, value : Bool) : Void;
	
	@:overload override public function setProperty(name : String, object : Dynamic) : Void;
	
	
}
/**
* Extension of XMLGrammarPoolImpl which exposes the number of
* grammars stored in the grammar pool.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$XMLSchemaFactory$XMLGrammarPoolImplExtension') @:internal extern class XMLSchemaFactory_XMLGrammarPoolImplExtension extends com.sun.org.apache.xerces.internal.util.XMLGrammarPoolImpl
{
	/** Constructs a grammar pool with a default number of buckets. */
	@:overload public function new() : Void;
	
	/** Constructs a grammar pool with a specified number of buckets. */
	@:overload public function new(initialCapacity : Int) : Void;
	
	
}
/**
* A grammar pool which wraps another.
*/
@:native('com$sun$org$apache$xerces$internal$jaxp$validation$XMLSchemaFactory$XMLGrammarPoolWrapper') @:internal extern class XMLSchemaFactory_XMLGrammarPoolWrapper implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
{
	/*
	* XMLGrammarPool methods
	*/
	@:overload public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	@:overload public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	@:overload public function retrieveGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload public function lockPool() : Void;
	
	@:overload public function unlockPool() : Void;
	
	@:overload public function clear() : Void;
	
	
}
