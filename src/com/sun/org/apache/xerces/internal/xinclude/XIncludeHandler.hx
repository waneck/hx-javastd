package com.sun.org.apache.xerces.internal.xinclude;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003-2005 The Apache Software Foundation.
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
extern class XIncludeHandler implements com.sun.org.apache.xerces.internal.xni.parser.XMLComponent implements com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentFilter implements com.sun.org.apache.xerces.internal.xni.parser.XMLDTDFilter
{
	/**
	* <p>
	* This is a pipeline component which performs XInclude handling, according to the
	* W3C specification for XML Inclusions.
	* </p>
	* <p>
	* This component analyzes each event in the pipeline, looking for &lt;include&gt;
	* elements. An &lt;include&gt; element is one which has a namespace of
	* <code>http://www.w3.org/2001/XInclude</code> and a localname of <code>include</code>.
	* When it finds an &lt;include&gt; element, it attempts to include the file specified
	* in the <code>href</code> attribute of the element.  If inclusion succeeds, all
	* children of the &lt;include&gt; element are ignored (with the exception of
	* checking for invalid children as outlined in the specification).  If the inclusion
	* fails, the &lt;fallback&gt; child of the &lt;include&gt; element is processed.
	* </p>
	* <p>
	* See the <a href="http://www.w3.org/TR/xinclude/">XInclude specification</a> for
	* more information on how XInclude is to be used.
	* </p>
	* <p>
	* This component requires the following features and properties from the
	* component manager that uses it:
	* <ul>
	*  <li>http://xml.org/sax/features/allow-dtd-events-after-endDTD</li>
	*  <li>http://apache.org/xml/properties/internal/error-reporter</li>
	*  <li>http://apache.org/xml/properties/internal/entity-resolver</li>
	* </ul>
	* Optional property:
	* <ul>
	*  <li>http://apache.org/xml/properties/input-buffer-size</li>
	* </ul>
	*
	* Furthermore, the <code>NamespaceContext</code> used in the pipeline is required
	* to be an instance of <code>XIncludeNamespaceSupport</code>.
	* </p>
	* <p>
	* Currently, this implementation has only partial support for the XInclude specification.
	* Specifically, it is missing support for XPointer document fragments.  Thus, only whole
	* documents can be included using this component in the pipeline.
	* </p>
	*
	* @author Peter McCracken, IBM
	* @author Michael Glavassevich, IBM
	*
	* @version $Id: XIncludeHandler.java,v 1.7 2010-11-01 04:40:18 joehw Exp $
	*
	* @see XIncludeNamespaceSupport
	*/
	public static var XINCLUDE_DEFAULT_CONFIGURATION(default, null) : String;
	
	public static var HTTP_ACCEPT(default, null) : String;
	
	public static var HTTP_ACCEPT_LANGUAGE(default, null) : String;
	
	public static var XPOINTER(default, null) : String;
	
	public static var XINCLUDE_NS_URI(default, null) : String;
	
	public static var XINCLUDE_INCLUDE(default, null) : String;
	
	public static var XINCLUDE_FALLBACK(default, null) : String;
	
	public static var XINCLUDE_PARSE_XML(default, null) : String;
	
	public static var XINCLUDE_PARSE_TEXT(default, null) : String;
	
	public static var XINCLUDE_ATTR_HREF(default, null) : String;
	
	public static var XINCLUDE_ATTR_PARSE(default, null) : String;
	
	public static var XINCLUDE_ATTR_ENCODING(default, null) : String;
	
	public static var XINCLUDE_ATTR_ACCEPT(default, null) : String;
	
	public static var XINCLUDE_ATTR_ACCEPT_LANGUAGE(default, null) : String;
	
	public static var XINCLUDE_INCLUDED(default, null) : String;
	
	/** The identifier for the Augmentation that contains the current base URI */
	public static var CURRENT_BASE_URI(default, null) : String;
	
	public static var XINCLUDE_BASE(default, null) : String;
	
	public static var XML_BASE_QNAME(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	public static var XINCLUDE_LANG(default, null) : String;
	
	public static var XML_LANG_QNAME(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	public static var NEW_NS_ATTR_QNAME(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** Feature identifier: validation. */
	private static var VALIDATION(default, null) : String;
	
	/** Feature identifier: schema validation. */
	private static var SCHEMA_VALIDATION(default, null) : String;
	
	/** Feature identifier: dynamic validation. */
	private static var DYNAMIC_VALIDATION(default, null) : String;
	
	/** Feature identifier: allow notation and unparsed entity events to be sent out of order. */
	private static var ALLOW_UE_AND_NOTATION_EVENTS(default, null) : String;
	
	/** Feature identifier: fixup base URIs. */
	private static var XINCLUDE_FIXUP_BASE_URIS(default, null) : String;
	
	/** Feature identifier: fixup language. */
	private static var XINCLUDE_FIXUP_LANGUAGE(default, null) : String;
	
	/** Property identifier: symbol table. */
	private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	private static var ENTITY_RESOLVER(default, null) : String;
	
	/** property identifier: security manager. */
	private static var SECURITY_MANAGER(default, null) : String;
	
	/** property identifier: buffer size. */
	public static var BUFFER_SIZE(default, null) : String;
	
	private static var PARSER_SETTINGS(default, null) : String;
	
	private var fDocumentHandler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	private var fDocumentSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	private var fDTDHandler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	private var fDTDSource : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	private var fParentXIncludeHandler : XIncludeHandler;
	
	private var fBufferSize : Int;
	
	private var fParentRelativeURI : String;
	
	private var fChildConfig : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
	
	private var fXIncludeChildConfig : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
	
	private var fXPointerChildConfig : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration;
	
	private var fXPtrProcessor : com.sun.org.apache.xerces.internal.xpointer.XPointerProcessor;
	
	private var fDocLocation : com.sun.org.apache.xerces.internal.xni.XMLLocator;
	
	private var fXIncludeMessageFormatter : com.sun.org.apache.xerces.internal.xinclude.XIncludeMessageFormatter;
	
	private var fNamespaceContext : com.sun.org.apache.xerces.internal.xinclude.XIncludeNamespaceSupport;
	
	private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	private var fSecurityManager : com.sun.org.apache.xerces.internal.util.SecurityManager;
	
	private var fXInclude10TextReader : com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader;
	
	private var fXInclude11TextReader : com.sun.org.apache.xerces.internal.xinclude.XIncludeTextReader;
	
	private var fCurrentBaseURI : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier;
	
	private var fBaseURIScope : com.sun.org.apache.xerces.internal.util.IntStack;
	
	private var fBaseURI : java.util.Stack<Dynamic>;
	
	private var fLiteralSystemID : java.util.Stack<Dynamic>;
	
	private var fExpandedSystemID : java.util.Stack<Dynamic>;
	
	private var fLanguageScope : com.sun.org.apache.xerces.internal.util.IntStack;
	
	private var fLanguageStack : java.util.Stack<Dynamic>;
	
	private var fCurrentLanguage : String;
	
	private var fSettings : com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings;
	
	@:overload public function new() : Void;
	
	@:overload public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Returns a list of feature identifiers that are recognized by
	* this component. This method may return null if no features
	* are recognized by this component.
	*/
	@:overload public function getRecognizedFeatures() : java.NativeArray<String>;
	
	/**
	* Sets the state of a feature. This method is called by the component
	* manager any time after reset when a feature changes state.
	* <p>
	* <strong>Note:</strong> Components should silently ignore features
	* that do not affect the operation of the component.
	*
	* @param featureId The feature identifier.
	* @param state     The state of the feature.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload public function setFeature(featureId : String, state : Bool) : Void;
	
	/**
	* Returns a list of property identifiers that are recognized by
	* this component. This method may return null if no properties
	* are recognized by this component.
	*/
	@:overload public function getRecognizedProperties() : java.NativeArray<String>;
	
	/**
	* Sets the value of a property. This method is called by the component
	* manager any time after reset when a property changes value.
	* <p>
	* <strong>Note:</strong> Components should silently ignore properties
	* that do not affect the operation of the component.
	*
	* @param propertyId The property identifier.
	* @param value      The value of the property.
	*
	* @throws SAXNotRecognizedException The component should not throw
	*                                   this exception.
	* @throws SAXNotSupportedException The component should not throw
	*                                  this exception.
	*/
	@:overload public function setProperty(propertyId : String, value : Dynamic) : Void;
	
	/**
	* Returns the default state for a feature, or null if this
	* component does not want to report a default value for this
	* feature.
	*
	* @param featureId The feature identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getFeatureDefault(featureId : String) : Null<Bool>;
	
	/**
	* Returns the default state for a property, or null if this
	* component does not want to report a default value for this
	* property.
	*
	* @param propertyId The property identifier.
	*
	* @since Xerces 2.2.0
	*/
	@:require(java2) @:overload public function getPropertyDefault(propertyId : String) : Dynamic;
	
	@:overload public function setDocumentHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler) : Void;
	
	@:overload public function getDocumentHandler() : com.sun.org.apache.xerces.internal.xni.XMLDocumentHandler;
	
	/**
	* Event sent at the start of the document.
	*
	* A fatal error will occur here, if it is detected that this document has been processed
	* before.
	*
	* This event is only passed on to the document handler if this is the root document.
	*/
	@:overload public function startDocument(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, encoding : String, namespaceContext : com.sun.org.apache.xerces.internal.xni.NamespaceContext, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function xmlDecl(version : String, encoding : String, standalone : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function doctypeDecl(rootElement : String, publicId : String, systemId : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function comment(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function processingInstruction(target : String, data : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function emptyElement(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endElement(element : com.sun.org.apache.xerces.internal.xni.QName, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startGeneralEntity(name : String, resId : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function textDecl(version : String, encoding : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endGeneralEntity(name : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function characters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function ignorableWhitespace(text : com.sun.org.apache.xerces.internal.xni.XMLString, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function startCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endCDATA(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function endDocument(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDocumentSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource) : Void;
	
	@:overload public function getDocumentSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDocumentSource;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#attributeDecl(java.lang.String, java.lang.String, java.lang.String, java.lang.String[], java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function attributeDecl(elementName : String, attributeName : String, type : String, enumeration : java.NativeArray<String>, defaultType : String, defaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedDefaultValue : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#elementDecl(java.lang.String, java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function elementDecl(name : String, contentModel : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#endAttlist(com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function endAttlist(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#endConditional(com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function endConditional(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#endDTD(com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function endDTD(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#endExternalSubset(com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function endExternalSubset(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#endParameterEntity(java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function endParameterEntity(name : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#externalEntityDecl(java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function externalEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#getDTDSource()
	*/
	@:overload public function getDTDSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#ignoredCharacters(com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function ignoredCharacters(text : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#internalEntityDecl(java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.XMLString, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function internalEntityDecl(name : String, text : com.sun.org.apache.xerces.internal.xni.XMLString, nonNormalizedText : com.sun.org.apache.xerces.internal.xni.XMLString, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#notationDecl(java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function notationDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#setDTDSource(com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource)
	*/
	@:overload public function setDTDSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#startAttlist(java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function startAttlist(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#startConditional(short, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function startConditional(type : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#startDTD(com.sun.org.apache.xerces.internal.xni.XMLLocator, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function startDTD(locator : com.sun.org.apache.xerces.internal.xni.XMLLocator, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#startExternalSubset(com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function startExternalSubset(identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#startParameterEntity(java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function startParameterEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, encoding : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.XMLDTDHandler#unparsedEntityDecl(java.lang.String, com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, java.lang.String, com.sun.org.apache.xerces.internal.xni.Augmentations)
	*/
	@:overload public function unparsedEntityDecl(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource#getDTDHandler()
	*/
	@:overload public function getDTDHandler() : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler;
	
	/* (non-Javadoc)
	* @see com.sun.org.apache.xerces.internal.xni.parser.XMLDTDSource#setDTDHandler(com.sun.org.apache.xerces.internal.xni.XMLDTDHandler)
	*/
	@:overload public function setDTDHandler(handler : com.sun.org.apache.xerces.internal.xni.XMLDTDHandler) : Void;
	
	@:overload private function handleFallbackElement() : Void;
	
	@:overload private function handleIncludeElement(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Bool;
	
	/**
	* Returns true if the element has the namespace "http://www.w3.org/2001/XInclude"
	* @param element the element to check
	* @return true if the element has the namespace "http://www.w3.org/2001/XInclude"
	*/
	@:overload private function hasXIncludeNamespace(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* Checks if the element is an &lt;include&gt; element.  The element must have
	* the XInclude namespace, and a local name of "include".
	*
	* @param element the element to check
	* @return true if the element is an &lt;include&gt; element
	* @see #hasXIncludeNamespace(QName)
	*/
	@:overload private function isIncludeElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* Checks if the element is an &lt;fallback&gt; element.  The element must have
	* the XInclude namespace, and a local name of "fallback".
	*
	* @param element the element to check
	* @return true if the element is an &lt;fallback; element
	* @see #hasXIncludeNamespace(QName)
	*/
	@:overload private function isFallbackElement(element : com.sun.org.apache.xerces.internal.xni.QName) : Bool;
	
	/**
	* Returns true if the current [base URI] is the same as the [base URI] that
	* was in effect on the include parent.  This method should <em>only</em> be called
	* when the current element is a top level included element, i.e. the direct child
	* of a fallback element, or the root elements in an included document.
	* The "include parent" is the element which, in the result infoset, will be the
	* direct parent of the current element.
	* @return true if the [base URIs] are the same string
	*/
	@:overload private function sameBaseURIAsIncludeParent() : Bool;
	
	/**
	* Returns true if the current [language] is equivalent to the [language] that
	* was in effect on the include parent, taking case-insensitivity into account
	* as per [RFC 3066].  This method should <em>only</em> be called when the
	* current element is a top level included element, i.e. the direct child
	* of a fallback element, or the root elements in an included document.
	* The "include parent" is the element which, in the result infoset, will be the
	* direct parent of the current element.
	*
	* @return true if the [language] properties have the same value
	* taking case-insensitivity into account as per [RFC 3066].
	*/
	@:overload private function sameLanguageAsIncludeParent() : Bool;
	
	/**
	* Checks if the file indicated by the given XMLLocator has already been included
	* in the current stack.
	* @param includedSource the source to check for inclusion
	* @return true if the source has already been included
	*/
	@:overload private function searchForRecursiveIncludes(includedSource : com.sun.org.apache.xerces.internal.xni.XMLLocator) : Bool;
	
	/**
	* Returns true if the current element is a top level included item.  This means
	* it's either the child of a fallback element, or the top level item in an
	* included document
	* @return true if the current element is a top level included item
	*/
	@:overload private function isTopLevelIncludedItem() : Bool;
	
	@:overload private function isTopLevelIncludedItemViaInclude() : Bool;
	
	@:overload private function isTopLevelIncludedItemViaFallback() : Bool;
	
	/**
	* Processes the XMLAttributes object of startElement() calls.  Performs the following tasks:
	* <ul>
	* <li> If the element is a top level included item whose [base URI] is different from the
	* [base URI] of the include parent, then an xml:base attribute is added to specify the
	* true [base URI]
	* <li> For all namespace prefixes which are in-scope in an included item, but not in scope
	* in the include parent, a xmlns:prefix attribute is added
	* <li> For all attributes with a type of ENTITY, ENTITIES or NOTATIONS, the notations and
	* unparsed entities are processed as described in the spec, sections 4.5.1 and 4.5.2
	* </ul>
	* @param attributes
	* @return
	*/
	@:overload private function processAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : com.sun.org.apache.xerces.internal.xni.XMLAttributes;
	
	/**
	* Returns a URI, relative to the include parent's base URI, of the current
	* [base URI].  For instance, if the current [base URI] was "dir1/dir2/file.xml"
	* and the include parent's [base URI] was "dir/", this would return "dir2/file.xml".
	* @return the relative URI
	*/
	@:overload private function getRelativeBaseURI() : String;
	
	/**
	* Modify the augmentations.  Add an [included] infoset item, if the current
	* element is a top level included item.
	* @param augs the Augmentations to modify.
	* @return the modified Augmentations
	*/
	@:overload private function modifyAugmentations(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	/**
	* Modify the augmentations.  Add an [included] infoset item, if <code>force</code>
	* is true, or if the current element is a top level included item.
	* @param augs the Augmentations to modify.
	* @param force whether to force modification
	* @return the modified Augmentations
	*/
	@:overload private function modifyAugmentations(augs : com.sun.org.apache.xerces.internal.xni.Augmentations, force : Bool) : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	@:overload private function getState(depth : Int) : Int;
	
	@:overload private function getState() : Int;
	
	@:overload private function setState(state : Int) : Void;
	
	/**
	* Records that an &lt;fallback&gt; was encountered at the specified depth,
	* as an ancestor of the current element, or as a sibling of an ancestor of the
	* current element.
	*
	* @param depth
	* @param val
	*/
	@:overload private function setSawFallback(depth : Int, val : Bool) : Void;
	
	/**
	* Returns whether an &lt;fallback&gt; was encountered at the specified depth,
	* as an ancestor of the current element, or as a sibling of an ancestor of the
	* current element.
	*
	* @param depth
	*/
	@:overload private function getSawFallback(depth : Int) : Bool;
	
	/**
	* Records that an &lt;include&gt; was encountered at the specified depth,
	* as an ancestor of the current item.
	*
	* @param depth
	* @param val
	*/
	@:overload private function setSawInclude(depth : Int, val : Bool) : Void;
	
	/**
	* Return whether an &lt;include&gt; was encountered at the specified depth,
	* as an ancestor of the current item.
	*
	* @param depth
	* @return
	*/
	@:overload private function getSawInclude(depth : Int) : Bool;
	
	@:overload private function reportResourceError(key : String) : Void;
	
	@:overload private function reportResourceError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	@:overload private function reportFatalError(key : String) : Void;
	
	@:overload private function reportFatalError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Set the parent of this XIncludeHandler in the tree
	* @param parent
	*/
	@:overload private function setParent(parent : XIncludeHandler) : Void;
	
	@:overload private function isRootDocument() : Bool;
	
	/**
	* Caches an unparsed entity.
	* @param name the name of the unparsed entity
	* @param identifier the location of the unparsed entity
	* @param augmentations any Augmentations that were on the original unparsed entity declaration
	*/
	@:overload private function addUnparsedEntity(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, notation : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Caches a notation.
	* @param name the name of the notation
	* @param identifier the location of the notation
	* @param augmentations any Augmentations that were on the original notation declaration
	*/
	@:overload private function addNotation(name : String, identifier : com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Checks if an UnparsedEntity with the given name was declared in the DTD of the document
	* for the current pipeline.  If so, then the notation for the UnparsedEntity is checked.
	* If that turns out okay, then the UnparsedEntity is passed to the root pipeline to
	* be checked for conflicts, and sent to the root DTDHandler.
	*
	* @param entName the name of the UnparsedEntity to check
	*/
	@:overload private function checkUnparsedEntity(entName : String) : Void;
	
	/**
	* Checks if a Notation with the given name was declared in the DTD of the document
	* for the current pipeline.  If so, that Notation is passed to the root pipeline to
	* be checked for conflicts, and sent to the root DTDHandler
	*
	* @param notName the name of the Notation to check
	*/
	@:overload private function checkNotation(notName : String) : Void;
	
	/**
	* The purpose of this method is to check if an UnparsedEntity conflicts with a previously
	* declared entity in the current pipeline stack.  If there is no conflict, the
	* UnparsedEntity is sent by the root pipeline.
	*
	* @param ent the UnparsedEntity to check for conflicts
	*/
	@:overload private function checkAndSendUnparsedEntity(ent : XIncludeHandler_UnparsedEntity) : Void;
	
	/**
	* The purpose of this method is to check if a Notation conflicts with a previously
	* declared notation in the current pipeline stack.  If there is no conflict, the
	* Notation is sent by the root pipeline.
	*
	* @param not the Notation to check for conflicts
	*/
	@:overload private function checkAndSendNotation(not : XIncludeHandler_Notation) : Void;
	
	@:overload private function copyFeatures(from : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager, to : com.sun.org.apache.xerces.internal.util.ParserConfigurationSettings) : Void;
	
	@:overload private function copyFeatures(from : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager, to : com.sun.org.apache.xerces.internal.xni.parser.XMLParserConfiguration) : Void;
	
	/**
	* Saves the current base URI to the top of the stack.
	*/
	@:overload private function saveBaseURI() : Void;
	
	/**
	* Discards the URIs at the top of the stack, and restores the ones beneath it.
	*/
	@:overload private function restoreBaseURI() : Void;
	
	/**
	* Saves the given language on the top of the stack.
	*
	* @param lanaguage the language to push onto the stack.
	*/
	@:overload private function saveLanguage(language : String) : Void;
	
	/**
	* Discards the language at the top of the stack, and returns the one beneath it.
	*/
	@:overload public function restoreLanguage() : String;
	
	/**
	* Gets the base URI that was in use at that depth
	* @param depth
	* @return the base URI
	*/
	@:overload public function getBaseURI(depth : Int) : String;
	
	/**
	* Gets the language that was in use at that depth.
	* @param depth
	* @return the language
	*/
	@:overload public function getLanguage(depth : Int) : String;
	
	/**
	* Returns a relative URI, which when resolved against the base URI at the
	* specified depth, will create the current base URI.
	* This is accomplished by merged the literal system IDs.
	* @param depth the depth at which to start creating the relative URI
	* @return a relative URI to convert the base URI at the given depth to the current
	*         base URI
	*/
	@:overload public function getRelativeURI(depth : Int) : String;
	
	/**
	* Search for a xml:base attribute, and if one is found, put the new base URI into
	* effect.
	*/
	@:overload private function processXMLBaseAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	/**
	* Search for a xml:lang attribute, and if one is found, put the new
	* [language] into effect.
	*/
	@:overload private function processXMLLangAttributes(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes) : Void;
	
	
}
@:native('com$sun$org$apache$xerces$internal$xinclude$XIncludeHandler$Notation') extern class XIncludeHandler_Notation
{
	public var name : String;
	
	public var systemId : String;
	
	public var baseURI : String;
	
	public var publicId : String;
	
	public var expandedSystemId : String;
	
	public var augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function isDuplicate(obj : Dynamic) : Bool;
	
	
}
@:native('com$sun$org$apache$xerces$internal$xinclude$XIncludeHandler$UnparsedEntity') extern class XIncludeHandler_UnparsedEntity
{
	public var name : String;
	
	public var systemId : String;
	
	public var baseURI : String;
	
	public var publicId : String;
	
	public var expandedSystemId : String;
	
	public var notation : String;
	
	public var augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function isDuplicate(obj : Dynamic) : Bool;
	
	
}
