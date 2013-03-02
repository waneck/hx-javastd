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
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* ===========================================================================
*
* (C) Copyright IBM Corp. 2003 All Rights Reserved.
*
* ===========================================================================
*/
/*
* $Id: DOMRetrievalMethod.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMRetrievalMethod extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.RetrievalMethod implements javax.xml.crypto.dom.DOMURIReference
{
	/**
	* Creates a <code>DOMRetrievalMethod</code> containing the specified
	* URIReference and List of Transforms.
	*
	* @param uri the URI
	* @param type the type
	* @param transforms a list of {@link Transform}s. The list is defensively
	*    copied to prevent subsequent modification. May be <code>null</code>
	*    or empty.
	* @throws IllegalArgumentException if the format of <code>uri</code> is
	*    invalid, as specified by Reference's URI attribute in the W3C
	*    specification for XML-Signature Syntax and Processing
	* @throws NullPointerException if <code>uriReference</code>
	*    is <code>null</code>
	* @throws ClassCastException if <code>transforms</code> contains any
	*    entries that are not of type {@link Transform}
	*/
	@:overload public function new(uri : String, type : String, transforms : java.util.List<Dynamic>) : Void;
	
	/**
	* Creates a <code>DOMRetrievalMethod</code> from an element.
	*
	* @param rmElem a RetrievalMethod element
	*/
	@:overload public function new(rmElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload public function getURI() : String;
	
	@:overload public function getType() : String;
	
	@:overload public function getTransforms() : java.util.List<Dynamic>;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function getHere() : org.w3c.dom.Node;
	
	@:overload public function dereference(context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	@:overload public function dereferenceAsXMLStructure(context : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.XMLStructure;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
