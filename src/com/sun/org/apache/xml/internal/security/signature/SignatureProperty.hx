package com.sun.org.apache.xml.internal.security.signature;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class SignatureProperty extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Constructs{@link SignatureProperty} using specified <code>Target</code> attribute
	*
	* @param doc the {@link Document} in which <code>XMLsignature</code> is placed
	* @param Target the <code>Target</code> attribute references the <code>Signature</code> element to which the property applies SignatureProperty
	*/
	@:overload public function new(doc : org.w3c.dom.Document, Target : String) : Void;
	
	/**
	* Constructs {@link SignatureProperty} using sepcified <code>Target</code> attribute and <code>Id</code> attribute
	*
	* @param doc the {@link Document} in which <code>XMLsignature</code> is placed
	* @param Target the <code>Target</code> attribute references the <code>Signature</code> element to which the property applies
	* @param Id the <code>Id</code> will be specified by {@link Reference#getURI} in validation
	*/
	@:overload public function new(doc : org.w3c.dom.Document, Target : String, Id : String) : Void;
	
	/**
	* Constructs a {@link SignatureProperty} from an {@link Element}
	* @param element <code>SignatureProperty</code> element
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	*   Sets the <code>Id</code> attribute
	*
	*   @param Id the <code>Id</code> attribute
	*/
	@:overload public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute
	*/
	@:overload public function getId() : String;
	
	/**
	* Sets the <code>Target</code> attribute
	*
	* @param Target the <code>Target</code> attribute
	*/
	@:overload public function setTarget(Target : String) : Void;
	
	/**
	* Returns the <code>Target</code> attribute
	*
	* @return the <code>Target</code> attribute
	*/
	@:overload public function getTarget() : String;
	
	/**
	* Method appendChild
	*
	* @param node
	* @return the node in this element.
	*/
	@:overload public function appendChild(node : org.w3c.dom.Node) : org.w3c.dom.Node;
	
	/** @inheritDoc */
	@:overload public function getBaseLocalName() : String;
	
	
}
