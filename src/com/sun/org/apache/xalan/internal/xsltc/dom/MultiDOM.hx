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
* $Id: MultiDOM.java,v 1.5 2005/09/28 13:48:36 pvedula Exp $
*/
extern class MultiDOM implements com.sun.org.apache.xalan.internal.xsltc.DOM
{
	@:overload @:public public function new(main : com.sun.org.apache.xalan.internal.xsltc.DOM) : Void;
	
	@:overload @:public public function nextMask() : Int;
	
	@:overload @:public public function setupMapping(names : java.NativeArray<String>, uris : java.NativeArray<String>, types : java.NativeArray<Int>, namespaces : java.NativeArray<String>) : Void;
	
	@:overload @:public public function addDOMAdapter(adapter : com.sun.org.apache.xalan.internal.xsltc.dom.DOMAdapter) : Int;
	
	@:overload @:public public function getDocumentMask(uri : String) : Int;
	
	@:overload @:public public function getDOMAdapter(uri : String) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getDocument() : Int;
	
	@:overload @:public public function getDTMManager() : com.sun.org.apache.xml.internal.dtm.DTMManager;
	
	/**
	* Returns singleton iterator containing the document root
	*/
	@:overload @:public public function getIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getStringValue() : String;
	
	@:overload @:public public function getChildren(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getTypedChildren(type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getAxisIterator(axis : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getTypedAxisIterator(axis : Int, type : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNthDescendant(node : Int, n : Int, includeself : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNodeValueIterator(iterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, type : Int, value : String, op : Bool) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getNamespaceAxisIterator(axis : Int, ns : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function orderNodes(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public public function getExpandedTypeID(node : Int) : Int;
	
	@:overload @:public public function getNamespaceType(node : Int) : Int;
	
	@:overload @:public public function getNSType(node : Int) : Int;
	
	@:overload @:public public function getParent(node : Int) : Int;
	
	@:overload @:public public function getAttributeNode(type : Int, el : Int) : Int;
	
	@:overload @:public public function getNodeName(node : Int) : String;
	
	@:overload @:public public function getNodeNameX(node : Int) : String;
	
	@:overload @:public public function getNamespaceName(node : Int) : String;
	
	@:overload @:public public function getStringValueX(node : Int) : String;
	
	@:overload @:public public function copy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function copy(nodes : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function shallowCopy(node : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : String;
	
	@:overload @:public public function lessThan(node1 : Int, node2 : Int) : Bool;
	
	@:overload @:public public function characters(textNode : Int, handler : com.sun.org.apache.xml.internal.serializer.SerializationHandler) : Void;
	
	@:overload @:public public function setFilter(filter : com.sun.org.apache.xalan.internal.xsltc.StripFilter) : Void;
	
	@:overload @:public public function makeNode(index : Int) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNode(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.Node;
	
	@:overload @:public public function makeNodeList(index : Int) : org.w3c.dom.NodeList;
	
	@:overload @:public public function makeNodeList(iter : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : org.w3c.dom.NodeList;
	
	@:overload @:public public function getLanguage(node : Int) : String;
	
	@:overload @:public public function getSize() : Int;
	
	@:overload @:public public function getDocumentURI(node : Int) : String;
	
	@:overload @:public public function isElement(node : Int) : Bool;
	
	@:overload @:public public function isAttribute(node : Int) : Bool;
	
	@:overload @:public public function getDTMId(nodeHandle : Int) : Int;
	
	@:overload @:public public function getDTM(nodeHandle : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getNodeIdent(nodeHandle : Int) : Int;
	
	@:overload @:public public function getNodeHandle(nodeId : Int) : Int;
	
	@:overload @:public public function getResultTreeFrag(initSize : Int, rtfType : Int) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getResultTreeFrag(initSize : Int, rtfType : Int, addToManager : Bool) : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	@:overload @:public public function getMain() : com.sun.org.apache.xalan.internal.xsltc.DOM;
	
	/**
	* Returns a DOMBuilder class wrapped in a SAX adapter.
	*/
	@:overload @:public public function getOutputDomBuilder() : com.sun.org.apache.xml.internal.serializer.SerializationHandler;
	
	@:overload @:public public function lookupNamespace(node : Int, prefix : String) : String;
	
	@:overload @:public public function getUnparsedEntityURI(entity : String) : String;
	
	@:overload @:public public function getElementsWithIDs() : Hashtable;
	
	
}
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$MultiDOM$AxisIterator') @:internal extern class MultiDOM_AxisIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload @:public public function new(axis : Int, type : Int) : Void;
	
	@:overload @:public override public function next() : Int;
	
	@:overload @:public override public function setRestartable(flag : Bool) : Void;
	
	@:overload @:public override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function getLast() : Int;
	
	@:overload @:public override public function getPosition() : Int;
	
	@:overload @:public override public function isReverse() : Bool;
	
	@:overload @:public override public function setMark() : Void;
	
	@:overload @:public override public function gotoMark() : Void;
	
	@:overload @:public override public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	
}
/**************************************************************
* This is a specialised iterator for predicates comparing node or
* attribute values to variable or parameter values.
*/
@:native('com$sun$org$apache$xalan$internal$xsltc$dom$MultiDOM$NodeValueIterator') @:internal extern class MultiDOM_NodeValueIterator extends com.sun.org.apache.xml.internal.dtm.ref.DTMAxisIteratorBase
{
	@:overload @:public public function new(source : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator, returnType : Int, value : String, op : Bool) : Void;
	
	@:overload @:public override public function isReverse() : Bool;
	
	@:overload @:public override public function cloneIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function setRestartable(isRestartable : Bool) : Void;
	
	@:overload @:public override public function reset() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function next() : Int;
	
	@:overload @:public override public function setStartNode(node : Int) : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	@:overload @:public override public function setMark() : Void;
	
	@:overload @:public override public function gotoMark() : Void;
	
	
}
