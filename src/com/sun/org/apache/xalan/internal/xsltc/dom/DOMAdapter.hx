package com.sun.org.apache.xalan.internal.xsltc.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001-2004 The Apache Software Foundation.
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
* $Id: DOMAdapter.java,v 1.2.4.1 2005/09/06 06:07:28 pvedula Exp $
*/
extern class DOMAdapter implements com.sun.org.apache.xalan.internal.xsltc.DOM
{
	@:overload @:public public function new(dom : com.sun.org.apache.xalan.internal.xsltc.DOM, namesArray : java.NativeArray<String>, urisArray : java.NativeArray<String>, typesArray : java.NativeArray<Int>, namespaceArray : java.NativeArray<String>) : Void;
	
	@:overload @:public public function setupMapping(names : java.NativeArray<String>, urisArray : java.NativeArray<String>, typesArray : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	@:overload @:public public function getNamesArray() : java.NativeArray<String>;
	
	@:overload @:public public function getUrisArray() : java.NativeArray<String>;
	
	@:overload @:public public function getTypesArray() : java.NativeArray<Int>;
	
	@:overload @:public public function getNamespaceArray() : java.NativeArray<String>;
	
	@:overload @:public public function getDOMImpl() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Returns singleton iterator containg the document root
	*/
	@:overload @:public public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getStringValue() : String;
	
	@:overload @:public public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	@:overload @:public public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getMultiDOMMask() : Int;
	
	@:overload @:public public function setMultiDOMMask(mask : Int) : Void;
	
	@:overload @:public public function getNthDescendant(type : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNodeValueIterator(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, type : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getExpandedTypeID(node : Int) : Int;
	
	@:overload @:public public function getNamespaceType(node : Int) : Int;
	
	@:overload @:public public function getNSType(node : Int) : Int;
	
	@:overload @:public public function getParent(node : Int) : Int;
	
	@:overload @:public public function getAttributeNode(type : Int, element : Int) : Int;
	
	@:overload @:public public function getNodeName(node : Int) : String;
	
	@:overload @:public public function getNodeNameX(node : Int) : String;
	
	@:overload @:public public function getNamespaceName(node : Int) : String;
	
	@:overload @:public public function getStringValueX(node : Int) : String;
	
	@:overload @:public public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	@:overload @:public public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	@:overload @:public public function characters(textNode : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function makeNode(index : Int) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	@:overload @:public public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload @:public public function getLanguage(node : Int) : String;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function setDocumentURI(uri : String) : Void;
	
	@:overload @:public public function getDocumentURI() : String;
	
	@:overload @:public public function getDocumentURI(node : Int) : String;
	
	@:overload @:public public function getDocument() : Int;
	
	@:overload @:public public function isElement(node : Int) : Bool;
	
	@:overload @:public public function isAttribute(node : Int) : Bool;
	
	@:overload @:public public function getNodeIdent(nodeHandle : Int) : Int;
	
	@:overload @:public public function getNodeHandle(nodeId : Int) : Int;
	
	/**
	* Return a instance of a DOM class to be used as an RTF
	*/
	@:overload @:public public function getResultTreeFrag(initSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Return a instance of a DOM class to be used as an RTF
	*/
	@:overload @:public public function getResultTreeFrag(initSize : Int, rtfType : Int, addToManager : Bool) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Returns a SerializationHandler class wrapped in a SAX adapter.
	*/
	@:overload @:public public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public public function lookupNamespace(node : Int, prefix : String) : String;
	
	@:overload @:public public function getUnparsedEntityURI(entity : String) : String;
	
	@:overload @:public public function getElementsWithIDs() : Hashtable;
	
	
}
