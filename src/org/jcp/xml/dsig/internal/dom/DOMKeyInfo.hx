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
* $Id: DOMKeyInfo.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMKeyInfo extends javax.xml.crypto.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.KeyInfo
{
	/**
	* Creates a <code>DOMKeyInfo</code>.
	*
	* @param content a list of one or more {@link XMLStructure}s representing
	*    key information types. The list is defensively copied to protect
	*    against subsequent modification.
	* @param id an ID attribute
	* @throws NullPointerException if <code>content</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>content</code> is empty
	* @throws ClassCastException if <code>content</code> contains any entries
	*    that are not of type {@link XMLStructure}
	*/
	@:overload @:public public function new(content : java.util.List<Dynamic>, id : String) : Void;
	
	/**
	* Creates a <code>DOMKeyInfo</code> from XML.
	*
	* @param kiElem KeyInfo element
	*/
	@:overload @:public public function new(kiElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload @:public public function getId() : String;
	
	@:overload @:public public function getContent() : java.util.List<Dynamic>;
	
	@:overload @:public public function marshal(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	@:overload @:public public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function marshal(parent : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}
