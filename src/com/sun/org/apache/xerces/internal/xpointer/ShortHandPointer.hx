package com.sun.org.apache.xerces.internal.xpointer;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
@:internal extern class ShortHandPointer implements com.sun.org.apache.xerces.internal.xpointer.XPointerPart
{
	@:overload public function new() : Void;
	
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable) : Void;
	
	/**
	* The XPointerProcessor takes care of this.  Simply set the ShortHand Pointer here.
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#parseXPointer(java.lang.String)
	*/
	@:overload public function parseXPointer(part : String) : Void;
	
	@:overload public function resolveXPointer(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, event : Int) : Bool;
	
	/**
	* Rerturns the DTD determine-ID
	*
	* @param attributes
	* @param index
	* @return String
	* @throws XNIException
	*/
	@:overload public function getDTDDeterminedID(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, index : Int) : String;
	
	/**
	* Returns the schema-determined-ID.
	*
	*
	* @param attributes
	* @param index
	* @return A String containing the schema-determined ID.
	* @throws XNIException
	*/
	@:overload public function getSchemaDeterminedID(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, index : Int) : String;
	
	/**
	* Not quite sure how this can be correctly implemented.
	*
	* @param attributes
	* @param index
	* @return String - We return null since we currenly do not supprt this.
	* @throws XNIException
	*/
	@:overload public function getChildrenSchemaDeterminedID(attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, index : Int) : String;
	
	/**
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#isFragmentResolved()
	*/
	@:overload public function isFragmentResolved() : Bool;
	
	/**
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#isChildFragmentResolved()
	*/
	@:overload public function isChildFragmentResolved() : Bool;
	
	/**
	* Returns the name of the ShortHand pointer
	*
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#getSchemeName()
	*/
	@:overload public function getSchemeName() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#getSchemeData()
	*/
	@:overload public function getSchemeData() : String;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#setSchemeName(java.lang.String)
	*/
	@:overload public function setSchemeName(schemeName : String) : Void;
	
	/**
	* @see com.sun.org.apache.xerces.internal.xpointer.XPointerPart#setSchemeData(java.lang.String)
	*/
	@:overload public function setSchemeData(schemeData : String) : Void;
	
	
}
