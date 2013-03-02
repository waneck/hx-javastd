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
extern class EntityReferenceImpl extends com.sun.org.apache.xerces.internal.dom.ParentNode implements org.w3c.dom.EntityReference
{
	/** Name of Entity referenced */
	private var name : String;
	
	/** Base URI*/
	private var baseURI : String;
	
	/** Factory constructor. */
	@:overload public function new(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, name : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the name of the entity referenced
	*/
	@:overload override public function getNodeName() : String;
	
	/** Clone node. */
	@:overload override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* Returns the absolute base URI of this node or null if the implementation
	* wasn't able to obtain an absolute URI. Note: If the URI is malformed, a
	* null is returned.
	*
	* @return The absolute base URI of this node or null.
	* @since DOM Level 3
	*/
	@:overload override public function getBaseURI() : String;
	
	/** NON-DOM: set base uri*/
	@:overload public function setBaseURI(uri : String) : Void;
	
	/**
	* NON-DOM: compute string representation of the entity reference.
	* This method is used to retrieve a string value for an attribute node that has child nodes.
	* @return String representing a value of this entity ref. or
	*          null if any node other than EntityReference, Text is encountered
	*          during computation
	*/
	@:overload private function getEntityRefValue() : String;
	
	/**
	* EntityReference's children are a reflection of those defined in the
	* named Entity. This method creates them if they haven't been created yet.
	* This doesn't support editing the Entity though, since this only called
	* once for all.
	*/
	@:overload private function synchronizeChildren() : Void;
	
	/**
	* NON-DOM: sets the node and its children value.
	* <P>
	* Note: make sure that entity reference and its kids could be set readonly.
	*/
	@:overload override public function setReadOnly(readOnly : Bool, deep : Bool) : Void;
	
	
}
