package com.sun.org.apache.xalan.internal.lib;
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
* $Id: ExsltSets.java,v 1.1.2.1 2005/08/01 02:08:50 jeffsuttor Exp $
*/
extern class ExsltSets extends com.sun.org.apache.xalan.internal.lib.ExsltBase
{
	/**
	* The set:leading function returns the nodes in the node set passed as the first argument that
	* precede, in document order, the first node in the node set passed as the second argument. If
	* the first node in the second node set is not contained in the first node set, then an empty
	* node set is returned. If the second node set is empty, then the first node set is returned.
	*
	* @param nl1 NodeList for first node-set.
	* @param nl2 NodeList for second node-set.
	* @return a NodeList containing the nodes in nl1 that precede in document order the first
	* node in nl2; an empty node-set if the first node in nl2 is not in nl1; all of nl1 if nl2
	* is empty.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function leading(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The set:trailing function returns the nodes in the node set passed as the first argument that
	* follow, in document order, the first node in the node set passed as the second argument. If
	* the first node in the second node set is not contained in the first node set, then an empty
	* node set is returned. If the second node set is empty, then the first node set is returned.
	*
	* @param nl1 NodeList for first node-set.
	* @param nl2 NodeList for second node-set.
	* @return a NodeList containing the nodes in nl1 that follow in document order the first
	* node in nl2; an empty node-set if the first node in nl2 is not in nl1; all of nl1 if nl2
	* is empty.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function trailing(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The set:intersection function returns a node set comprising the nodes that are within
	* both the node sets passed as arguments to it.
	*
	* @param nl1 NodeList for first node-set.
	* @param nl2 NodeList for second node-set.
	* @return a NodeList containing the nodes in nl1 that are also
	* in nl2.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function intersection(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The set:difference function returns the difference between two node sets - those nodes that
	* are in the node set passed as the first argument that are not in the node set passed as the
	* second argument.
	*
	* @param nl1 NodeList for first node-set.
	* @param nl2 NodeList for second node-set.
	* @return a NodeList containing the nodes in nl1 that are not in nl2.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function difference(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The set:distinct function returns a subset of the nodes contained in the node-set NS passed
	* as the first argument. Specifically, it selects a node N if there is no node in NS that has
	* the same string value as N, and that precedes N in document order.
	*
	* @param nl NodeList for the node-set.
	* @return a NodeList with nodes from nl containing distinct string values.
	* In other words, if more than one node in nl contains the same string value,
	* only include the first such node found.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function distinct(nl : org.w3c.dom.NodeList) : org.w3c.dom.NodeList;
	
	/**
	* The set:has-same-node function returns true if the node set passed as the first argument shares
	* any nodes with the node set passed as the second argument. If there are no nodes that are in both
	* node sets, then it returns false.
	*
	* The Xalan extensions MethodResolver converts 'has-same-node' to 'hasSameNode'.
	*
	* Note: Not to be confused with hasSameNodes in the Xalan namespace, which returns true if
	* the two node sets contain the exactly the same nodes (perhaps in a different order),
	* otherwise false.
	*
	* @see <a href="http://www.exslt.org/">EXSLT</a>
	*/
	@:overload @:public @:static public static function hasSameNode(nl1 : org.w3c.dom.NodeList, nl2 : org.w3c.dom.NodeList) : Bool;
	
	
}
