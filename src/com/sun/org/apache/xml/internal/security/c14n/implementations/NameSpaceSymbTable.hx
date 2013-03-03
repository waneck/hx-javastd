package com.sun.org.apache.xml.internal.security.c14n.implementations;
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
extern class NameSpaceSymbTable
{
	/**
	* Default constractor
	**/
	@:overload @:public public function new() : Void;
	
	/**
	* Get all the unrendered nodes in the name space.
	* For Inclusive rendering
	* @param result the list where to fill the unrendered xmlns definitions.
	**/
	@:overload @:public public function getUnrenderedNodes(result : java.util.Collection<Dynamic>) : Void;
	
	/**
	* Push a frame for visible namespace.
	* For Inclusive rendering.
	**/
	@:overload @:public public function outputNodePush() : Void;
	
	/**
	* Pop a frame for visible namespace.
	**/
	@:overload @:public public function outputNodePop() : Void;
	
	/**
	* Push a frame for a node.
	* Inclusive or Exclusive.
	**/
	@:overload @:public public function push() : Void;
	
	/**
	* Pop a frame.
	* Inclusive or Exclusive.
	**/
	@:overload @:public public function pop() : Void;
	
	/**
	* Gets the attribute node that defines the binding for the prefix.
	* @param prefix the prefix to obtain the attribute.
	* @return null if there is no need to render the prefix. Otherwise the node of
	* definition.
	**/
	@:overload @:public public function getMapping(prefix : String) : org.w3c.dom.Attr;
	
	/**
	* Gets a definition without mark it as render.
	* For render in exclusive c14n the namespaces in the include prefixes.
	* @param prefix The prefix whose definition is neaded.
	* @return the attr to render, null if there is no need to render
	**/
	@:overload @:public public function getMappingWithoutRendered(prefix : String) : org.w3c.dom.Attr;
	
	/**
	* Adds the mapping for a prefix.
	* @param prefix the prefix of definition
	* @param uri the Uri of the definition
	* @param n the attribute that have the definition
	* @return true if there is already defined.
	**/
	@:overload @:public public function addMapping(prefix : String, uri : String, n : org.w3c.dom.Attr) : Bool;
	
	/**
	* Adds a definition and mark it as render.
	* For inclusive c14n.
	* @param prefix the prefix of definition
	* @param uri the Uri of the definition
	* @param n the attribute that have the definition
	* @return the attr to render, null if there is no need to render
	**/
	@:overload @:public public function addMappingAndRender(prefix : String, uri : String, n : org.w3c.dom.Attr) : org.w3c.dom.Node;
	
	@:overload @:public public function getLevel() : Int;
	
	@:overload @:public public function removeMapping(prefix : String) : Void;
	
	@:overload @:public public function removeMappingIfNotRender(prefix : String) : Void;
	
	@:overload @:public public function removeMappingIfRender(prefix : String) : Bool;
	
	
}
@:internal extern class NameSpaceSymbEntry implements java.lang.Cloneable
{
	/** @inheritDoc */
	@:overload @:public public function clone() : Dynamic;
	
	
}
@:internal extern class SymbMap implements java.lang.Cloneable
{
	@:overload @:protected private function index(obj : Dynamic) : Int;
	
	/**
	* rehashes the map to the new capacity.
	*
	* @param newCapacity an <code>int</code> value
	*/
	@:overload @:protected private function rehash(newCapacity : Int) : Void;
	
	@:overload @:protected private function clone() : Dynamic;
	
	
}
