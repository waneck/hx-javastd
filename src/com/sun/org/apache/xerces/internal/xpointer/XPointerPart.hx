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
extern interface XPointerPart
{
	/**
	* Provides scheme specific parsing of a XPointer expression i.e.
	* the PointerPart or ShortHandPointer.
	*
	* @param  xpointer A String representing the PointerPart or ShortHandPointer.
	* @throws XNIException Thrown if the PointerPart string does not conform to
	*         the syntax defined by its scheme.
	*
	*/
	@:overload public function parseXPointer(part : String) : Void;
	
	/**
	* Evaluates an XML resource with respect to an XPointer expressions
	* by checking if it's element and attributes parameters match the
	* criteria specified in the xpointer expression.
	*
	* @param element - The name of the element.
	* @param attributes - The element attributes.
	* @param augs - Additional information that may include infoset augmentations
	* @param event - An integer indicating
	*                0 - The start of an element
	*                1 - The end of an element
	*                2 - An empty element call
	* @throws XNIException Thrown to signal an error
	*
	*/
	@:overload public function resolveXPointer(element : com.sun.org.apache.xerces.internal.xni.QName, attributes : com.sun.org.apache.xerces.internal.xni.XMLAttributes, augs : com.sun.org.apache.xerces.internal.xni.Augmentations, event : Int) : Bool;
	
	/**
	* Returns true if the XPointer expression resolves to a resource fragment
	* specified as input else returns false.
	*
	* @return True if the xpointer expression matches a fragment in the resource
	*         else returns false.
	* @throws XNIException Thrown to signal an error
	*
	*/
	@:overload public function isFragmentResolved() : Bool;
	
	/**
	* Returns true if the XPointer expression resolves to a non-element child
	* of the current resource fragment.
	*
	* @return True if the XPointer expression resolves to a non-element child
	*         of the current resource fragment.
	* @throws XNIException Thrown to signal an error
	*
	*/
	@:overload public function isChildFragmentResolved() : Bool;
	
	/**
	* Returns a String containing the scheme name of the PointerPart
	* or the name of the ShortHand Pointer.
	*
	* @return A String containing the scheme name of the PointerPart.
	*
	*/
	@:overload public function getSchemeName() : String;
	
	/**
	* Returns a String containing the scheme data of the PointerPart.
	*
	* @return A String containing the scheme data of the PointerPart.
	*
	*/
	@:overload public function getSchemeData() : String;
	
	/**
	* Sets the scheme name of the PointerPart or the ShortHand Pointer name.
	*
	* @param schemeName A String containing the scheme name of the PointerPart.
	*
	*/
	@:overload public function setSchemeName(schemeName : String) : Void;
	
	/**
	* Sets the scheme data of the PointerPart.
	*
	* @param schemeData A String containing the scheme data of the PointerPart.
	*
	*/
	@:overload public function setSchemeData(schemeData : String) : Void;
	
	
}
