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
extern class ProcessingInstructionImpl extends com.sun.org.apache.xerces.internal.dom.CharacterDataImpl implements org.w3c.dom.ProcessingInstruction
{
	private var target : String;
	
	/** Factory constructor. */
	@:overload public function new(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, target : String, data : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the target
	*/
	@:overload override public function getNodeName() : String;
	
	/**
	* A PI's "target" states what processor channel the PI's data
	* should be directed to. It is defined differently in HTML and XML.
	* <p>
	* In XML, a PI's "target" is the first (whitespace-delimited) token
	* following the "<?" token that begins the PI.
	* <p>
	* In HTML, target is always null.
	* <p>
	* Note that getNodeName is aliased to getTarget.
	*/
	@:overload public function getTarget() : String;
	
	/**
	* A PI's data content tells the processor what we actually want it
	* to do.  It is defined slightly differently in HTML and XML.
	* <p>
	* In XML, the data begins with the non-whitespace character
	* immediately after the target -- @see getTarget().
	* <p>
	* In HTML, the data begins with the character immediately after the
	* "&lt;?" token that begins the PI.
	* <p>
	* Note that getNodeValue is aliased to getData
	*/
	@:overload override public function getData() : String;
	
	/**
	* Change the data content of this PI.
	* Note that setData is aliased to setNodeValue.
	* @see #getData().
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR) if node is read-only.
	*/
	@:overload override public function setData(data : String) : Void;
	
	/**
	* Returns the absolute base URI of this node or null if the implementation
	* wasn't able to obtain an absolute URI. Note: If the URI is malformed, a
	* null is returned.
	*
	* @return The absolute base URI of this node or null.
	* @since DOM Level 3
	*/
	@:overload override public function getBaseURI() : String;
	
	
}
