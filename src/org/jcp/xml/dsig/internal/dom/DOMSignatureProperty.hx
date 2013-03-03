package org.jcp.xml.dsig.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2005 The Apache Software Foundation.
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
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
*/
/*
* $Id: DOMSignatureProperty.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMSignatureProperty extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.SignatureProperty
{
	/**
	* Creates a <code>SignatureProperty</code> from the specified parameters.
	*
	* @param content a list of one or more {@link XMLStructure}s. The list
	*    is defensively copied to protect against subsequent modification.
	* @param target the target URI
	* @param id the Id (may be <code>null</code>)
	* @return a <code>SignatureProperty</code>
	* @throws ClassCastException if <code>content</code> contains any
	*    entries that are not of type {@link XMLStructure}
	* @throws IllegalArgumentException if <code>content</code> is empty
	* @throws NullPointerException if <code>content</code> or
	*    <code>target</code> is <code>null</code>
	*/
	@:overload @:public public function new(content : java.util.List<Dynamic>, target : String, id : String) : Void;
	
	/**
	* Creates a <code>DOMSignatureProperty</code> from an element.
	*
	* @param propElem a SignatureProperty element
	*/
	@:overload @:public public function new(propElem : org.w3c.dom.Element) : Void;
	
	@:overload @:public public function getContent() : java.util.List<Dynamic>;
	
	@:overload @:public public function getId() : String;
	
	@:overload @:public public function getTarget() : String;
	
	@:overload @:public override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}
