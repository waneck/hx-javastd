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
extern interface LSInputList extends java.util.List<Dynamic>
{
	/**
	*  The number of <code>LSInput</code>s in the list. The range of valid
	* child object indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload public function getLength() : Int;
	
	/**
	*  Returns the <code>index</code>th item in the collection or
	* <code>null</code> if <code>index</code> is greater than or equal to
	* the number of objects in the list. The index starts at 0.
	* @param index  index into the collection.
	* @return  The <code>LSInput</code> at the <code>index</code>th
	*   position in the <code>LSInputList</code>, or <code>null</code> if
	*   the index specified is not valid.
	*/
	@:overload public function item(index : Int) : org.w3c.dom.ls.LSInput;
	
	
}
