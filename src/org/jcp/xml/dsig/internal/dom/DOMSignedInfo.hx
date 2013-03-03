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
* $Id: DOMSignedInfo.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMSignedInfo extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.SignedInfo
{
	/**
	* Creates a <code>DOMSignedInfo</code> from the specified parameters. Use
	* this constructor when the <code>Id</code> is not specified.
	*
	* @param cm the canonicalization method
	* @param sm the signature method
	* @param references the list of references. The list is copied.
	* @throws NullPointerException if
	*    <code>cm</code>, <code>sm</code>, or <code>references</code> is
	*    <code>null</code>
	* @throws IllegalArgumentException if <code>references</code> is empty
	* @throws ClassCastException if any of the references are not of
	*    type <code>Reference</code>
	*/
	@:overload @:public public function new(cm : javax.xml.crypto.dsig.CanonicalizationMethod, sm : javax.xml.crypto.dsig.SignatureMethod, references : java.util.List<Dynamic>) : Void;
	
	/**
	* Creates a <code>DOMSignedInfo</code> from the specified parameters.
	*
	* @param cm the canonicalization method
	* @param sm the signature method
	* @param references the list of references. The list is copied.
	* @param id an optional identifer that will allow this
	*    <code>SignedInfo</code> to be referenced by other signatures and
	*    objects
	* @throws NullPointerException if <code>cm</code>, <code>sm</code>,
	*    or <code>references</code> is <code>null</code>
	* @throws IllegalArgumentException if <code>references</code> is empty
	* @throws ClassCastException if any of the references are not of
	*    type <code>Reference</code>
	*/
	@:overload @:public public function new(cm : javax.xml.crypto.dsig.CanonicalizationMethod, sm : javax.xml.crypto.dsig.SignatureMethod, references : java.util.List<Dynamic>, id : String) : Void;
	
	/**
	* Creates a <code>DOMSignedInfo</code> from an element.
	*
	* @param siElem a SignedInfo element
	*/
	@:overload @:public public function new(siElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload @:public public function getCanonicalizationMethod() : javax.xml.crypto.dsig.CanonicalizationMethod;
	
	@:overload @:public public function getSignatureMethod() : javax.xml.crypto.dsig.SignatureMethod;
	
	@:overload @:public public function getId() : String;
	
	@:overload @:public public function getReferences() : java.util.List<Dynamic>;
	
	@:overload @:public public function getCanonicalizedData() : java.io.InputStream;
	
	@:overload @:public public function canonicalize(context : javax.xml.crypto.XMLCryptoContext, bos : java.io.ByteArrayOutputStream) : Void;
	
	@:overload @:public override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	
}
