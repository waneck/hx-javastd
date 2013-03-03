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
extern class SignatureProperties extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Constructor SignatureProperties
	*
	* @param doc
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructs {@link SignatureProperties} from {@link Element}
	* @param element <code>SignatureProperties</code> elementt
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Return the nonnegative number of added SignatureProperty elements.
	*
	* @return the number of SignatureProperty elements
	*/
	@:overload @:public public function getLength() : Int;
	
	/**
	* Return the <it>i</it><sup>th</sup> SignatureProperty.  Valid <code>i</code>
	* values are 0 to <code>{link@ getSize}-1</code>.
	*
	* @param i Index of the requested {@link SignatureProperty}
	* @return the <it>i</it><sup>th</sup> SignatureProperty
	* @throws XMLSignatureException
	*/
	@:overload @:public public function item(i : Int) : com.sun.org.apache.xml.internal.security.signature.SignatureProperty;
	
	/**
	* Sets the <code>Id</code> attribute
	*
	* @param Id the <code>Id</code> attribute
	*/
	@:overload @:public public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute
	*
	* @return the <code>Id</code> attribute
	*/
	@:overload @:public public function getId() : String;
	
	/**
	* Method addSignatureProperty
	*
	* @param sp
	*/
	@:overload @:public public function addSignatureProperty(sp : com.sun.org.apache.xml.internal.security.signature.SignatureProperty) : Void;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
