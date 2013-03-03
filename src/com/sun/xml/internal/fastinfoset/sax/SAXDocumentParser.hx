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
	@:protected private var _namespacePrefixesFeature : Bool;
	
	/**
	* Reference to entity resolver.
	*/
	@:protected private var _entityResolver : org.xml.sax.EntityResolver;
	
	/**
	* Reference to dtd handler.
	*/
	@:protected private var _dtdHandler : org.xml.sax.DTDHandler;
	
	/**
	* Reference to content handler.
	*/
	@:protected private var _contentHandler : org.xml.sax.ContentHandler;
	
	/**
	* Reference to error handler.
	*/
	@:protected private var _errorHandler : org.xml.sax.ErrorHandler;
	
	/**
	* Reference to lexical handler.
	*/
	@:protected private var _lexicalHandler : org.xml.sax.ext.LexicalHandler;
	
	/**
	* Reference to DTD declaration handler.
	*/
	@:protected private var _declHandler : org.xml.sax.ext.DeclHandler;
	
	@:protected private var _algorithmHandler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler;
	
	@:protected private var _primitiveHandler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler;
	
	@:protected private var builtInAlgorithmState : com.sun.xml.internal.fastinfoset.algorithm.BuiltInEncodingAlgorithmState;
	
	@:protected private var _attributes : com.sun.xml.internal.fastinfoset.sax.AttributesHolder;
	
	@:protected private var _namespacePrefixes : java.NativeArray<Int>;
	
	@:protected private var _namespacePrefixesIndex : Int;
	
	@:protected private var _clearAttributes : Bool;
	
	/** Creates a new instance of DocumetParser2 */
	@:overload @:public public function new() : Void;
	
	@:overload @:protected private function resetOnError() : Void;
	
	@:overload @:public public function getFeature(name : String) : Bool;
	
	@:overload @:public public function setFeature(name : String, value : Bool) : Void;
	
	@:overload @:public public function getProperty(name : String) : Dynamic;
	
	@:overload @:public public function setProperty(name : String, value : Dynamic) : Void;
	
	@:overload @:public public function setEntityResolver(resolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload @:public public function setDTDHandler(handler : org.xml.sax.DTDHandler) : Void;
	
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload @:public public function setContentHandler(handler : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public public function setErrorHandler(handler : org.xml.sax.ErrorHandler) : Void;
	
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public public function parse(input : org.xml.sax.InputSource) : Void;
	
	@:overload @:public public function parse(systemId : String) : Void;
	
	@:overload @:public @:final public function parse(s : java.io.InputStream) : Void;
	
	@:overload @:public public function setLexicalHandler(handler : org.xml.sax.ext.LexicalHandler) : Void;
	
	@:overload @:public public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload @:public public function setDeclHandler(handler : org.xml.sax.ext.DeclHandler) : Void;
	
	@:overload @:public public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	@:overload @:public public function setEncodingAlgorithmContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler) : Void;
	
	@:overload @:public public function getEncodingAlgorithmContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.EncodingAlgorithmContentHandler;
	
	@:overload @:public public function setPrimitiveTypeContentHandler(handler : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler) : Void;
	
	@:overload @:public public function getPrimitiveTypeContentHandler() : com.sun.xml.internal.org.jvnet.fastinfoset.sax.PrimitiveTypeContentHandler;
	
	@:overload @:public @:final public function parse() : Void;
	
	@:overload @:protected @:final private function processDII() : Void;
	
	@:overload @:protected @:final private function processDIIFragment() : Void;
	
	@:overload @:protected @:final private function processDIIOptionalProperties() : Void;
	
	@:overload @:protected @:final private function processEII(name : com.sun.xml.internal.fastinfoset.QualifiedName, hasAttributes : Bool) : Void;
	
	@:overload @:protected @:final private function processEIIWithNamespaces() : Void;
	
	@:overload @:protected @:final private function processAIIs() : Void;
	
	@:overload @:protected @:final private function processCommentII() : Void;
	
	@:overload @:protected @:final private function processProcessingII() : Void;
	
	@:overload @:protected @:final private function processCIIEncodingAlgorithm(addToTable : Bool) : Void;
	
	@:overload @:protected @:final private function processCIIBuiltInEncodingAlgorithmAsPrimitive() : Void;
	
	@:overload @:protected @:final private function processAIIEncodingAlgorithm(name : com.sun.xml.internal.fastinfoset.QualifiedName, addToTable : Bool) : Void;
	
	@:overload @:protected @:final private function processBuiltInEncodingAlgorithmAsCharacters(buffer : java.lang.StringBuffer) : Void;
	
	@:overload @:protected @:final private function processBuiltInEncodingAlgorithmAsObject() : Dynamic;
	
	
}
/*
* Empty lexical handler used by default to report
* lexical-based events
*/
@:native('com$sun$xml$internal$fastinfoset$sax$SAXDocumentParser$LexicalHandlerImpl') @:internal extern class SAXDocumentParser_LexicalHandlerImpl implements org.xml.sax.ext.LexicalHandler
{
	@:overload @:public public function comment(ch : java.NativeArray<java.StdTypes.Char16>, start : Int, end : Int) : Void;
	
	@:overload @:public public function startDTD(name : String, publicId : String, systemId : String) : Void;
	
	@:overload @:public public function endDTD() : Void;
	
	@:overload @:public public function startEntity(name : String) : Void;
	
	@:overload @:public public function endEntity(name : String) : Void;
	
	@:overload @:public public function startCDATA() : Void;
	
	@:overload @:public public function endCDATA() : Void;
	
	
}
/*
* Empty DTD declaration handler used by default to report
* DTD declaration-based events
*/
@:native('com$sun$xml$internal$fastinfoset$sax$SAXDocumentParser$DeclHandlerImpl') @:internal extern class SAXDocumentParser_DeclHandlerImpl implements org.xml.sax.ext.DeclHandler
{
	@:overload @:public public function elementDecl(name : String, model : String) : Void;
	
	@:overload @:public public function attributeDecl(eName : String, aName : String, type : String, mode : String, value : String) : Void;
	
	@:overload @:public public function internalEntityDecl(name : String, value : String) : Void;
	
	@:overload @:public public function externalEntityDecl(name : String, publicId : String, systemId : String) : Void;
	
	
}
