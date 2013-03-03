package com.sun.org.apache.xerces.internal.impl;
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
* originally based on software copyright (c) 2003, International
* Business Machines, Inc., http://www.apache.org.  For more
* information on the Apache Software Foundation, please see
* <http://www.apache.org/>.
*/
extern class XMLVersionDetector
{
	/** Property identifier: symbol table. */
	@:protected @:static @:final private static var SYMBOL_TABLE(default, null) : String;
	
	/** Property identifier: error reporter. */
	@:protected @:static @:final private static var ERROR_REPORTER(default, null) : String;
	
	/** Property identifier: entity manager. */
	@:protected @:static @:final private static var ENTITY_MANAGER(default, null) : String;
	
	/** Symbol: "version". */
	@:protected @:final @:static private static var fVersionSymbol(default, null) : String;
	
	@:protected @:static @:final private static var fXMLSymbol(default, null) : String;
	
	/** Symbol table. */
	@:protected private var fSymbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable;
	
	/** Error reporter. */
	@:protected private var fErrorReporter : com.sun.org.apache.xerces.internal.impl.XMLErrorReporter;
	
	/** Entity manager. */
	@:protected private var fEntityManager : com.sun.org.apache.xerces.internal.impl.XMLEntityManager;
	
	@:protected private var fEncoding : String;
	
	/**
	*
	*
	* @param componentManager The component manager.
	*
	* @throws SAXException Throws exception if required features and
	*                      properties cannot be found.
	*/
	@:overload @:public public function reset(componentManager : com.sun.org.apache.xerces.internal.xni.parser.XMLComponentManager) : Void;
	
	/**
	* Reset the reference to the appropriate scanner given the version of the
	* document and start document scanning.
	* @param scanner - the scanner to use
	* @param version - the version of the document (XML 1.1 or XML 1.0).
	*/
	@:overload @:public public function startDocumentParsing(scanner : com.sun.org.apache.xerces.internal.impl.XMLEntityHandler, version : java.StdTypes.Int16) : Void;
	
	/**
	* This methods scans the XML declaration to find out the version
	* (and provisional encoding)  of the document.
	* The scanning is doing using XML 1.1 scanner.
	* @param inputSource
	* @return short - Constants.XML_VERSION_1_1 if document version 1.1,
	*                  otherwise Constants.XML_VERSION_1_0
	* @throws IOException
	*/
	@:overload @:public public function determineDocVersion(inputSource : com.sun.org.apache.xerces.internal.xni.parser.XMLInputSource) : java.StdTypes.Int16;
	
	
}
