package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* The Apache Software License, Version 1.1
*
*
* Copyright (c) 1999-2003 The Apache Software Foundation.
* All rights reserved.
*
* Redistribution and use in source and binary forms, with or without
* modification, are permitted provided that the following conditions
* are met:
*
* 1. Redistributions of source code must retain the above copyright
*    notice, this list of conditions and the following disclaimer.
*
* 2. Redistributions in binary form must reproduce the above copyright
*    notice, this list of conditions and the following disclaimer in
*    the documentation and/or other materials provided with the
*    distribution.
*
* 3. The end-user documentation included with the redistribution,
*    if any, must include the following acknowledgment:
*       "This product includes software developed by the
*        Apache Software Foundation (http://www.apache.org/)."
*    Alternately, this acknowledgment may appear in the software itself,
*    if and wherever such third-party acknowledgments normally appear.
*
* 4. The names "Xerces" and "Apache Software Foundation" must
*    not be used to endorse or promote products derived from this
*    software without prior written permission. For written
*    permission, please contact apache@apache.org.
*
* 5. Products derived from this software may not be called "Apache",
*    nor may "Apache" appear in their name, without prior written
*    permission of the Apache Software Foundation.
*
* THIS SOFTWARE IS PROVIDED ``AS IS'' AND ANY EXPRESSED OR IMPLIED
* WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED WARRANTIES
* OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE ARE
* DISCLAIMED.  IN NO EVENT SHALL THE APACHE SOFTWARE FOUNDATION OR
* ITS CONTRIBUTORS BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL,
* SPECIAL, EXEMPLARY, OR CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT
* LIMITED TO, PROCUREMENT OF SUBSTITUTE GOODS OR SERVICES; LOSS OF
* USE, DATA, OR PROFITS; OR BUSINESS INTERRUPTION) HOWEVER CAUSED AND
* ON ANY THEORY OF LIABILITY, WHETHER IN CONTRACT, STRICT LIABILITY,
* OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE) ARISING IN ANY WAY OUT
* OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE POSSIBILITY OF
* SUCH DAMAGE.
* ====================================================================
*
* This software consists of voluntary contributions made by many
* individuals on behalf of the Apache Software Foundation and was
* originally based on software copyright (c) 1999, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XMLDTDLoader extends com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDProcessor implements com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarLoader
{
	/** Feature identifier: standard uri conformant feature. */
	private static var STANDARD_URI_CONFORMANT_FEATURE(default, null) : String;
	
	/** Feature identifier: balance syntax trees. */
	private static var BALANCE_SYNTAX_TREES(default, null) : String;
	
	/** Property identifier: error handler. */
	private static var ERROR_HANDLER(default, null) : String;
	
	/** Property identifier: entity resolver. */
	public static var ENTITY_RESOLVER(default, null) : String;
	
	/** Property identifier: locale. */
	public static var LOCALE(default, null) : String;
	
	/** Entity resolver . */
	private var fEntityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	private var fDTDScanner : com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl;
	
	private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	private var fLocale : java.util.Locale;
	
	/** Deny default construction; we need a SymtolTable! */
	@:overload public function new() : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, grammarPool : com.sun.org.apache.xerces.internal.xni.grammars.XMLGrammarPool) : Void;
	
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
	* Returns the state of a property.
	*
	* @param propertyId The property identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload public function getProperty(propertyId : String) : Dynamic;
	
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
	* Returns the state of a feature.
	*
	* @param featureId The feature identifier.
	*
	* @throws XMLConfigurationException Thrown on configuration error.
	*/
	@:overload public function getFeature(featureId : String) : Bool;
	
	/**
	* Set the locale to use for messages.
	*
	* @param locale The locale object to use for localization of messages.
	*
	* @exception XNIException Thrown if the parser does not support the
	*                         specified locale.
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/** Return the Locale the XMLGrammarLoader is using. */
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* Sets the error handler.
	*
	* @param errorHandler The error handler.
	*/
	@:overload public function setErrorHandler(errorHandler : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler) : Void;
	
	/** Returns the registered error handler.  */
	@:overload public function getErrorHandler() : com.sun.org.apache.xerces.internal.xni.parser.XMLErrorHandler;
	
	/**
	* Sets the entity resolver.
	*
	* @param entityResolver The new entity resolver.
	*/
	@:overload public function setEntityResolver(entityResolver : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver) : Void;
	
	/** Returns the registered entity resolver.  */
	@:overload public function getEntityResolver() : com.sun.org.apache.xerces.internal.xni.parser.XMLEntityResolver;
	
	/**
	* Returns a Grammar object by parsing the contents of the
	* entity pointed to by source.
	*
	* @param source        the location of the entity which forms
	*                          the starting point of the grammar to be constructed.
	* @throws IOException      When a problem is encountered reading the entity
	*          XNIException    When a condition arises (such as a FatalError) that requires parsing
	*                              of the entity be terminated.
	*/
	@:overload public function loadGrammar(source : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : com.sun.org.apache.xerces.internal.xni.grammars.Grammar;
	
	/**
	* Parse a DTD internal and/or external subset and insert the content
	* into the existing DTD grammar owned by the given DTDValidator.
	*/
	@:overload public function loadGrammarWithContext(validator : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDValidator, rootName : String, publicId : String, systemId : String, baseSystemId : String, internalSubset : String) : Void;
	
	@:overload private function reset() : Void;
	
	@:overload private function createDTDScanner(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, errorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter, entityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager) : com.sun.org.apache.xerces.internal.impl.XMLDTDScannerImpl;
	
	@:overload private function getScannerVersion() : java.StdTypes.Int16;
	
	
}
