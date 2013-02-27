package com.sun.org.apache.xerces.internal.impl.xs.traversers;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
extern class XSDHandler
{
	/** Feature identifier: validation. */
	private static var VALIDATION(default, null) : String;
	
	/** feature identifier: XML Schema validation */
	private static var XMLSCHEMA_VALIDATION(default, null) : String;
	
	/** Feature identifier:  allow java encodings */
	private static var ALLOW_JAVA_ENCODINGS(default, null) : String;
	
	/** Feature identifier:  continue after fatal error */
	private static var CONTINUE_AFTER_FATAL_ERROR(default, null) : String;
	
	/** Feature identifier:  allow java encodings */
	private static var STANDARD_URI_CONFORMANT_FEATURE(default, null) : String;
	
	/** Feature: disallow doctype*/
	private static var DISALLOW_DOCTYPE(default, null) : String;
	
	/** Feature: generate synthetic annotations */
	private static var GENERATE_SYNTHETIC_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: validate annotations. */
	private static var VALIDATE_ANNOTATIONS(default, null) : String;
	
	/** Feature identifier: honour all schemaLocations */
	private static var HONOUR_ALL_SCHEMALOCATIONS(default, null) : String;
	
	/** Feature identifier: namespace growth */
	private static var NAMESPACE_GROWTH(default, null) : String;
	
	/** Feature identifier: tolerate duplicates */
	private static var TOLERATE_DUPLICATES(default, null) : String;
	
	/** Feature identifier: string interning. */
	private static var STRING_INTERNING(default, null) : String;
	
	/** Property identifier: error handler. */
	private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: JAXP schema source. */
	private static var JAXP_SCHEMA_SOURCE(default, null) : String;
	
	/** Property identifier: entity resolver. */
	public static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: entity manager. */
	private static var ENTITY_MANAGER(default, null) : String;
	
	/** Property identifier: error reporter. */
	public static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: grammar pool. */
	public static var XMLGRAMMAR_POOL(default, null) : String;
	
	/** Property identifier: symbol table. */
	public static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: security manager. */
	private static var SECURITY_MANAGER(default, null) : String;
	
	/** Property identifier: locale. */
	private static var LOCALE(default, null) : String;
	
	private static var DEBUG_NODE_POOL(default, null) : Bool;
	
	public static var REDEF_IDENTIFIER(default, null) : String;
	
	private var fDeclPool : com.sun.org.apache.xerces.internal.impl.xs.XSDeclarationPool;
	
	/**
	* <p>Security manager in effect.</p>
	*
	* <p>Protected to allow access by any traverser.</p>
	*/
	private var fSecureProcessing : com.sun.org.apache.xerces.internal.util.SecurityManager;
	
	@:overload public function new() : Void;
	
	@:overload public function new(gBucket : com.sun.org.apache.xerces.internal.impl.xs.XSGrammarBucket) : Void;
	
	/**
	* This method initiates the parse of a schema.  It will likely be
	* called from the Validator and it will make the
	* resulting grammar available; it returns a reference to this object just
	* in case.  A reset(XMLComponentManager) must be called before this methods is called.
	* @param is
	* @param desc
	* @param locationPairs
	* @return the SchemaGrammar
	* @throws IOException
	*/
	@:overload public function parseSchema(is : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource, desc : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, locationPairs : java.util.Map<Dynamic, Dynamic>) : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar;
	
	/**
	* First try to find a grammar in the bucket, if failed, consult the
	* grammar pool. If a grammar is found in the pool, then add it (and all
	* imported ones) into the bucket.
	*/
	@:overload private function findGrammar(desc : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, ignoreConflict : Bool) : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar;
	
	@:overload private function constructTrees(schemaRoot : org.w3c.dom.Element, locationHint : String, desc : com.sun.org.apache.xerces.internal.impl.xs.XSDDescription, nsCollision : Bool) : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo;
	
	@:overload private function buildGlobalNameRegistries() : Void;
	
	@:overload private function traverseSchemas(annotationInfo : java.util.ArrayList<Dynamic>) : Void;
	
	@:overload private function getGlobalDecl(currSchema : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, declType : Int, declToTraverse : com.sun.org.apache.xerces.internal.xni.QName, elmNode : org.w3c.dom.Element) : Dynamic;
	
	@:overload private function getGlobalDecl(declKey : String, declType : Int) : Dynamic;
	
	@:overload private function getGlobalDeclFromGrammar(sGrammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, declType : Int, localpart : String) : Dynamic;
	
	@:overload private function getGlobalDeclFromGrammar(sGrammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar, declType : Int, localpart : String, schemaLoc : String) : Dynamic;
	
	@:overload private function traverseGlobalDecl(declType : Int, decl : org.w3c.dom.Element, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, grammar : com.sun.org.apache.xerces.internal.impl.xs.SchemaGrammar) : Dynamic;
	
	@:overload public function schemaDocument2SystemId(schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo) : String;
	
	@:overload private function resolveKeyRefs() : Void;
	
	@:overload private function getIDRegistry() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload private function getIDRegistry_sub() : java.util.Map<Dynamic, Dynamic>;
	
	@:overload private function storeKeyRef(keyrefToStore : org.w3c.dom.Element, schemaDoc : com.sun.org.apache.xerces.internal.impl.xs.traversers.XSDocumentInfo, currElemDecl : com.sun.org.apache.xerces.internal.impl.xs.XSElementDecl) : Void;
	
	@:overload public function setDeclPool(declPool : com.sun.org.apache.xerces.internal.impl.xs.XSDeclarationPool) : Void;
	
	@:overload public function setDVFactory(dvFactory : com.sun.org.apache.xerces.internal.impl.dv.SchemaDVFactory) : Void;
	
	@:overload public function getDVFactory() : com.sun.org.apache.xerces.internal.impl.dv.SchemaDVFactory;
	
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Extract location information from an Element node, and create a
	* new SimpleLocator object from such information. Returning null means
	* no information can be retrieved from the element.
	*/
	@:overload public function element2Locator(e : org.w3c.dom.Element) : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator;
	
	/**
	* Extract location information from an Element node, store such
	* information in the passed-in SimpleLocator object, then return
	* true. Returning false means can't extract or store such information.
	*/
	@:overload public function element2Locator(e : org.w3c.dom.Element, l : com.sun.org.apache.xerces.internal.impl.xs.util.SimpleLocator) : Bool;
	
	/**
	* @param state
	*/
	@:overload public function setGenerateSyntheticAnnotations(state : Bool) : Void;
	
	
}
/**
* Grammar pool used for validating annotations. This will return all of the
* grammars from the grammar bucket. It will also return an object for the
* schema for schemas which will contain at least the relevant declarations
* for annotations.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$traversers$XSDHandler$XSAnnotationGrammarPool') @:internal extern class XSDHandler_XSAnnotationGrammarPool implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool
{
	@:overload public function retrieveInitialGrammarSet(grammarType : String) : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>;
	
	@:overload public function cacheGrammars(grammarType : String, grammars : java.NativeArray<com.sun.org.apache.xerces.internal.xni.grammars.Grammar>) : Void;
	
	@:overload public function retrieveGrammar(desc : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarDescription) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	@:overload public function refreshGrammars(gBucket : com.sun.org.apache.xerces.internal.impl.xs.XSGrammarBucket) : Void;
	
	@:overload public function lockPool() : Void;
	
	@:overload public function unlockPool() : Void;
	
	@:overload public function clear() : Void;
	
	
}
/**
* used to identify a reference to a schema document
* if the same document is referenced twice with the same key, then
* we only need to parse it once.
*
* When 2 XSDKey's are compared, the following table can be used to
* determine whether they are equal:
*      inc     red     imp     pre     ins
* inc  N/L      ?      N/L     N/L     N/L
* red   ?      N/L      ?       ?       ?
* imp  N/L      ?      N/P     N/P     N/P
* pre  N/L      ?      N/P     N/P     N/P
* ins  N/L      ?      N/P     N/P     N/P
*
* Where: N/L: duplicate when they have the same namespace and location.
*         ? : not clear from the spec.
*             REVISIT: to simplify the process, also considering
*             it's very rare, we treat them as not duplicate.
*        N/P: not possible. imp/pre/ins are referenced by namespace.
*             when the first time we encounter a schema document for a
*             namespace, we create a grammar and store it in the grammar
*             bucket. when we see another reference to the same namespace,
*             we first check whether a grammar with the same namespace is
*             already in the bucket, which is true in this case, so we
*             won't create another XSDKey.
*
* Conclusion from the table: two XSDKey's are duplicate only when all of
* the following are true:
* 1. They are both "redefine", or neither is "redefine";
* 2. They have the same namespace;
* 3. They have the same non-null location.
*
* About 3: if neither has a non-null location, then it's the case where
* 2 input streams are provided, but no system ID is provided. We can't tell
* whether the 2 streams have the same content, so we treat them as not
* duplicate.
*/
@:native('com$sun$org$apache$xerces$internal$impl$xs$traversers$XSDHandler$XSDKey') @:internal extern class XSDHandler_XSDKey
{
	@:overload public function hashCode() : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$impl$xs$traversers$XSDHandler$SAX2XNIUtil') @:internal extern class XSDHandler_SAX2XNIUtil extends com.sun.org.apache.xerces.internal.util.ErrorHandlerWrapper
{
	@:overload public static function createXMLParseException0(exception : org.xml.sax.SAXParseException) : com.sun.org.apache.xerces.internal.xni.parser.XMLParseException;
	
	@:overload public static function createXNIException0(exception : org.xml.sax.SAXException) : com.sun.org.apache.xerces.internal.xni.XNIException;
	
	
}
