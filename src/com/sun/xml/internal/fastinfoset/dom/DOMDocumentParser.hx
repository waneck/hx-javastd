package com.sun.xml.internal.fastinfoset.dom;
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
extern class DOMDocumentParser extends com.sun.xml.internal.fastinfoset.Decoder
{
	/**
	* The Fast Infoset DOM parser.
	* <p>
	* Instantiate this parser to parse a fast infoset document in accordance
	* with the DOM API.
	*
	*/
	private var _document : org.w3c.dom.Document;
	
	private var _currentNode : org.w3c.dom.Node;
	
	private var _currentElement : org.w3c.dom.Element;
	
	private var _namespaceAttributes : java.NativeArray<org.w3c.dom.Attr>;
	
	private var _namespaceAttributesIndex : Int;
	
	private var _namespacePrefixes : java.NativeArray<Int>;
	
	private var _namespacePrefixesIndex : Int;
	
	/**
	* Parse a fast infoset document into a {@link Document} instance.
	* <p>
	* {@link Node}s will be created and appended to the {@link Document}
	* instance.
	*
	* @param d the {@link Document} instance.
	* @param s the input stream containing the fast infoset document.
	*/
	@:overload public function parse(d : org.w3c.dom.Document, s : java.io.InputStream) : Void;
	
	@:overload @:final private function parse(s : java.io.InputStream) : Void;
	
	@:overload private function resetOnError() : Void;
	
	@:overload @:final private function parse() : Void;
	
	@:overload @:final private function processDII() : Void;
	
	@:overload @:final private function processDIIOptionalProperties() : Void;
	
	@:overload @:final private function processEII(name : com.sun.xml.internal.fastinfoset.QualifiedName, hasAttributes : Bool) : Void;
	
	@:overload @:final private function processEIIWithNamespaces() : Void;
	
	@:overload @:final private function processLiteralQualifiedName(state : Int, q : com.sun.xml.internal.fastinfoset.QualifiedName) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function processLiteralQualifiedName(state : Int) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	@:overload @:final private function processAIIs() : Void;
	
	@:overload @:final private function processCommentII() : Void;
	
	@:overload @:final private function processProcessingII() : Void;
	
	@:overload private function createElement(namespaceName : String, qName : String, localName : String) : org.w3c.dom.Element;
	
	@:overload private function createAttribute(namespaceName : String, qName : String, localName : String) : org.w3c.dom.Attr;
	
	@:overload private function convertEncodingAlgorithmDataToCharacters(isAttributeValue : Bool) : String;
	
	
}
