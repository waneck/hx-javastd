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
extern class XSNamedMapImpl extends java.util.AbstractMap<Dynamic, Dynamic> implements com.sun.org.apache.xerces.internal.xs.XSNamedMap
{
	/**
	* An immutable empty map.
	*/
	public static var EMPTY_MAP(default, null) : com.sun.org.apache.xerces.internal.impl.xs.util.XSNamedMapImpl;
	
	/**
	* Construct an XSNamedMap implementation for one namespace
	*
	* @param namespace the namespace to which the components belong
	* @param map       the map from local names to components
	*/
	@:overload public function new(namespace : String, map : com.sun.org.apache.xerces.internal.util.SymbolHash) : Void;
	
	/**
	* Construct an XSNamedMap implementation for a list of namespaces
	*
	* @param namespaces the namespaces to which the components belong
	* @param maps       the maps from local names to components
	* @param num        the number of namespaces
	*/
	@:overload public function new(namespaces : java.NativeArray<String>, maps : java.NativeArray<com.sun.org.apache.xerces.internal.util.SymbolHash>, num : Int) : Void;
	
	/**
	* Construct an XSNamedMap implementation one namespace from an array
	*
	* @param array     containing all components
	* @param length    number of components
	*/
	@:overload public function new(array : java.NativeArray<com.sun.org.apache.xerces.internal.xs.XSObject>, length : Int) : Void;
	
	/**
	* The number of <code>XSObjects</code> in the <code>XSObjectList</code>.
	* The range of valid child object indices is 0 to <code>length-1</code>
	* inclusive.
	*/
	@:overload @:synchronized public function getLength() : Int;
	
	/**
	* Retrieves an <code>XSObject</code> specified by local name and
	* namespace URI.
	* <br>Per XML Namespaces, applications must use the value <code>null</code> as the
	* <code>namespace</code> parameter for methods if they wish to specify
	* no namespace.
	* @param namespace The namespace URI of the <code>XSObject</code> to
	*   retrieve, or <code>null</code> if the <code>XSObject</code> has no
	*   namespace.
	* @param localName The local name of the <code>XSObject</code> to
	*   retrieve.
	* @return A <code>XSObject</code> (of any type) with the specified local
	*   name and namespace URI, or <code>null</code> if they do not
	*   identify any object in this map.
	*/
	@:overload public function itemByName(namespace : String, localName : String) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	/**
	* Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>XSObject</code> at the <code>index</code>th
	*   position in the <code>XSObjectList</code>, or <code>null</code> if
	*   the index specified is not valid.
	*/
	@:overload @:synchronized public function item(index : Int) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	/*
	* java.util.Map methods
	*/
	@:overload public function containsKey(key : Dynamic) : Bool;
	
	@:overload public function get(key : Dynamic) : Dynamic;
	
	@:overload public function size() : Int;
	
	@:overload @:synchronized public function entrySet() : java.util.Set<Dynamic>;
	
	
}
/** An entry in the XSNamedMap. **/
@:native('com$sun$org$apache$xerces$internal$impl$xs$util$XSNamedMapImpl$XSNamedMapEntry') @:internal extern class XSNamedMapImpl_XSNamedMapEntry implements java.util.Map.Map_Entry<Dynamic, Dynamic>
{
	@:overload public function new(key : javax.xml.namespace.QName, value : com.sun.org.apache.xerces.internal.xs.XSObject) : Void;
	
	@:overload public function getKey() : Dynamic;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function setValue(value : Dynamic) : Dynamic;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
