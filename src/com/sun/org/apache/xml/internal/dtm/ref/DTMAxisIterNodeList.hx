package com.sun.org.apache.xml.internal.dtm.ref;
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
* $Id: DTMAxisIterNodeList.java,v 1.2.4.1 2005/09/15 08:14:59 suresh_emailid Exp $
*/
extern class DTMAxisIterNodeList extends com.sun.org.apache.xml.internal.dtm.ref.DTMNodeListBase
{
	/**
	* Public constructor: Wrap a DTMNodeList around an existing
	* and preconfigured DTMAxisIterator
	*/
	@:overload @:public public function new(dtm : com.sun.org.apache.xml.internal.dtm.DTM, dtmAxisIterator : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator) : Void;
	
	/**
	* Access the wrapped DTMIterator. I'm not sure whether anyone will
	* need this or not, but let's write it and think about it.
	*
	*/
	@:overload @:public public function getDTMAxisIterator() : com.sun.org.apache.xml.internal.dtm.DTMAxisIterator;
	
	/**
	* Returns the <code>index</code>th item in the collection. If
	* <code>index</code> is greater than or equal to the number of nodes in
	* the list, this returns <code>null</code>.
	* @param index Index into the collection.
	* @return The node at the <code>index</code>th position in the
	*   <code>NodeList</code>, or <code>null</code> if that is not a valid
	*   index.
	*/
	@:overload @:public override public function item(index : Int) : org.w3c.dom.Node;
	
	/**
	* The number of nodes in the list. The range of valid child node indices
	* is 0 to <code>length-1</code> inclusive.
	*/
	@:overload @:public override public function getLength() : Int;
	
	
}
