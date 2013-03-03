package com.sun.org.apache.xerces.internal.xni;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2000-2002,2004 The Apache Software Foundation.
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
extern interface Augmentations
{
	/**
	* Add additional information identified by a key to the Augmentations structure.
	*
	* @param key    Identifier, can't be <code>null</code>
	* @param item   Additional information
	*
	* @return the previous value of the specified key in the Augmentations structure,
	*         or <code>null</code> if it did not have one.
	*/
	@:overload @:public public function putItem(key : String, item : Dynamic) : Dynamic;
	
	/**
	* Get information identified by a key from the Augmentations structure
	*
	* @param key    Identifier, can't be <code>null</code>
	*
	* @return the value to which the key is mapped in the Augmentations structure;
	*         <code>null</code> if the key is not mapped to any value.
	*/
	@:overload @:public public function getItem(key : String) : Dynamic;
	
	/**
	* Remove additional info from the Augmentations structure
	*
	* @param key    Identifier, can't be <code>null</code>
	* @return the previous value of the specified key in the Augmentations structure,
	*         or <code>null</code> if it did not have one.
	*/
	@:overload @:public public function removeItem(key : String) : Dynamic;
	
	/**
	* Returns an enumeration of the keys in the Augmentations structure
	*
	*/
	@:overload @:public public function keys() : java.util.Enumeration<Dynamic>;
	
	/**
	* Remove all objects from the Augmentations structure.
	*/
	@:overload @:public public function removeAllItems() : Void;
	
	
}
