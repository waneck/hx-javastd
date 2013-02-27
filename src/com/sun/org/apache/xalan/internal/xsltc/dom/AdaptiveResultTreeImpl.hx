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
	@:overload public function new(dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, documentID : Int, wsfilter : com.sun.org.apache.xml.internal.dtm.DTMWSFilter, initSize : Int, buildIdIndex : Bool) : Void;
	
	@:overload public function getNestedDOM() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload override public function getDocument() : Int;
	
	@:overload override public function getStringValue() : String;
	
	@:overload override public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getNthDescendant(node : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getNodeValueIterator(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, returnType : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload override public function getNodeName(node : Int) : String;
	
	@:overload override public function getNodeNameX(node : Int) : String;
	
	@:overload override public function getNamespaceName(node : Int) : String;
	
	@:overload override public function getExpandedTypeID(nodeHandle : Int) : Int;
	
	@:overload override public function getNamespaceType(node : Int) : Int;
	
	@:overload override public function getParent(nodeHandle : Int) : Int;
	
	@:overload override public function getAttributeNode(gType : Int, element : Int) : Int;
	
	@:overload override public function getStringValueX(nodeHandle : Int) : String;
	
	@:overload override public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload override public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload override public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	@:overload override public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	/**
	* Dispatch the character content of a node to an output handler.
	*
	* The escape setting should be taken care of when outputting to
	* a handler.
	*/
	@:overload override public function characters(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload override public function makeNode(index : Int) : org.w3c.dom.Node;
	
	@:overload override public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	@:overload override public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	@:overload override public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload override public function getLanguage(node : Int) : String;
	
	@:overload override public function getSize() : Int;
	
	@:overload override public function getDocumentURI(node : Int) : String;
	
	@:overload override public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	@:overload override public function setupMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	@:overload override public function isElement(node : Int) : Bool;
	
	@:overload override public function isAttribute(node : Int) : Bool;
	
	@:overload override public function lookupNamespace(node : Int, prefix : String) : String;
	
	/**
	* Return the node identity from a node handle.
	*/
	@:overload @:final override public function getNodeIdent(nodehandle : Int) : Int;
	
	/**
	* Return the node handle from a node identity.
	*/
	@:overload @:final override public function getNodeHandle(nodeId : Int) : Int;
	
	@:overload override public function getResultTreeFrag(initialSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload override public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload override public function getNSType(node : Int) : Int;
	
	@:overload override public function getUnparsedEntityURI(name : String) : String;
	
	@:overload override public function getElementsWithIDs() : Hashtable;
	
	@:overload override public function startDocument() : Void;
	
	@:overload override public function endDocument() : Void;
	
	@:overload override public function characters(str : String) : Void;
	
	@:overload override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload override public function setEscaping(escape : Bool) : Bool;
	
	@:overload override public function startElement(elementName : String) : Void;
	
	@:overload override public function startElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	@:overload override public function endElement(elementName : String) : Void;
	
	@:overload override public function endElement(uri : String, localName : String, qName : String) : Void;
	
	@:overload override public function addAttribute(qName : String, value : String) : Void;
	
	@:overload override public function addUniqueAttribute(qName : String, value : String, flags : Int) : Void;
	
	@:overload override public function addAttribute(uri : String, localName : String, qname : String, type : String, value : String) : Void;
	
	@:overload override public function namespaceAfterStartElement(prefix : String, uri : String) : Void;
	
	@:overload override public function comment(comment : String) : Void;
	
	@:overload override public function comment(chars : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload override public function processingInstruction(target : String, data : String) : Void;
	
	/** Implementation of the DTM interfaces **/
	@:overload override public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload override public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload override public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	@:overload override public function hasChildNodes(nodeHandle : Int) : Bool;
	
	@:overload override public function getFirstChild(nodeHandle : Int) : Int;
	
	@:overload override public function getLastChild(nodeHandle : Int) : Int;
	
	@:overload override public function getAttributeNode(elementHandle : Int, namespaceURI : String, name : String) : Int;
	
	@:overload override public function getFirstAttribute(nodeHandle : Int) : Int;
	
	@:overload override public function getFirstNamespaceNode(nodeHandle : Int, inScope : Bool) : Int;
	
	@:overload override public function getNextSibling(nodeHandle : Int) : Int;
	
	@:overload override public function getPreviousSibling(nodeHandle : Int) : Int;
	
	@:overload override public function getNextAttribute(nodeHandle : Int) : Int;
	
	@:overload override public function getNextNamespaceNode(baseHandle : Int, namespaceHandle : Int, inScope : Bool) : Int;
	
	@:overload override public function getOwnerDocument(nodeHandle : Int) : Int;
	
	@:overload override public function getDocumentRoot(nodeHandle : Int) : Int;
	
	@:overload override public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	@:overload override public function getStringValueChunkCount(nodeHandle : Int) : Int;
	
	@:overload override public function getStringValueChunk(nodeHandle : Int, chunkIndex : Int, startAndLen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload override public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	@:overload override public function getLocalNameFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload override public function getNamespaceFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload override public function getLocalName(nodeHandle : Int) : String;
	
	@:overload override public function getPrefix(nodeHandle : Int) : String;
	
	@:overload override public function getNamespaceURI(nodeHandle : Int) : String;
	
	@:overload override public function getNodeValue(nodeHandle : Int) : String;
	
	@:overload override public function getNodeType(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload override public function getLevel(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload override public function isSupported(feature : String, version : String) : Bool;
	
	@:overload override public function getDocumentBaseURI() : String;
	
	@:overload override public function setDocumentBaseURI(baseURI : String) : Void;
	
	@:overload override public function getDocumentSystemIdentifier(nodeHandle : Int) : String;
	
	@:overload override public function getDocumentEncoding(nodeHandle : Int) : String;
	
	@:overload override public function getDocumentStandalone(nodeHandle : Int) : String;
	
	@:overload override public function getDocumentVersion(documentHandle : Int) : String;
	
	@:overload override public function getDocumentAllDeclarationsProcessed() : Bool;
	
	@:overload override public function getDocumentTypeDeclarationSystemIdentifier() : String;
	
	@:overload override public function getDocumentTypeDeclarationPublicIdentifier() : String;
	
	@:overload override public function getElementById(elementId : String) : Int;
	
	@:overload override public function supportsPreStripping() : Bool;
	
	@:overload override public function isNodeAfter(firstNodeHandle : Int, secondNodeHandle : Int) : Bool;
	
	@:overload override public function isCharacterElementContentWhitespace(nodeHandle : Int) : Bool;
	
	@:overload override public function isDocumentAllDeclarationsProcessed(documentHandle : Int) : Bool;
	
	@:overload override public function isAttributeSpecified(attributeHandle : Int) : Bool;
	
	@:overload override public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	@:overload override public function dispatchToEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler) : Void;
	
	@:overload override public function getNode(nodeHandle : Int) : org.w3c.dom.Node;
	
	@:overload override public function needsTwoThreads() : Bool;
	
	@:overload override public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload override public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload override public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload override public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload override public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload override public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	@:overload override public function appendChild(newChild : Int, clone : Bool, cloneDepth : Bool) : Void;
	
	@:overload override public function appendTextChild(str : String) : Void;
	
	@:overload override public function getSourceLocatorFor(node : Int) : javax.xml.transform.SourceLocator;
	
	@:overload override public function documentRegistration() : Void;
	
	@:overload override public function documentRelease() : Void;
	
	
}
