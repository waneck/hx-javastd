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
* $Id: SimpleResultTreeImpl.java,v 1.2.4.1 2005/09/06 10:09:25 pvedula Exp $
*/
extern class SimpleResultTreeImpl extends com.sun.org.apache.xml.internal.serializer.EmptySerializer implements com.sun.org.apache.xalan.internal.xsltc.DOM implements com.sun.org.apache.xml.internal.dtm.DTM
{
	@:public @:static @:final public static var RTF_ROOT(default, null) : Int;
	
	@:public @:static @:final public static var RTF_TEXT(default, null) : Int;
	
	@:public @:static @:final public static var NUMBER_OF_NODES(default, null) : Int;
	
	@:protected private var _textArray : java.NativeArray<String>;
	
	@:protected private var _dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager;
	
	@:protected private var _size : Int;
	
	@:overload @:public public function new(dtmManager : com.sun.org.apache.xalan.internal.xsltc.dom.XSLTCDTMManager, documentID : Int) : Void;
	
	@:overload @:public public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.ref.DTMManagerDefault;
	
	@:overload @:public public function getDocument() : Int;
	
	@:overload @:public public function getStringValue() : String;
	
	@:overload @:public public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNthDescendant(node : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNodeValueIterator(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, returnType : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNodeName(node : Int) : String;
	
	@:overload @:public public function getNodeNameX(node : Int) : String;
	
	@:overload @:public public function getNamespaceName(node : Int) : String;
	
	@:overload @:public public function getExpandedTypeID(nodeHandle : Int) : Int;
	
	@:overload @:public public function getNamespaceType(node : Int) : Int;
	
	@:overload @:public public function getParent(nodeHandle : Int) : Int;
	
	@:overload @:public public function getAttributeNode(gType : Int, element : Int) : Int;
	
	@:overload @:public public function getStringValueX(nodeHandle : Int) : String;
	
	@:overload @:public public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	@:overload @:public public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	/**
	* Dispatch the character content of a node to an output handler.
	*
	* The escape setting should be taken care of when outputting to
	* a handler.
	*/
	@:overload @:public public function characters(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function makeNode(index : Int) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	@:overload @:public public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload @:public public function getLanguage(node : Int) : String;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function getDocumentURI(node : Int) : String;
	
	@:overload @:public public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	@:overload @:public public function setupMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	@:overload @:public public function isElement(node : Int) : Bool;
	
	@:overload @:public public function isAttribute(node : Int) : Bool;
	
	@:overload @:public public function lookupNamespace(node : Int, prefix : String) : String;
	
	/**
	* Return the node identity from a node handle.
	*/
	@:overload @:public public function getNodeIdent(nodehandle : Int) : Int;
	
	/**
	* Return the node handle from a node identity.
	*/
	@:overload @:public public function getNodeHandle(nodeId : Int) : Int;
	
	@:overload @:public public function getResultTreeFrag(initialSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getResultTreeFrag(initialSize : Int, rtfType : Int, addToManager : Bool) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public public function getNSType(node : Int) : Int;
	
	@:overload @:public public function getUnparsedEntityURI(name : String) : String;
	
	@:overload @:public public function getElementsWithIDs() : Hashtable;
	
	/**
	* We only need to override the endDocument, characters, and
	* setEscaping interfaces. A simple RTF does not have element
	* nodes. We do not need to touch startElement and endElement.
	*/
	@:overload @:public override public function startDocument() : Void;
	
	@:overload @:public override public function endDocument() : Void;
	
	@:overload @:public override public function characters(str : String) : Void;
	
	@:overload @:public override public function characters(ch : java.NativeArray<java.StdTypes.Char16>, offset : Int, length : Int) : Void;
	
	@:overload @:public override public function setEscaping(escape : Bool) : Bool;
	
	/**
	* The DTM interfaces are not used in this class. Implementing the DTM
	* interface is a requirement from MultiDOM. If we have a better way
	* of handling multiple documents, we can get rid of the DTM dependency.
	*
	* The following interfaces are just placeholders. The implementation
	* does not have an impact because they will not be used.
	*/
	@:overload @:public public function setFeature(featureId : String, state : Bool) : Void;
	
	@:overload @:public public function setProperty(property : String, value : Dynamic) : Void;
	
	@:overload @:public public function getAxisTraverser(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisTraverser;
	
	@:overload @:public public function hasChildNodes(nodeHandle : Int) : Bool;
	
	@:overload @:public public function getFirstChild(nodeHandle : Int) : Int;
	
	@:overload @:public public function getLastChild(nodeHandle : Int) : Int;
	
	@:overload @:public public function getAttributeNode(elementHandle : Int, namespaceURI : String, name : String) : Int;
	
	@:overload @:public public function getFirstAttribute(nodeHandle : Int) : Int;
	
	@:overload @:public public function getFirstNamespaceNode(nodeHandle : Int, inScope : Bool) : Int;
	
	@:overload @:public public function getNextSibling(nodeHandle : Int) : Int;
	
	@:overload @:public public function getPreviousSibling(nodeHandle : Int) : Int;
	
	@:overload @:public public function getNextAttribute(nodeHandle : Int) : Int;
	
	@:overload @:public public function getNextNamespaceNode(baseHandle : Int, namespaceHandle : Int, inScope : Bool) : Int;
	
	@:overload @:public public function getOwnerDocument(nodeHandle : Int) : Int;
	
	@:overload @:public public function getDocumentRoot(nodeHandle : Int) : Int;
	
	@:overload @:public public function getStringValue(nodeHandle : Int) : com.sun.org.apache.xml.internal.utils.XMLString;
	
	@:overload @:public public function getStringValueChunkCount(nodeHandle : Int) : Int;
	
	@:overload @:public public function getStringValueChunk(nodeHandle : Int, chunkIndex : Int, startAndLen : java.NativeArray<Int>) : java.NativeArray<java.StdTypes.Char16>;
	
	@:overload @:public public function getExpandedTypeID(namespace : String, localName : String, type : Int) : Int;
	
	@:overload @:public public function getLocalNameFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload @:public public function getNamespaceFromExpandedNameID(ExpandedNameID : Int) : String;
	
	@:overload @:public public function getLocalName(nodeHandle : Int) : String;
	
	@:overload @:public public function getPrefix(nodeHandle : Int) : String;
	
	@:overload @:public public function getNamespaceURI(nodeHandle : Int) : String;
	
	@:overload @:public public function getNodeValue(nodeHandle : Int) : String;
	
	@:overload @:public public function getNodeType(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload @:public public function getLevel(nodeHandle : Int) : java.StdTypes.Int16;
	
	@:overload @:public public function isSupported(feature : String, version : String) : Bool;
	
	@:overload @:public public function getDocumentBaseURI() : String;
	
	@:overload @:public public function setDocumentBaseURI(baseURI : String) : Void;
	
	@:overload @:public public function getDocumentSystemIdentifier(nodeHandle : Int) : String;
	
	@:overload @:public public function getDocumentEncoding(nodeHandle : Int) : String;
	
	@:overload @:public public function getDocumentStandalone(nodeHandle : Int) : String;
	
	@:overload @:public public function getDocumentVersion(documentHandle : Int) : String;
	
	@:overload @:public public function getDocumentAllDeclarationsProcessed() : Bool;
	
	@:overload @:public public function getDocumentTypeDeclarationSystemIdentifier() : String;
	
	@:overload @:public public function getDocumentTypeDeclarationPublicIdentifier() : String;
	
	@:overload @:public public function getElementById(elementId : String) : Int;
	
	@:overload @:public public function supportsPreStripping() : Bool;
	
	@:overload @:public public function isNodeAfter(firstNodeHandle : Int, secondNodeHandle : Int) : Bool;
	
	@:overload @:public public function isCharacterElementContentWhitespace(nodeHandle : Int) : Bool;
	
	@:overload @:public public function isDocumentAllDeclarationsProcessed(documentHandle : Int) : Bool;
	
	@:overload @:public public function isAttributeSpecified(attributeHandle : Int) : Bool;
	
	@:overload @:public public function dispatchCharactersEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler, normalize : Bool) : Void;
	
	@:overload @:public public function dispatchToEvents(nodeHandle : Int, ch : org.xml.sax.ContentHandler) : Void;
	
	@:overload @:public public function getNode(nodeHandle : Int) : org.w3c.dom.Node;
	
	@:overload @:public public function needsTwoThreads() : Bool;
	
	@:overload @:public public function getContentHandler() : org.xml.sax.ContentHandler;
	
	@:overload @:public public function getLexicalHandler() : org.xml.sax.ext.LexicalHandler;
	
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	@:overload @:public public function getDTDHandler() : org.xml.sax.DTDHandler;
	
	@:overload @:public public function getErrorHandler() : org.xml.sax.ErrorHandler;
	
	@:overload @:public public function getDeclHandler() : org.xml.sax.ext.DeclHandler;
	
	@:overload @:public public function appendChild(newChild : Int, clone : Bool, cloneDepth : Bool) : Void;
	
	@:overload @:public public function appendTextChild(str : String) : Void;
	
	@:overload @:public public function getSourceLocatorFor(node : Int) : javax.xml.transform.SourceLocator;
	
	@:overload @:public public function documentRegistration() : Void;
	
	@:overload @:public public function documentRelease() : Void;
	
	@:overload @:public public function migrateTo(manager : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	
}
/**
* The SimpleIterator is designed to support the nodeset() extension function. It has
* a traversal direction parameter. The DOWN direction is used for child and descendant
* axes, while the UP direction is used for parent and ancestor axes.
*
* This iterator only handles two nodes (RTF_ROOT and RTF_TEXT). If the type is set,
* it will also match the node type with the given type.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SimpleResultTreeImpl$SimpleIterator') extern class SimpleResultTreeImpl_SimpleIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(direction : Int) : Void;
	
	@:overload @:public public function new(direction : Int, type : Int) : Void;
	
	@:overload @:public override public function next() : Int;
	
	@:overload @:public override public function setStartNode(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function setMark() : Void;
	
	@:overload @:public override public function gotoMark() : Void;
	
	
}
/**
* The SingletonIterator is used for the self axis.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$SimpleResultTreeImpl$SingletonIterator') extern class SimpleResultTreeImpl_SingletonIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function new(type : Int) : Void;
	
	@:overload @:public override public function setMark() : Void;
	
	@:overload @:public override public function gotoMark() : Void;
	
	@:overload @:public override public function setStartNode(nodeHandle : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function next() : Int;
	
	
}
