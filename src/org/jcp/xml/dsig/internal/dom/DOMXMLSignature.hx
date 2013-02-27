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
* $Id: DOMXMLSignature.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMXMLSignature extends javax.xml.crypto.dom.DOMStructure implements javax.xml.crypto.dsig.XMLSignature
{
	/**
	* Creates a <code>DOMXMLSignature</code> from the specified components.
	*
	* @param si the <code>SignedInfo</code>
	* @param ki the <code>KeyInfo</code>, or <code>null</code> if not specified
	* @param objs a list of <code>XMLObject</code>s or <code>null</code>
	*  if not specified. The list is copied to protect against subsequent
	*  modification.
	* @param id an optional id (specify <code>null</code> to omit)
	* @param signatureValueId an optional id (specify <code>null</code> to
	*  omit)
	* @throws NullPointerException if <code>si</code> is <code>null</code>
	*/
	@:overload public function new(si : javax.xml.crypto.dsig.SignedInfo, ki : javax.xml.crypto.dsig.keyinfo.KeyInfo, objs : java.util.List<Dynamic>, id : String, signatureValueId : String) : Void;
	
	/**
	* Creates a <code>DOMXMLSignature</code> from XML.
	*
	* @param sigElem Signature element
	* @throws MarshalException if XMLSignature cannot be unmarshalled
	*/
	@:overload public function new(sigElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload public function getId() : String;
	
	@:overload public function getKeyInfo() : javax.xml.crypto.dsig.keyinfo.KeyInfo;
	
	@:overload public function getSignedInfo() : javax.xml.crypto.dsig.SignedInfo;
	
	@:overload public function getObjects() : java.util.List<Dynamic>;
	
	@:overload public function getSignatureValue() : SignatureValue;
	
	@:overload public function getKeySelectorResult() : javax.xml.crypto.KeySelectorResult;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, nextSibling : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function validate(vc : javax.xml.crypto.dsig.XMLValidateContext) : Bool;
	
	@:overload public function sign(signContext : javax.xml.crypto.dsig.XMLSignContext) : Void;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMXMLSignature$DOMSignatureValue') extern class DOMXMLSignature_DOMSignatureValue extends javax.xml.crypto.dom.DOMStructure implements SignatureValue
{
	@:overload public function getId() : String;
	
	@:overload public function getValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function validate(validateContext : javax.xml.crypto.dsig.XMLValidateContext) : Bool;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	
}
