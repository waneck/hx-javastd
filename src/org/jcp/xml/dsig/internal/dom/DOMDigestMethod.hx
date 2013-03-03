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
* $Id: DOMDigestMethod.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMDigestMethod extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.DigestMethod
{
	@:overload @:public @:final public function getParameterSpec() : java.security.spec.AlgorithmParameterSpec;
	
	/**
	* This method invokes the abstract {@link #marshalParams marshalParams}
	* method to marshal any algorithm-specific parameters.
	*/
	@:overload @:public override public function marshal(parent : org.w3c.dom.Node, prefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload @:public public function equals(o : Dynamic) : Bool;
	
	/**
	* Indicates whether a specified feature is supported.
	*
	* @param feature the feature name (as an absolute URI)
	* @return <code>true</code> if the specified feature is supported,
	*    <code>false</code> otherwise
	* @throws NullPointerException if <code>feature</code> is <code>null</code>
	*/
	@:overload @:public override public function isFeatureSupported(feature : String) : Bool;
	
	/**
	* Returns the algorithm URI of this <code>AlgorithmMethod</code>.
	*
	* @return the algorithm URI of this <code>AlgorithmMethod</code>
	*/
	@:overload @:public public function getAlgorithm() : String;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMDigestMethod$SHA1') @:internal extern class DOMDigestMethod_SHA1 extends org.jcp.xml.dsig.internal.dom.DOMDigestMethod
{
	@:overload @:public override public function getAlgorithm() : String;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMDigestMethod$SHA256') @:internal extern class DOMDigestMethod_SHA256 extends org.jcp.xml.dsig.internal.dom.DOMDigestMethod
{
	@:overload @:public override public function getAlgorithm() : String;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMDigestMethod$SHA384') @:internal extern class DOMDigestMethod_SHA384 extends org.jcp.xml.dsig.internal.dom.DOMDigestMethod
{
	@:overload @:public override public function getAlgorithm() : String;
	
	
}
@:native('org$jcp$xml$dsig$internal$dom$DOMDigestMethod$SHA512') @:internal extern class DOMDigestMethod_SHA512 extends org.jcp.xml.dsig.internal.dom.DOMDigestMethod
{
	@:overload @:public override public function getAlgorithm() : String;
	
	
}
