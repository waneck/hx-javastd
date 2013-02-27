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
* $Id: DOMKeyName.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMKeyName extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.KeyName
{
	/**
	* Creates a <code>DOMKeyName</code>.
	*
	* @param name the name of the key identifier
	* @throws NullPointerException if <code>name</code> is null
	*/
	@:overload public function new(name : String) : Void;
	
	/**
	* Creates a <code>DOMKeyName</code> from a KeyName element.
	*
	* @param knElem a KeyName element
	*/
	@:overload public function new(knElem : org.w3c.dom.Element) : Void;
	
	@:overload public function getName() : String;
	
	@:overload override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
