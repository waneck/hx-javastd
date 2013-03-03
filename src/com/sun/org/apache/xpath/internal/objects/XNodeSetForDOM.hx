package com.sun.org.apache.xpath.internal.objects;
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
* $Id: XNodeSetForDOM.java,v 1.2.4.1 2005/09/14 20:34:46 jeffsuttor Exp $
*/
extern class XNodeSetForDOM extends com.sun.org.apache.xpath.internal.objects.XNodeSet
{
	@:overload @:public public function new(node : org.w3c.dom.Node, dtmMgr : com.sun.org.apache.xml.internal.dtm.DTMManager) : Void;
	
	/**
	* Construct a XNodeSet object.
	*
	* @param val Value of the XNodeSet object
	*/
	@:overload @:public public function new(val : com.sun.org.apache.xpath.internal.objects.XNodeSet) : Void;
	
	@:overload @:public public function new(nodeList : org.w3c.dom.NodeList, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	@:overload @:public public function new(nodeIter : org.w3c.dom.traversal.NodeIterator, xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Void;
	
	/**
	* Return the original DOM object that the user passed in.  For use primarily
	* by the extension mechanism.
	*
	* @return The object that this class wraps
	*/
	@:overload @:public override public function object() : Dynamic;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function nodeset() : org.w3c.dom.traversal.NodeIterator;
	
	/**
	* Cast result object to a nodelist. Always issues an error.
	*
	* @return null
	*
	* @throws javax.xml.transform.TransformerException
	*/
	@:overload @:public override public function nodelist() : org.w3c.dom.NodeList;
	
	
}
