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
* $Id: DOMManifest.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMManifest extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.Manifest
{
	/**
	* Creates a <code>DOMManifest</code> containing the specified
	* list of {@link Reference}s and optional id.
	*
	* @param references a list of one or more <code>Reference</code>s. The list
	*    is defensively copied to protect against subsequent modification.
	* @param id the id (may be <code>null</code>
	* @throws NullPointerException if <code>references</code> is
	*    <code>null</code>
	* @throws IllegalArgumentException if <code>references</code> is empty
	* @throws ClassCastException if <code>references</code> contains any
	*    entries that are not of type {@link Reference}
	*/
	@:overload public function new(references : java.util.List<Dynamic>, id : String) : Void;
	
	/**
	* Creates a <code>DOMManifest</code> from an element.
	*
	* @param manElem a Manifest element
	*/
	@:overload public function new(manElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload public function getId() : String;
	
	@:overload public function getReferences() : java.util.List<Dynamic>;
	
	@:overload override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
