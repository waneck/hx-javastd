package com.sun.xml.internal.fastinfoset.sax;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class SAXDocumentParser extends com.sun.xml.internal.fastinfoset.Decoder implements com.sun.xml.internal.org.jvnet.fastinfoset.sax.FastInfosetReader
{
	/**
	* SAX Namespace attributes features
	*/
	private var _namespacePrefixesFeature : Bool;
	
	/**
	* Reference to entity resolver.
	*/
	private var _entityResolver : org.xml.sax.EntityResolver;
	
	/**
	* Reference to dtd handler.
	*/
	private var _dtdHandler : org.xml.sax.DTDHandler;
	
	/**
	* Reference to content handler.
	*/
	private var _contentHandler : org.xml.sax.ContentHandler;
	
	/**
	* Reference to error handler.
	*/
	private var _errorHandler : org.xml.sax.ErrorHandler;
	
	/**
	* Reference to lexical handler.
	*/
	private var _lexicalHandler : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Reference to DTD declaration handler.
	*/
	private var _declHandler : org.xml.sax.ext.DeclHandler;
	
	private var _algorithmHandler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler;
	
	private var _primitiveHandler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler;
	
	private var builtInAlgorithmState : com.sun.xml.internal.fastinfoset.algorithm.BuiltInEncodingAlgorithmState;
	
	private var _attributes : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	private var _namespacePrefixes : java.NativeArray<Int>;
	
	private var _namespacePrefixesIndex : Int;
	
	private var _clearAttributes : Bool;
	
	/** Creates a new instance of DocumetParser2 */
	@:overload public function new() : Void;
	
	@:overload private function resetOnError() : Void;
	
	@:overload public function getFeature(name : String) : Bool;
	
	@:overload public function setFeature(name : String, value : Bool) : Void;
	
	@:overload public function getProperty(name : String) : Dynamic;
	
	@:overload public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	@:overload public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload public function parse(input : org.xml.sax.InputSource) : Void;
	
	@:overload public function parse(systemId : String) : Void;
	
	@:overload @:final public function parse(s : java.io.InputStream) : Void;
	
	@:overload public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload public function setDeclHandler(handler : org.xml.sax.ext.DeclHandler) : Void;
	
	@:overload public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	@:overload public function setEncodingAlgorithmContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler) : Void;
	
	@:overload public function getEncodingAlgorithmContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler;
	
	@:overload public function setPrimitiveTypeContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler) : Void;
	
	@:overload public function getPrimitiveTypeContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler;
	
	@:overload @:final public function parse() : Void;
	
	@:overload @:final private function processDII() : Void;
	
	@:overload @:final private function processDIIFragment() : Void;
	
	@:overload @:final private function processDIIOptionalProperties() : Void;
	
	@:overload @:final private function processEII(name : com.sun.xml.internal.fastinfoset.QualifiedName, hasAttributes : Bool) : Void;
	
	@:overload @:final private function processEIIWithNamespaces() : Void;
	
	@:overload @:final private function processAIIs() : Void;
	
	@:overload @:final private function processCommentII() : Void;
	
	@:overload @:final private function processProcessingII() : Void;
	
	@:overload @:final private function processCIIEncodingAlgorithm(addToTable : Bool) : Void;
	
	@:overload @:final private function processCIIBuiltInEncodingAlgorithmAsPrimitive() : Void;
	
	@:overload @:final private function processAIIEncodingAlgorithm(name : com.sun.xml.internal.fastinfoset.QualifiedName, addToTable : Bool) : Void;
	
	@:overload @:final private function processBuiltInEncodingAlgorithmAsCharacters(buffer : java.lang.StringBuffer) : Void;
	
	@:overload @:final private function processBuiltInEncodingAlgorithmAsObject() : Dynamic;
	
	
}
/*
* Empty lexical handler used by default to report
* lexical-based events
*/
@:native('com$sun$xml$internal$fastinfoset$sax$SAXDocumentParser$LexicalHandlerImpl') @:internal extern class SAXDocumentParser_LexicalHandlerImpl implements org.xml.sax.ext.LexicalHandler
{
	@:overload public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, end : Int) : Void;
	
	@:overload public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload public function endDTD() : Void;
	
	@:overload public function startEntity(name : String) : Void;
	
	@:overload public function endEntity(name : String) : Void;
	
	@:overload public function startCDATA() : Void;
	
	@:overload public function endCDATA() : Void;
	
	
}
/*
* Empty DTD declaration handler used by default to report
* DTD declaration-based events
*/
@:native('com$sun$xml$internal$fastinfoset$sax$SAXDocumentParser$DeclHandlerImpl') @:internal extern class SAXDocumentParser_DeclHandlerImpl implements org.xml.sax.ext.DeclHandler
{
	@:overload public function elementDecl(name : String, model : String) : Void;
	
	@:overload public function attributeDecl(eName : String, aName : String, type : String, mode : String, value : String) : Void;
	
	@:overload public function internalEntityDecl(name : String, value : String) : Void;
	
	@:overload public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	
}
