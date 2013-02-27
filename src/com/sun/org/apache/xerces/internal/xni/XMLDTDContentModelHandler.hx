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
extern interface XMLDTDContentModelHandler
{
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function startContentModel(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of ANY.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #empty
	* @see #startGroup
	*/
	@:overload public function any(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A content model of EMPTY.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @see #any
	* @see #startGroup
	*/
	@:overload public function empty(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A start of either a mixed or children content model. A mixed
	* content model will immediately be followed by a call to the
	* <code>pcdata()</code> method. A children content model will
	* contain additional groups and/or elements.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #empty
	*/
	@:overload public function startGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The appearance of "#PCDATA" within a group signifying a
	* mixed content model. This method will be the first called
	* following the content model's <code>startGroup()</code>.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #startGroup
	*/
	@:overload public function pcdata(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A referenced element in a mixed or children content model.
	*
	* @param elementName The name of the referenced element.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function element(elementName : String, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The separator between choices or sequences of a mixed or children
	* content model.
	*
	* @param separator The type of children separator.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #SEPARATOR_CHOICE
	* @see #SEPARATOR_SEQUENCE
	*/
	@:overload public function separator(separator : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The occurrence count for a child in a children content model or
	* for the mixed content model group.
	*
	* @param occurrence The occurrence count for the last element
	*                   or group.
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #OCCURS_ZERO_OR_ONE
	* @see #OCCURS_ZERO_OR_MORE
	* @see #OCCURS_ONE_OR_MORE
	*/
	@:overload public function occurrence(occurrence : java.StdTypes.Int16, augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a group for mixed or children content models.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endGroup(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a content model.
	*
	* @param augmentations Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload public function endContentModel(augmentations : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	@:overload public function setDTDContentModelSource(source : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource) : Void;
	
	@:overload public function getDTDContentModelSource() : com.sun.org.apache.xerces.internal.xni.parser.XMLDTDContentModelSource;
	
	
}
