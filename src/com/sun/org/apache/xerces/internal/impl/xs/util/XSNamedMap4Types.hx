package com.sun.org.apache.xerces.internal.impl.xs.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004 The Apache Software Foundation.
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
extern class XSNamedMap4Types extends com.sun.org.apache.xerces.internal.impl.xs.util.XSNamedMapImpl
{
	/**
	* Construct an XSNamedMap implementation for one namespace
	*
	* @param namespace the namespace to which the components belong
	* @param map       the map from local names to components
	* @param type      the type of components
	*/
	@:overload public function new(namespace : String, map : com.sun.org.apache.xerces.internal.util.SymbolHash, type : java.StdTypes.Int16) : Void;
	
	/**
	* Construct an XSNamedMap implementation for a list of namespaces
	*
	* @param namespaces the namespaces to which the components belong
	* @param maps       the maps from local names to components
	* @param num        the number of namespaces
	* @param type      the type of components
	*/
	@:overload public function new(namespaces : java.NativeArray<String>, maps : java.NativeArray<com.sun.org.apache.xerces.internal.util.SymbolHash>, num : Int, type : java.StdTypes.Int16) : Void;
	
	/**
	* The number of <code>XSObjects</code> in the <code>XSObjectList</code>. The
	* range of valid child node indices is 0 to <code>length-1</code>
	* inclusive.
	*/
	@:overload @:synchronized public function getLength() : Int;
	
	/**
	* Retrieves an <code>XSObject</code> specified by local name and namespace
	* URI.
	* @param namespace The namespace URI of the <code>XSObject</code> to
	*   retrieve.
	* @param localName The local name of the <code>XSObject</code> to retrieve.
	* @return A <code>XSObject</code> (of any type) with the specified local
	*   name and namespace URI, or <code>null</code> if they do not
	*   identify any <code>XSObject</code> in this map.
	*/
	@:overload public function itemByName(namespace : String, localName : String) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	/**
	* Returns the <code>index</code>th item in the map. The index starts at
	* 0. If <code>index</code> is greater than or equal to the number of
	* nodes in the list, this returns <code>null</code>.
	* @param index The position in the map from which the item is to be
	*   retrieved.
	* @return The <code>XSObject</code> at the <code>index</code>th position
	*   in the <code>XSNamedMap</code>, or <code>null</code> if that is
	*   not a valid index.
	*/
	@:overload @:synchronized public function item(index : Int) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	
}
