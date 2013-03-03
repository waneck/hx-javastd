package com.sun.org.apache.xerces.internal.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004,2005 The Apache Software Foundation.
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
* <p>A structure that represents an error code, characterized by
* a domain and a message key.</p>
*
* @author Naela Nissar, IBM
*
*/
@:internal extern class XMLErrorCode
{
	/**
	* <p>Constructs an XMLErrorCode with the given domain and key.</p>
	*
	* @param domain The error domain.
	* @param key The key of the error message.
	*/
	@:overload @:public public function new(domain : String, key : String) : Void;
	
	/**
	* <p>Convenience method to set the values of an XMLErrorCode.</p>
	*
	* @param domain The error domain.
	* @param key The key of the error message.
	*/
	@:overload @:public public function setValues(domain : String, key : String) : Void;
	
	/**
	* <p>Indicates whether some other object is equal to this XMLErrorCode.</p>
	*
	* @param obj the object with which to compare.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* <p>Returns a hash code value for this XMLErrorCode.</p>
	*
	* @return a hash code value for this XMLErrorCode.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
