package com.sun.org.apache.xerces.internal.xni;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2004 The Apache Software Foundation.
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
/**
* <p> This represents the basic physical description of the location of any
* XML resource (a Schema grammar, a DTD, a general entity etc.) </p>
*
* @author Neil Graham, IBM
*/
extern interface XMLResourceIdentifier
{
	/** Sets the public identifier. */
	@:overload public function setPublicId(publicId : String) : Void;
	
	/** Returns the public identifier. */
	@:overload public function getPublicId() : String;
	
	/** Sets the expanded system identifier. */
	@:overload public function setExpandedSystemId(systemId : String) : Void;
	
	/** Returns the expanded system identifier. */
	@:overload public function getExpandedSystemId() : String;
	
	/** Sets the literal system identifier. */
	@:overload public function setLiteralSystemId(systemId : String) : Void;
	
	/** Returns the literal system identifier. */
	@:overload public function getLiteralSystemId() : String;
	
	/** Setsthe base URI against which the literal SystemId is to be
	resolved.*/
	@:overload public function setBaseSystemId(systemId : String) : Void;
	
	/** <p> Returns the base URI against which the literal SystemId is to be
	resolved. </p> */
	@:overload public function getBaseSystemId() : String;
	
	/** Sets the namespace of the resource. */
	@:overload public function setNamespace(namespace : String) : Void;
	
	/** Returns the namespace of the resource. */
	@:overload public function getNamespace() : String;
	
	
}
