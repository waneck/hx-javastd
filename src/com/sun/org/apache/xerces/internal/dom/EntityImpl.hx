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
extern class EntityImpl extends com.sun.org.apache.xerces.internal.dom.ParentNode implements org.w3c.dom.Entity
{
	/** Entity name. */
	@:protected private var name : String;
	
	/** Public identifier. */
	@:protected private var publicId : String;
	
	/** System identifier. */
	@:protected private var systemId : String;
	
	/** Encoding */
	@:protected private var encoding : String;
	
	/** Input Encoding */
	@:protected private var inputEncoding : String;
	
	/** Version */
	@:protected private var version : String;
	
	/** Notation name. */
	@:protected private var notationName : String;
	
	/** base uri*/
	@:protected private var baseURI : String;
	
	/** Factory constructor. */
	@:overload @:public public function new(ownerDoc : com.sun.org.apache.xerces.internal.dom.CoreDocumentImpl, name : String) : Void;
	
	/**
	* A short integer indicating what type of node this is. The named
	* constants for this value are defined in the org.w3c.dom.Node interface.
	*/
	@:overload @:public override public function getNodeType() : java.StdTypes.Int16;
	
	/**
	* Returns the entity name
	*/
	@:overload @:public override public function getNodeName() : String;
	
	/**
	* Sets the node value.
	* @throws DOMException(NO_MODIFICATION_ALLOWED_ERR)
	*/
	@:overload @:public override public function setNodeValue(x : String) : Void;
	
	/**
	* The namespace prefix of this node
	* @exception DOMException
	*   <br>NO_MODIFICATION_ALLOWED_ERR: Raised if this node is readonly.
	*/
	@:overload @:public override public function setPrefix(prefix : String) : Void;
	
	/** Clone node. */
	@:overload @:public override public function cloneNode(deep : Bool) : org.w3c.dom.Node;
	
	/**
	* The public identifier associated with the entity. If not specified,
	* this will be null.
	*/
	@:overload @:public public function getPublicId() : String;
	
	/**
	* The system identifier associated with the entity. If not specified,
	* this will be null.
	*/
	@:overload @:public public function getSystemId() : String;
	
	/**
	* DOM Level 3 WD - experimental
	* the version number of this entity, when it is an external parsed entity.
	*/
	@:overload @:public public function getXmlVersion() : String;
	
	/**
	* DOM Level 3 WD - experimental
	* the encoding of this entity, when it is an external parsed entity.
	*/
	@:overload @:public public function getXmlEncoding() : String;
	
	/**
	* Unparsed entities -- which contain non-XML data -- have a
	* "notation name" which tells applications how to deal with them.
	* Parsed entities, which <em>are</em> in XML format, don't need this and
	* set it to null.
	*/
	@:overload @:public public function getNotationName() : String;
	
	/**
	* DOM Level 2: The public identifier associated with the entity. If not specified,
	* this will be null. */
	@:overload @:public public function setPublicId(id : String) : Void;
	
	/**
	* NON-DOM
	* encoding - An attribute specifying, as part of the text declaration,
	* the encoding of this entity, when it is an external parsed entity.
	* This is null otherwise
	*
	*/
	@:overload @:public public function setXmlEncoding(value : String) : Void;
	
	/**
	* An attribute specifying the encoding used for this entity at the tiome
	* of parsing, when it is an external parsed entity. This is
	* <code>null</code> if it an entity from the internal subset or if it
	* is not known..
	* @since DOM Level 3
	*/
	@:overload @:public public function getInputEncoding() : String;
	
	/**
	* NON-DOM, used to set the input encoding.
	*/
	@:overload @:public public function setInputEncoding(inputEncoding : String) : Void;
	
	/**
	* NON-DOM
	* version - An attribute specifying, as part of the text declaration,
	* the version number of this entity, when it is an external parsed entity.
	* This is null otherwise
	*/
	@:overload @:public public function setXmlVersion(value : String) : Void;
	
	/**
	* DOM Level 2: The system identifier associated with the entity. If not
	* specified, this will be null.
	*/
	@:overload @:public public function setSystemId(id : String) : Void;
	
	/**
	* DOM Level 2: Unparsed entities -- which contain non-XML data -- have a
	* "notation name" which tells applications how to deal with them.
	* Parsed entities, which <em>are</em> in XML format, don't need this and
	* set it to null.
	*/
	@:overload @:public public function setNotationName(name : String) : Void;
	
	/**
	* Returns the absolute base URI of this node or null if the implementation
	* wasn't able to obtain an absolute URI. Note: If the URI is malformed, a
	* null is returned.
	*
	* @return The absolute base URI of this node or null.
	* @since DOM Level 3
	*/
	@:overload @:public override public function getBaseURI() : String;
	
	/** NON-DOM: set base uri*/
	@:overload @:public public function setBaseURI(uri : String) : Void;
	
	
}
