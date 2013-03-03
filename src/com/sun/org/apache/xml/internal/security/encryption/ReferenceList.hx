package com.sun.org.apache.xml.internal.security.encryption;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  2003-2004 The Apache Software Foundation.
*
*  Licensed under the Apache License, Version 2.0 (the "License");
*  you may not use this file except in compliance with the License.
*  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
*  Unless required by applicable law or agreed to in writing, software
*  distributed under the License is distributed on an "AS IS" BASIS,
*  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
*  See the License for the specific language governing permissions and
*  limitations under the License.
*
*/
extern interface ReferenceList
{
	/**
	* Adds a reference to this reference list.
	*
	* @param reference the reference to add.
	* @throws IllegalAccessException if the <code>Reference</code> is not an
	*   instance of <code>DataReference</code> or <code>KeyReference</code>.
	*/
	@:overload @:public public function add(reference : com.sun.org.apache.xml.internal.security.encryption.Reference) : Void;
	
	/**
	* Removes a reference from the <code>ReferenceList</code>.
	*
	* @param reference the reference to remove.
	*/
	@:overload @:public public function remove(reference : com.sun.org.apache.xml.internal.security.encryption.Reference) : Void;
	
	/**
	* Returns the size of the <code>ReferenceList</code>.
	*
	* @return the size of the <code>ReferenceList</code>.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Indicates if the <code>ReferenceList</code> is empty.
	*
	* @return <code><b>true</b></code> if the <code>ReferenceList</code> is
	*     empty, else <code><b>false</b></code>.
	*/
	@:overload @:public public function isEmpty() : Bool;
	
	/**
	* Returns an <code>Iterator</code> over all the <code>Reference</code>s
	* contatined in this <code>ReferenceList</code>.
	*
	* @return Iterator.
	*/
	@:overload @:public public function getReferences() : java.util.Iterator<Dynamic>;
	
	/**
	* <code>DataReference</code> factory method. Returns a
	* <code>DataReference</code>.
	* @param uri
	* @return
	*/
	@:overload @:public public function newDataReference(uri : String) : com.sun.org.apache.xml.internal.security.encryption.Reference;
	
	/**
	* <code>KeyReference</code> factory method. Returns a
	* <code>KeyReference</code>.
	* @param uri
	* @return
	*/
	@:overload @:public public function newKeyReference(uri : String) : com.sun.org.apache.xml.internal.security.encryption.Reference;
	
	
}
