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
extern class ValidatedInfo
{
	/**
	* The normalized value of a string value
	*/
	@:public public var normalizedValue : String;
	
	/**
	* The actual value from a string value (QName, Boolean, etc.)
	* An array of Objects if the type is a list.
	*/
	@:public public var actualValue : Dynamic;
	
	/**
	* The type of the actual value. It's one of the _DT constants
	* defined in XSConstants.java. The value is used to indicate
	* the most specific built-in type.
	* (i.e. short instead of decimal or integer).
	*/
	@:public public var actualValueType : java.StdTypes.Int16;
	
	/**
	* If the type is a union type, then the member type which
	* actually validated the string value.
	*/
	@:public public var memberType : com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType;
	
	/**
	* If
	* 1. the type is a union type where one of the member types is a list, or
	*    if the type is a list; and
	* 2. the item type of the list is a union type
	* then an array of member types used to validate the values.
	*/
	@:public public var memberTypes : java.NativeArray<com.sun.org.apache.xerces.internal.impl.dv.XSSimpleType>;
	
	/**
	* In the case the value is a list or a list of unions, this value
	* indicates the type(s) of the items in the list.
	* For a normal list, the length of the array is 1; for list of unions,
	* the length of the array is the same as the length of the list.
	*/
	@:public public var itemValueTypes : com.sun.org.apache.xerces.internal.xs.ShortList;
	
	/**
	* reset the state of this object
	*/
	@:overload @:public public function reset() : Void;
	
	/**
	* Return a string representation of the value. If there is an actual
	* value, use toString; otherwise, use the normalized value.
	*/
	@:overload @:public public function stringValue() : String;
	
	
}
