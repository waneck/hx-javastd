package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002, 2003,2004 The Apache Software Foundation.
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
extern class XMLResourceIdentifierImpl implements com.sun.org.apache.xerces.internal.xni.XMLResourceIdentifier
{
	/** The public identifier. */
	@:protected private var fPublicId : String;
	
	/** The literal system identifier. */
	@:protected private var fLiteralSystemId : String;
	
	/** The base system identifier. */
	@:protected private var fBaseSystemId : String;
	
	/** The expanded system identifier. */
	@:protected private var fExpandedSystemId : String;
	
	/** The namespace of the resource. */
	@:protected private var fNamespace : String;
	
	/** Constructs an empty resource identifier. */
	@:overload @:public public function new() : Void;
	
	/**
	* Constructs a resource identifier.
	*
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	*/
	@:overload @:public public function new(publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String) : Void;
	
	/**
	* Constructs a resource identifier.
	*
	* @param publicId The public identifier.
	* @param literalSystemId The literal system identifier.
	* @param baseSystemId The base system identifier.
	* @param expandedSystemId The expanded system identifier.
	* @param namespace The namespace.
	*/
	@:overload @:public public function new(publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String, namespace : String) : Void;
	
	/** Sets the values of the resource identifier. */
	@:overload @:public public function setValues(publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String) : Void;
	
	/** Sets the values of the resource identifier. */
	@:overload @:public public function setValues(publicId : String, literalSystemId : String, baseSystemId : String, expandedSystemId : String, namespace : String) : Void;
	
	/** Clears the values. */
	@:overload @:public public function clear() : Void;
	
	/** Sets the public identifier. */
	@:overload @:public public function setPublicId(publicId : String) : Void;
	
	/** Sets the literal system identifier. */
	@:overload @:public public function setLiteralSystemId(literalSystemId : String) : Void;
	
	/** Sets the base system identifier. */
	@:overload @:public public function setBaseSystemId(baseSystemId : String) : Void;
	
	/** Sets the expanded system identifier. */
	@:overload @:public public function setExpandedSystemId(expandedSystemId : String) : Void;
	
	/** Sets the namespace of the resource. */
	@:overload @:public public function setNamespace(namespace : String) : Void;
	
	/** Returns the public identifier. */
	@:overload @:public public function getPublicId() : String;
	
	/** Returns the literal system identifier. */
	@:overload @:public public function getLiteralSystemId() : String;
	
	/**
	* Returns the base URI against which the literal SystemId is to be resolved.
	*/
	@:overload @:public public function getBaseSystemId() : String;
	
	/** Returns the expanded system identifier. */
	@:overload @:public public function getExpandedSystemId() : String;
	
	/** Returns the namespace of the resource. */
	@:overload @:public public function getNamespace() : String;
	
	/** Returns a hash code for this object. */
	@:overload @:public public function hashCode() : Int;
	
	/** Returns a string representation of this object. */
	@:overload @:public public function toString() : String;
	
	
}
