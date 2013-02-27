package com.sun.org.apache.xml.internal.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: ObjectPool.java,v 1.2.4.1 2005/09/15 08:15:50 suresh_emailid Exp $
*/
extern class ObjectPool implements java.io.Serializable
{
	/**
	* Constructor ObjectPool
	*
	* @param type Type of objects for this pool
	*/
	@:overload public function new(type : Class<Dynamic>) : Void;
	
	/**
	* Constructor ObjectPool
	*
	* @param className Fully qualified name of the type of objects for this pool.
	*/
	@:overload public function new(className : String) : Void;
	
	/**
	* Constructor ObjectPool
	*
	*
	* @param type Type of objects for this pool
	* @param size Size of vector to allocate
	*/
	@:overload public function new(type : Class<Dynamic>, size : Int) : Void;
	
	/**
	* Constructor ObjectPool
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Get an instance of the given object in this pool if available
	*
	*
	* @return an instance of the given object if available or null
	*/
	@:overload @:synchronized public function getInstanceIfFree() : Dynamic;
	
	/**
	* Get an instance of the given object in this pool
	*
	*
	* @return An instance of the given object
	*/
	@:overload @:synchronized public function getInstance() : Dynamic;
	
	/**
	* Add an instance of the given object to the pool
	*
	*
	* @param obj Object to add.
	*/
	@:overload @:synchronized public function freeInstance(obj : Dynamic) : Void;
	
	
}
