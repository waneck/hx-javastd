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
* $Id: DOMXMLObject.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMXMLObject extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.XMLObject
{
	/**
	* Creates an <code>XMLObject</code> from the specified parameters.
	*
	* @param content a list of {@link XMLStructure}s. The list
	*    is defensively copied to protect against subsequent modification.
	*    May be <code>null</code> or empty.
	* @param id the Id (may be <code>null</code>)
	* @param mimeType the mime type (may be <code>null</code>)
	* @param encoding the encoding (may be <code>null</code>)
	* @return an <code>XMLObject</code>
	* @throws ClassCastException if <code>content</code> contains any
	*    entries that are not of type {@link XMLStructure}
	*/
	@:overload public function new(content : java.util.List<Dynamic>, id : String, mimeType : String, encoding : String) : Void;
	
	/**
	* Creates an <code>XMLObject</code> from an element.
	*
	* @param objElem an Object element
	* @throws MarshalException if there is an error when unmarshalling
	*/
	@:overload public function new(objElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload public function getContent() : java.util.List<Dynamic>;
	
	@:overload public function getId() : String;
	
	@:overload public function getMimeType() : String;
	
	@:overload public function getEncoding() : String;
	
	@:overload override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
