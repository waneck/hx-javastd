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
* $Id: ApacheCanonicalizer.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class ApacheCanonicalizer extends javax.xml.crypto.dsig.TransformService
{
	private var apacheCanonicalizer : com.sun.org.apache.xml.internal.security.c14n.Canonicalizer;
	
	private var inclusiveNamespaces : String;
	
	private var params : javax.xml.crypto.dsig.spec.C14NMethodParameterSpec;
	
	private var ownerDoc : org.w3c.dom.Document;
	
	private var transformElem : org.w3c.dom.Element;
	
	@:overload @:final override public function getParameterSpec() : java.security.spec.AlgorithmParameterSpec;
	
	@:overload override public function init(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	@:overload override public function marshalParams(parent : javax.xml.crypto.XMLStructure, context : javax.xml.crypto.XMLCryptoContext) : Void;
	
	@:overload public function canonicalize(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	@:overload public function canonicalize(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext, os : java.io.OutputStream) : javax.xml.crypto.Data;
	
	@:overload override public function transform(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext, os : java.io.OutputStream) : javax.xml.crypto.Data;
	
	@:overload @:final override public function isFeatureSupported(feature : String) : Bool;
	
	
}
