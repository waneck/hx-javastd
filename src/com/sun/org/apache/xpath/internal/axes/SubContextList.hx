package com.sun.org.apache.xpath.internal.axes;
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
* $Id: SubContextList.java,v 1.1.2.1 2005/08/01 01:30:28 jeffsuttor Exp $
*/
extern interface SubContextList
{
	/**
	* Get the number of nodes in the node list, which, in the XSLT 1 based
	* counting system, is the last index position.
	*
	*
	* @param xctxt The XPath runtime context.
	*
	* @return the number of nodes in the node list.
	*/
	@:overload @:public public function getLastPos(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	/**
	* Get the current sub-context position.
	*
	* @param xctxt The XPath runtime context.
	*
	* @return The position of the current node in the list.
	*/
	@:overload @:public public function getProximityPosition(xctxt : com.sun.org.apache.xpath.internal.XPathContext) : Int;
	
	
}
