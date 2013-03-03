package com.sun.org.apache.xerces.internal.impl.dv;
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
extern class DTDDVFactory
{
	/**
	* Get an instance of the default DTDDVFactory implementation.
	*
	* @return  an instance of DTDDVFactory implementation
	* @exception DVFactoryException  cannot create an instance of the specified
	*                                class name or the default class name
	*/
	@:overload @:public @:static @:final public static function getInstance() : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	/**
	* Get an instance of DTDDVFactory implementation.
	*
	* @param factoryClass  name of the implementation to load.
	* @return  an instance of DTDDVFactory implementation
	* @exception DVFactoryException  cannot create an instance of the specified
	*                                class name or the default class name
	*/
	@:overload @:public @:static @:final public static function getInstance(factoryClass : String) : com.sun.org.apache.xerces.internal.impl.dv.DTDDVFactory;
	
	@:overload @:protected private function new() : Void;
	
	/**
	* return a dtd type of the given name
	*
	* @param name  the name of the datatype
	* @return      the datatype validator of the given name
	*/
	@:overload @:public @:abstract public function getBuiltInDV(name : String) : com.sun.org.apache.xerces.internal.impl.dv.DatatypeValidator;
	
	/**
	* get all built-in DVs, which are stored in a hashtable keyed by the name
	*
	* @return      a hashtable which contains all datatypes
	*/
	@:overload @:public @:abstract public function getBuiltInTypes() : java.util.Hashtable<Dynamic, Dynamic>;
	
	
}
