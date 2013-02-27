package com.sun.org.apache.xerces.internal.impl.dtd;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Licensed to the Apache Software Foundation (ASF) under one or more
* contributor license agreements.  See the NOTICE file distributed with
* this work for additional information regarding copyright ownership.
* The ASF licenses this file to You under the Apache License, Version 2.0
* (the "License"); you may not use this file except in compliance with
* the License.  You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
@:internal extern class BalancedDTDGrammar extends com.sun.org.apache.xerces.internal.impl.dtd.DTDGrammar
{
	/** Default constructor. */
	@:overload public function new(symbolTable : com.sun.org.apache.xerces.internal.util.SymbolTable, desc : com.sun.org.apache.xerces.internal.impl.dtd.XMLDTDDescription) : Void;
	
	/**
	* The start of a content model. Depending on the type of the content
	* model, specific methods may be called between the call to the
	* startContentModel method and the call to the endContentModel method.
	*
	* @param elementName The name of the element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:final override public function startContentModel(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A start of either a mixed or children content model. A mixed
	* content model will immediately be followed by a call to the
	* <code>pcdata()</code> method. A children content model will
	* contain additional groups and/or elements.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #any
	* @see #empty
	*/
	@:overload @:final override public function startGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The appearance of "#PCDATA" within a group signifying a
	* mixed content model. This method will be the first called
	* following the content model's <code>startGroup()</code>.
	*
	*@param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see #startGroup
	*/
	@:overload @:final override public function pcdata(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* A referenced element in a mixed or children content model.
	*
	* @param elementName The name of the referenced element.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	*
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:final override public function element(elementName : String, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The separator between choices or sequences of a mixed or children
	* content model.
	*
	* @param separator The type of children separator.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#SEPARATOR_CHOICE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#SEPARATOR_SEQUENCE
	*/
	@:overload @:final override public function separator(separator : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The occurrence count for a child in a children content model or
	* for the mixed content model group.
	*
	* @param occurrence The occurrence count for the last element
	*                   or group.
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ZERO_OR_ONE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ZERO_OR_MORE
	* @see org.apache.xerces.xni.XMLDTDContentModelHandler#OCCURS_ONE_OR_MORE
	*/
	@:overload @:final override public function occurrence(occurrence : java.StdTypes.Int16, augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of a group for mixed or children content models.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:final override public function endGroup(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* The end of the DTD.
	*
	* @param augs Additional information that may include infoset
	*                      augmentations.
	* @throws XNIException Thrown by handler to signal an error.
	*/
	@:overload @:final override public function endDTD(augs : com.sun.org.apache.xerces.internal.xni.Augmentations) : Void;
	
	/**
	* Adds the content spec to the given element declaration.
	*/
	@:overload @:final override private function addContentSpecToElement(elementDecl : com.sun.org.apache.xerces.internal.impl.dtd.XMLElementDecl) : Void;
	
	
}
