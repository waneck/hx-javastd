package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: AdaptiveResultTreeImpl.java,v 1.2.4.1 2005/09/06 05:52:18 pvedula Exp $
*/
extern class AdaptiveResultTreeImpl extends com.sun.org.apache.xalan.internal.xsltc.dom.SimpleResultTreeImpl
{
	@:overload @:public public function new(dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, documentID : Int, wsfilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, initSize : Int, buildIdIndex : Bool) : Void;
	
	@:overload @:public public function getNestedDOM() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public override public function getDocument() : Int;
	
	@:overload @:public override public function getStringValue() : String;
	
	@:overload @:public override public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getNthDescendant(node : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getNodeValueIterator(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, returnType : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getNodeName(node : Int) : String;
	
	@:overload @:public override public function getNodeNameX(node : Int) : String;
	
	@:overload @:public override public function getNamespaceName(node : Int) : String;
	
	@:overload @:public override public function getExpandedTypeID(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getNamespaceType(node : Int) : Int;
	
	@:overload @:public override public function getParent(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getAttributeNode(gType : Int, element : Int) : Int;
	
	@:overload @:public override public function getStringValueX(nodeHandle : Int) : String;
	
	@:overload @:public override public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public override public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public override public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	@:overload @:public override public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	/**
	* Dispatch the character content of a node to an output handler.
	*
	* The escape setting should be taken care of when outputting to
	* a handler.
	*/
	@:overload @:public override public function characters(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public override public function makeNode(index : Int) : org.w3c.dom.Node;
	
	@:overload @:public override public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	@:overload @:public override public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	@:overload @:public override public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload @:public override public function getLanguage(node : Int) : String;
	
	@:overload @:public override public function getSize() : Int;
	
	@:overload @:public override public function getDocumentURI(node : Int) : String;
	
	@:overload @:public override public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	@:overload @:public override public function setupMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	@:overload @:public override public function isElement(node : Int) : Bool;
	
	@:overload @:public override public function isAttribute(node : Int) : Bool;
	
	@:overload @:public override public function lookupNamespace(node : Int, prefix : String) : String;
	
	/**
	* Return the node identity from a node handle.
	*/
	@:overload @:public @:final override public function getNodeIdent(nodehandle : Int) : Int;
	
	/**
	* Return the node handle from a node identity.
	*/
	@:overload @:public @:final override public function getNodeHandle(nodeId : Int) : Int;
	
	@:overload @:public override public function getResultTreeFrag(initialSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public override public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public override public function getNSType(node : Int) : Int;
	
	@:overload @:public override public function getUnparsedEntityURI(name : String) : String;
	
	@:overload @:public override public function getElementsWithIDs() : Hashtable;
	
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function characters(str : String) : Void;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function setEscaping(escape : Bool) : Bool;
	
	@:overload @:public override public function startElement(elementName : String) : Void;
	
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload @:public override public function endElement(elementName : String) : Void;
	
	@:overload @:public override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload @:public override public function addAttribute(qName : String, value : String) : Void;
	
	@:overload @:public override public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	@:overload @:public override public function addAttribute(uri : String, localName : String, qname : String, type : String, value : String) : Void;
	
	@:overload @:public override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	@:overload @:public override public function comment(comment : String) : Void;
	
	@:overload @:public override public function comment(chars : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function processingInstruction(target : String, data : String) : Void;
	
	/** Implementation of the DTM interfaces **/
	@:overload @:public override public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload @:public override public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload @:public override public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	@:overload @:public override public function hasChildNodes(nodeHandle : Int) : Bool;
	
	@:overload @:public override public function getFirstChild(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getLastChild(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getAttributeNode(elementHandle : Int, namespaceURI : String, name : String) : Int;
	
	@:overload @:public override public function getFirstAttribute(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getFirstNamespaceNode(nodeHandle : Int, inScope : Bool) : Int;
	
	@:overload @:public override public function getNextSibling(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getPreviousSibling(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getNextAttribute(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getNextNamespaceNode(baseHandle : Int, namespaceHandle : Int, inScope : Bool) : Int;
	
	@:overload @:public override public function getOwnerDocument(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getDocumentRoot(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	@:overload @:public override public function getStringValueChunkCount(nodeHandle : Int) : Int;
	
	@:overload @:public override public function getStringValueChunk(nodeHandle : Int, chunkIndex : Int, startAndLen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public override public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	@:overload @:public override public function getLocalNameFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload @:public override public function getNamespaceFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload @:public override public function getLocalName(nodeHandle : Int) : String;
	
	@:overload @:public override public function getPrefix(nodeHandle : Int) : String;
	
	@:overload @:public override public function getNamespaceURI(nodeHandle : Int) : String;
	
	@:overload @:public override public function getNodeValue(nodeHandle : Int) : String;
	
	@:overload @:public override public function getNodeType(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload @:public override public function getLevel(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload @:public override public function isSupported(feature : String, version : String) : Bool;
	
	@:overload @:public override public function getDocumentBaseURI() : String;
	
	@:overload @:public override public function setDocumentBaseURI(baseURI : String) : Void;
	
	@:overload @:public override public function getDocumentSystemIdentifier(nodeHandle : Int) : String;
	
	@:overload @:public override public function getDocumentEncoding(nodeHandle : Int) : String;
	
	@:overload @:public override public function getDocumentStandalone(nodeHandle : Int) : String;
	
	@:overload @:public override public function getDocumentVersion(documentHandle : Int) : String;
	
	@:overload @:public override public function getDocumentAllDeclarationsProcessed() : Bool;
	
	@:overload @:public override public function getDocumentTypeDeclarationSystemIdentifier() : String;
	
	@:overload @:public override public function getDocumentTypeDeclarationPublicIdentifier() : String;
	
	@:overload @:public override public function getElementById(elementId : String) : Int;
	
	@:overload @:public override public function supportsPreStripping() : Bool;
	
	@:overload @:public override public function isNodeAfter(firstNodeHandle : Int, secondNodeHandle : Int) : Bool;
	
	@:overload @:public override public function isCharacterElementContentWhitespace(nodeHandle : Int) : Bool;
	
	@:overload @:public override public function isDocumentAllDeclarationsProcessed(documentHandle : Int) : Bool;
	
	@:overload @:public override public function isAttributeSpecified(attributeHandle : Int) : Bool;
	
	@:overload @:public override public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	@:overload @:public override public function dispatchToEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public override public function getNode(nodeHandle : Int) : org.w3c.dom.Node;
	
	@:overload @:public override public function needsTwoThreads() : Bool;
	
	@:overload @:public override public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public override public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload @:public override public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload @:public override public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload @:public override public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public override public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	@:overload @:public override public function appendChild(newChild : Int, clone : Bool, cloneDepth : Bool) : Void;
	
	@:overload @:public override public function appendTextChild(str : String) : Void;
	
	@:overload @:public override public function getSourceLocatorFor(node : Int) : javax.xml.transform.SourceLocator;
	
	@:overload @:public override public function documentRegistration() : Void;
	
	@:overload @:public override public function documentRelease() : Void;
	
	
}
