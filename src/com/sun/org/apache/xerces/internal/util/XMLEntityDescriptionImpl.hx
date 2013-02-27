package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern class XMLEntityDescriptionImpl extends com.sun.org.apache.xerces.internal.util.XMLResourceIdentifierImpl implements com.sun.org.apache.xerces.internal.impl.XMLEntityDescription
{
	/** Constructs an empty entity description. */
	@:overload public function new() : Void;
	
	/**
	* Constructs an entity description.
	*
	* @param entityName The name of the entity.
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	*/
	@:overload public function new(entityName : String, publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String) : Void;
	
	/**
	* Constructs a resource identifier.
	*
	* @param entityName The name of the entity.
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	* @param namespace The namespace.
	*/
	@:overload public function new(entityName : String, publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String, namespace : String) : Void;
	
	/** The name of the entity. */
	private var fEntityName : String;
	
	/**
	* Sets the name of the entity.
	*
	* @param name the name of the entity
	*/
	@:overload public function setEntityName(name : String) : Void;
	
	/**
	* Returns the name of the entity.
	*
	* @return the name of the entity
	*/
	@:overload public function getEntityName() : String;
	
	/**
	* <p>Sets the values of this entity description.</p>
	*
	* @param entityName The name of the entity.
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	*/
	@:overload public function setDescription(entityName : String, publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String) : Void;
	
	/**
	* <p>Sets the values of this entity description.</p>
	*
	* @param entityName The name of the entity.
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	* @param namespace The namespace.
	*/
	@:overload public function setDescription(entityName : String, publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String, namespace : String) : Void;
	
	/**
	* <p>Clears the values.</p>
	*/
	@:overload override public function clear() : Void;
	
	/** Returns a hash code for this object. */
	@:overload override public function hashCode() : Int;
	
	/** Returns a string representation of this object. */
	@:overload override public function toString() : String;
	
	
}
