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
extern class NotationImpl extends com.sun.org.apache.xerces.internal.dom.NodeImpl implements org.w3c.dom.Notation
{
	/** Notation name. */
	private var name : String;
	
	/** Public identifier. */
	private var publicId : String;
	
	/** System identifier. */
	private var systemId : String;
	
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
	* Returns the notation name
	*/
	@:overload override public function getNodeName() : String;
	
	/**
	* The Public Identifier for this Notation. If no public identifier
	* was specified, this will be null.
	*/
	@:overload public function getPublicId() : String;
	
	/**
	* The System Identifier for this Notation. If no system identifier
	* was specified, this will be null.
	*/
	@:overload public function getSystemId() : String;
	
	/**
	* NON-DOM: The Public Identifier for this Notation. If no public
	* identifier was specified, this will be null.
	*/
	@:overload public function setPublicId(id : String) : Void;
	
	/**
	* NON-DOM: The System Identifier for this Notation. If no system
	* identifier was specified, this will be null.
	*/
	@:overload public function setSystemId(id : String) : Void;
	
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
	
	
}
