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
* $Id: DOMSignatureProperties.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMSignatureProperties extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.SignatureProperties
{
	/**
	* Creates a <code>DOMSignatureProperties</code> from the specified
	* parameters.
	*
	* @param properties a list of one or more {@link SignatureProperty}s. The
	*    list is defensively copied to protect against subsequent modification.
	* @param id the Id (may be <code>null</code>)
	* @return a <code>DOMSignatureProperties</code>
	* @throws ClassCastException if <code>properties</code> contains any
	*    entries that are not of type {@link SignatureProperty}
	* @throws IllegalArgumentException if <code>properties</code> is empty
	* @throws NullPointerException if <code>properties</code>
	*/
	@:overload public function new(properties : java.util.List<Dynamic>, id : String) : Void;
	
	/**
	* Creates a <code>DOMSignatureProperties</code> from an element.
	*
	* @param propsElem a SignatureProperties element
	* @throws MarshalException if a marshalling error occurs
	*/
	@:overload public function new(propsElem : org.w3c.dom.Element) : Void;
	
	@:overload public function getProperties() : java.util.List<Dynamic>;
	
	@:overload public function getId() : String;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
