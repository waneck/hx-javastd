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
* $Id: DOMTransform.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMTransform extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.Transform
{
	/**
	* DOM-based abstract implementation of Transform.
	*
	* @author Sean Mullan
	*/
	private var spi : javax.xml.crypto.dsig.TransformService;
	
	/**
	* Creates a <code>DOMTransform</code>.
	*
	* @param spi the TransformService
	*/
	@:overload public function new(spi : javax.xml.crypto.dsig.TransformService) : Void;
	
	/**
	* Creates a <code>DOMTransform</code> from an element. This constructor
	* invokes the abstract {@link #unmarshalParams unmarshalParams} method to
	* unmarshal any algorithm-specific input parameters.
	*
	* @param transElem a Transform element
	*/
	@:overload public function new(transElem : org.w3c.dom.Element, context : javax.xml.crypto.XMLCryptoContext, provider : java.security.Provider) : Void;
	
	@:overload @:final public function getParameterSpec() : java.security.spec.AlgorithmParameterSpec;
	
	@:overload @:final public function getAlgorithm() : String;
	
	/**
	* This method invokes the abstract {@link #marshalParams marshalParams}
	* method to marshal any algorithm-specific parameters.
	*/
	@:overload override public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	*
	* @param data the data to be transformed
	* @param sc the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @return the transformed data
	* @throws NullPointerException if <code>data</code> is <code>null</code>
	* @throws XMLSignatureException if an unexpected error occurs while
	*    executing the transform
	*/
	@:overload public function transform(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext) : javax.xml.crypto.Data;
	
	/**
	* Transforms the specified data using the underlying transform algorithm.
	*
	* @param data the data to be transformed
	* @param sc the <code>XMLCryptoContext</code> containing
	*    additional context (may be <code>null</code> if not applicable)
	* @param os the <code>OutputStream</code> that should be used to write
	*    the transformed data to
	* @return the transformed data
	* @throws NullPointerException if <code>data</code> is <code>null</code>
	* @throws XMLSignatureException if an unexpected error occurs while
	*    executing the transform
	*/
	@:overload public function transform(data : javax.xml.crypto.Data, xc : javax.xml.crypto.XMLCryptoContext, os : java.io.OutputStream) : javax.xml.crypto.Data;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	
}
