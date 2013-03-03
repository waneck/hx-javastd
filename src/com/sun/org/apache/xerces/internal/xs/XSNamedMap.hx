package com.sun.org.apache.xerces.internal.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
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
extern interface XSNamedMap extends java.util.Map<Dynamic, Dynamic>
{
	/**
	* The number of <code>XSObjects</code> in the <code>XSObjectList</code>.
	* The range of valid child object indices is 0 to <code>length-1</code>
	* inclusive.
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	*  Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>XSObject</code> at the <code>index</code>th
	*   position in the <code>XSObjectList</code>, or <code>null</code> if
	*   the index specified is not valid.
	*/
	@:overload @:public public function item(index : Int) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
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
	@:overload @:public public function itemByName(namespace : String, localName : String) : com.sun.org.apache.xerces.internal.xs.XSObject;
	
	
}
