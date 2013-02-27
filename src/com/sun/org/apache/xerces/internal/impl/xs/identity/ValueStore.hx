package com.sun.org.apache.xerces.internal.impl.xs.identity;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2001, 2002,2004,2005 The Apache Software Foundation.
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
extern interface ValueStore
{
	/**
	* Adds the specified value to the value store.
	*
	* @param field The field associated to the value. This reference
	*              is used to ensure that each field only adds a value
	*              once within a selection scope.
	* @param actualValue The value to add.
	*/
	@:overload public function addValue(field : com.sun.org.apache.xerces.internal.impl.xs.identity.Field, actualValue : Dynamic, valueType : java.StdTypes.Int16, itemValueType : com.sun.org.apache.xerces.internal.xs.ShortList) : Void;
	
	/**
	* Since the valueStore will have access to an error reporter, this
	* allows it to be called appropriately.
	* @param key  the key of the localized error message
	* @param args  the list of arguments for substitution.
	*/
	@:overload public function reportError(key : String, args : java.NativeArray<Dynamic>) : Void;
	
	
}
