package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2002,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class ElementDefinitionImpl extends com.sun.org.apache.xerces.internal.dom.ParentNode
{
	/** Element definition name. */
	@:protected private var name : String;
	
	/** Default attributes. */
	@:protected private var attributes : com.sun.org.apache.xerces.internal.dom.NamedNodeMapImpl;
	
	/** Factory constructor. */
	@:overload @:public public function new(ownerDocument : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, name : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload @:public override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the element definition name
	*/
	@:overload @:public override public function getNodeName() : String;
	
	/**
	* Replicate this object.
	*/
	@:overload @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Query the attributes defined on this Element.
	* <p>
	* In the base implementation this Map simply contains Attribute objects
	* representing the defaults. In a more serious implementation, it would
	* contain AttributeDefinitionImpl objects for all declared Attributes,
	* indicating which are Default, DefaultFixed, Implicit and/or Required.
	*
	* @return org.w3c.dom.NamedNodeMap containing org.w3c.dom.Attribute
	*/
	@:overload @:public override public function getAttributes() : org.w3c.dom.NamedNodeMap;
	
	
}
