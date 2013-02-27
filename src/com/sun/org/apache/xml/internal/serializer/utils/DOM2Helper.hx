package com.sun.org.apache.xml.internal.serializer.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
* $Id: DOM2Helper.java,v 1.1.4.1 2005/09/08 11:03:09 suresh_emailid Exp $
*/
extern class DOM2Helper
{
	/**
	* Construct an instance.
	*/
	@:overload public function new() : Void;
	
	/**
	* Returns the local name of the given node, as defined by the
	* XML Namespaces specification. This is prepared to handle documents
	* built using DOM Level 1 methods by falling back upon explicitly
	* parsing the node name.
	*
	* @param n Node to be examined
	*
	* @return String containing the local name, or null if the node
	* was not assigned a Namespace.
	*/
	@:overload public function getLocalNameOfNode(n : org.w3c.dom.Node) : String;
	
	/**
	* Returns the Namespace Name (Namespace URI) for the given node.
	* In a Level 2 DOM, you can ask the node itself. Note, however, that
	* doing so conflicts with our decision in getLocalNameOfNode not
	* to trust the that the DOM was indeed created using the Level 2
	* methods. If Level 1 methods were used, these two functions will
	* disagree with each other.
	* <p>
	* TODO: Reconcile with getLocalNameOfNode.
	*
	* @param n Node to be examined
	*
	* @return String containing the Namespace URI bound to this DOM node
	* at the time the Node was created.
	*/
	@:overload public function getNamespaceOfNode(n : org.w3c.dom.Node) : String;
	
	
}
