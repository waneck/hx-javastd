package com.sun.org.apache.xml.internal.security.c14n.helper;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern class AttrCompare implements java.util.Comparator<Dynamic> implements java.io.Serializable
{
	/**
	* Compares two attributes based on the C14n specification.
	*
	* <UL>
	* <LI>Namespace nodes have a lesser document order position than
	*   attribute nodes.
	* <LI> An element's namespace nodes are sorted lexicographically by
	*   local name (the default namespace node, if one exists, has no
	*   local name and is therefore lexicographically least).
	* <LI> An element's attribute nodes are sorted lexicographically with
	*   namespace URI as the primary key and local name as the secondary
	*   key (an empty namespace URI is lexicographically least).
	* </UL>
	*
	* @param obj0 casted Attr
	* @param obj1 casted Attr
	* @return returns a negative integer, zero, or a positive integer as
	*   obj0 is less than, equal to, or greater than obj1
	*
	*/
	@:overload public function compare(obj0 : Dynamic, obj1 : Dynamic) : Int;
	
	
}
