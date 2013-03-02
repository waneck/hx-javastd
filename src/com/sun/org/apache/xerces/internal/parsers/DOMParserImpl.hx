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
extern class DOMParserImpl extends com.sun.org.apache.xerces.internal.parsers.AbstractDOMParser implements org.w3c.dom.ls.LSParser implements org.w3c.dom.DOMConfiguration
{
	/** Feature identifier: namespaces. */
	private static var NAMESPACES(default, null) : String;
	
	/** Feature id: validation. */
	private static var VALIDATION_FEATURE(default, null) : String;
	
	/** XML Schema validation */
	private static var XMLSCHEMA(default, null) : String;
	
	/** XML Schema full checking */
	private static var XMLSCHEMA_FULL_CHECKING(default, null) : String;
	
	/** Dynamic validation */
	private static var DYNAMIC_VALIDATION(default, null) : String;
	
	/** Feature identifier: expose schema normalized value */
	private static var NORMALIZE_DATA(default, null) : String;
	
	/** Feature identifier: disallow docType Decls. */
	private static var DISALLOW_DOCTYPE_DECL_FEATURE(default, null) : String;
	
	/** Feature identifier: namespace growth */
	private static var NAMESPACE_GROWTH(default, null) : String;
	
	/** Feature identifier: tolerate duplicates */
	private static var TOLERATE_DUPLICATES(default, null) : String;
	
	private static var SYMBOL_TABLE(default, null) : String;
	
	private static var PSVI_AUGMENT(default, null) : String;
	
	/** Include namespace declaration attributes in the document. **/
	private var fNamespaceDeclarations : Bool;
	
	private var fSchemaType : String;
	
	private var fBusy : Bool;
	
	private static var DEBUG(default, null) : Bool;
	
	/**
	* Constructs a DOM Builder using the standard parser configuration.
	*/
	@:overload public function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration, schemaType : String) : Void;
	
	/**
	* Constructs a DOM Builder using the specified parser configuration.
	*/
	@:overload public function new(config : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* Constructs a DOM Builder using the specified symbol table.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* Constructs a DOM Builder using the specified symbol table and
	* grammar pool.
	*/
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
	/**
	* Resets the parser state.
	*
	* @throws SAXException Thrown on initialization error.
	*/
	@:overload override public function reset() : Void;
	
	@:overload public function getDomConfig() : org.w3c.dom.DOMConfiguration;
	
	/**
	*  When the application provides a filter, the parser will call out to
	* the filter at the completion of the construction of each
	* <code>Element</code> node. The filter implementation can choose to
	* remove the element from the document being constructed (unless the
	* element is the document element) or to terminate the parse early. If
	* the document is being validated when it's loaded the validation
	* happens before the filter is called.
	*/
	@:overload public function getFilter() : org.w3c.dom.ls.LSParserFilter;
	
	/**
	*  When the application provides a filter, the parser will call out to
	* the filter at the completion of the construction of each
	* <code>Element</code> node. The filter implementation can choose to
	* remove the element from the document being constructed (unless the
	* element is the document element) or to terminate the parse early. If
	* the document is being validated when it's loaded the validation
	* happens before the filter is called.
	*/
	@:overload public function setFilter(filter : org.w3c.dom.ls.LSParserFilter) : Void;
	
	/**
	* Set parameters and properties
	*/
	@:overload public function setParameter(name : String, value : Dynamic) : Void;
	
	/**
	* Look up the value of a feature or a property.
	*/
	@:overload public function getParameter(name : String) : Dynamic;
	
	@:overload public function canSetParameter(name : String, value : Dynamic) : Bool;
	
	/**
	*  DOM Level 3 CR - Experimental.
	*
	*  The list of the parameters supported by this
	* <code>DOMConfiguration</code> object and for which at least one value
	* can be set by the application. Note that this list can also contain
	* parameter names defined outside this specification.
	*/
	@:overload public function getParameterNames() : org.w3c.dom.DOMStringList;
	
	/**
	* Parse an XML document from a location identified by an URI reference.
	* If the URI contains a fragment identifier (see section 4.1 in ), the
	* behavior is not defined by this specification.
	*
	*/
	@:overload public function parseURI(uri : String) : org.w3c.dom.Document;
	
	/**
	* Parse an XML document from a resource identified by an
	* <code>LSInput</code>.
	*
	*/
	@:overload public function parse(is : org.w3c.dom.ls.LSInput) : org.w3c.dom.Document;
	
	/**
	*  Parse an XML document or fragment from a resource identified by an
	* <code>LSInput</code> and insert the content into an existing
	* document at the position epcified with the <code>contextNode</code>
	* and <code>action</code> arguments. When parsing the input stream the
	* context node is used for resolving unbound namespace prefixes.
	*
	* @param is  The <code>LSInput</code> from which the source
	*   document is to be read.
	* @param cnode  The <code>Node</code> that is used as the context for
	*   the data that is being parsed.
	* @param action This parameter describes which action should be taken
	*   between the new set of node being inserted and the existing
	*   children of the context node. The set of possible actions is
	*   defined above.
	* @exception DOMException
	*   HIERARCHY_REQUEST_ERR: Thrown if this action results in an invalid
	*   hierarchy (i.e. a Document with more than one document element).
	*/
	@:overload public function parseWithContext(is : org.w3c.dom.ls.LSInput, cnode : org.w3c.dom.Node, action : java.StdTypes.Int16) : org.w3c.dom.Node;
	
	/**
	* @see org.w3c.dom.ls.LSParser#getAsync()
	*/
	@:overload public function getAsync() : Bool;
	
	/**
	* @see org.w3c.dom.ls.LSParser#getBusy()
	*/
	@:overload public function getBusy() : Bool;
	
	/**
	* @see org.w3c.dom.ls.DOMParser#abort()
	*/
	@:overload public function abort() : Void;
	
	/**
	* The start of an element. If the document specifies the start element
	* by using an empty tag, then the startElement method will immediately
	* be followed by the endElement method, with no intervening methods.
	* Overriding the parent to handle DOM_NAMESPACE_DECLARATIONS=false.
	*
	* @param element    The name of the element.
	* @param attributes The element attributes.
	* @param augs     Additional information that may include infoset augmentations
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload override public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$parsers$DOMParserImpl$AbortHandler') @:internal extern class DOMParserImpl_AbortHandler implements com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDHandler implements com.sun.org.apache.xerces.internal.xni.XMLDTDContentModelHandler
{
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startGeneralEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	@:overload public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endParameterEntity(name : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endExternalSubset(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function elementDecl(name : String, contentModel : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startAttlist(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endAttlist(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startConditional(type : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endConditional(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDTD(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	@:overload public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	@:overload public function startContentModel(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function any(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function empty(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function pcdata(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function element(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function separator(separator : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function occurrence(occurrence : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endContentModel(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	@:overload public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	
}
