package com.sun.org.apache.xerces.internal.xni.parser;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004 The Apache Software Foundation.
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
extern class XMLConfigurationException extends com.sun.org.apache.xerces.internal.xni.XNIException
{
	/** Exception type. */
	@:protected private var fType : com.sun.org.apache.xerces.internal.util.Status;
	
	/** Identifier. */
	@:protected private var fIdentifier : String;
	
	/**
	* Constructs a configuration exception with the specified type
	* and feature/property identifier.
	*
	* @param type       The type of the exception.
	* @param identifier The feature or property identifier.
	*/
	@:overload @:public public function new(type : com.sun.org.apache.xerces.internal.util.Status, identifier : String) : Void;
	
	/**
	* Constructs a configuration exception with the specified type,
	* feature/property identifier, and error message
	*
	* @param type       The type of the exception.
	* @param identifier The feature or property identifier.
	* @param message    The error message.
	*/
	@:overload @:public public function new(type : com.sun.org.apache.xerces.internal.util.Status, identifier : String, message : String) : Void;
	
	/**
	* Returns the exception type.
	*/
	@:overload @:public public function getType() : com.sun.org.apache.xerces.internal.util.Status;
	
	/** Returns the feature or property identifier. */
	@:overload @:public public function getIdentifier() : String;
	
	
}
