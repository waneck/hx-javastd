package com.sun.org.apache.xml.internal.security.signature;
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
extern interface NodeFilter
{
	/**
	* Tells if a node must be outputed in c14n.
	* @param n
	* @return 1 if the node should be outputed.
	*                 0 if node must not be outputed,
	*                -1 if the node and all it's child must not be output.
	*
	*/
	@:overload public function isNodeInclude(n : org.w3c.dom.Node) : Int;
	
	/**
	* Tells if a node must be outputed in a c14n.
	* The caller must assured that this method is always call
	* in document order. The implementations can use this
	* restriction to optimize the transformation.
	* @param n
	* @param level the relative level in the tree
	* @return 1 if the node should be outputed.
	*                 0 if node must not be outputed,
	*                -1 if the node and all it's child must not be output.
	*/
	@:overload public function isNodeIncludeDO(n : org.w3c.dom.Node, level : Int) : Int;
	
	
}