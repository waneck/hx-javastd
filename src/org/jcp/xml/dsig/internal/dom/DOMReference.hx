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
* $Id: DOMReference.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMReference extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.Reference implements javax.xml.crypto.dom.DOMURIReference
{
	/**
	* Creates a <code>Reference</code> from the specified parameters.
	*
	* @param uri the URI (may be null)
	* @param type the type (may be null)
	* @param dm the digest method
	* @param transforms a list of {@link Transform}s. The list
	*    is defensively copied to protect against subsequent modification.
	*    May be <code>null</code> or empty.
	* @param id the reference ID (may be <code>null</code>)
	* @return a <code>Reference</code>
	* @throws NullPointerException if <code>dm</code> is <code>null</code>
	* @throws ClassCastException if any of the <code>transforms</code> are
	*    not of type <code>Transform</code>
	*/
	@:overload public function new(uri : String, type : String, dm : javax.xml.crypto.dsig.DigestMethod, transforms : java.util.List<Dynamic>, id : String, provider : java.security.Provider) : Void;
	
	@:overload public function new(uri : String, type : String, dm : javax.xml.crypto.dsig.DigestMethod, appliedTransforms : java.util.List<Dynamic>, result : javax.xml.crypto.Data, transforms : java.util.List<Dynamic>, id : String, provider : java.security.Provider) : Void;
	
	@:overload public function new(uri : String, type : String, dm : javax.xml.crypto.dsig.DigestMethod, appliedTransforms : java.util.List<Dynamic>, result : javax.xml.crypto.Data, transforms : java.util.List<Dynamic>, id : String, digestValue : java.NativeArray<java.StdTypes.Int8>, provider : java.security.Provider) : Void;
	
	/**
	* Creates a <code>DOMReference</code> from an element.
	*
	* @param refElem a Reference element
	*/
	@:overload public function new(refElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload public function getDigestMethod() : javax.xml.crypto.dsig.DigestMethod;
	
	@:overload public function getId() : String;
	
	@:overload public function getURI() : String;
	
	@:overload public function getType() : String;
	
	@:overload public function getTransforms() : java.util.List<Dynamic>;
	
	@:overload public function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function getCalculatedDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function digest(signContext : javax.xml.crypto.dsig.XMLSignContext) : Void;
	
	@:overload public function validate(validateContext : javax.xml.crypto.dsig.XMLValidateContext) : Bool;
	
	@:overload public function getDereferencedData() : javax.xml.crypto.Data;
	
	@:overload public function getDigestInputStream() : java.io.InputStream;
	
	@:overload public function getHere() : org.w3c.dom.Node;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
