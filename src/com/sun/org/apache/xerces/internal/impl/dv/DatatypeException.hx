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
extern class DatatypeException extends java.lang.Exception
{
	private var key : String;
	
	private var args : java.NativeArray<Dynamic>;
	
	/**
	* Create a new datatype exception by providing an error code and a list
	* of error message substitution arguments.
	*
	* @param key  error code
	* @param args error arguments
	*/
	@:overload public function new(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Return the error code
	*
	* @return  error code
	*/
	@:overload public function getKey() : String;
	
	/**
	* Return the list of error arguments
	*
	* @return  error arguments
	*/
	@:overload public function getArgs() : java.NativeArray<Dynamic>;
	
	/**
	* Overrides this method to get the formatted&localized error message.
	*
	* REVISIT: the system locale is used to load the property file.
	*          do we want to allow the appilcation to specify a
	*          different locale?
	*/
	@:overload override public function getMessage() : String;
	
	
}
