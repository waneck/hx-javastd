package com.sun.org.apache.xerces.internal.impl.dv.util;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
extern class ByteListImpl extends java.util.AbstractList<Dynamic> implements com.sun.org.apache.xerces.internal.xs.datatypes.ByteList
{
	/**
	* Implementation of <code>com.sun.org.apache.xerces.internal.xs.datatypes.ByteList</code>.
	*
	* @xerces.internal
	*
	* @author Ankit Pasricha, IBM
	*
	* @version $Id: ByteListImpl.java,v 1.7 2010-11-01 04:39:46 joehw Exp $
	*/
	private var data(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	private var canonical : String;
	
	@:overload public function new(data : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* The number of <code>byte</code>s in the list. The range of
	* valid child object indices is 0 to <code>length-1</code> inclusive.
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Checks if the <code>byte</code> <code>item</code> is a
	* member of this list.
	* @param item  <code>byte</code> whose presence in this list
	*   is to be tested.
	* @return  True if this list contains the <code>byte</code>
	*   <code>item</code>.
	*/
	@:overload public function contains(item : java.StdTypes.Int8) : Bool;
	
	/**
	* Returns the <code>index</code>th item in the collection. The index
	* starts at 0.
	* @param index  index into the collection.
	* @return  The <code>byte</code> at the <code>index</code>th
	*   position in the <code>ByteList</code>.
	* @exception XSException
	*   INDEX_SIZE_ERR: if <code>index</code> is greater than or equal to the
	*   number of objects in the list.
	*/
	@:overload public function item(index : Int) : java.StdTypes.Int8;
	
	/*
	* List methods
	*/
	@:overload public function get(index : Int) : Dynamic;
	
	@:overload override public function size() : Int;
	
	
}
