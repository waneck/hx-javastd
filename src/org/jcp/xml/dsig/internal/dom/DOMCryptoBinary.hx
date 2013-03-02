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
* $Id: DOMCryptoBinary.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMCryptoBinary extends org.jcp.xml.dsig.internal.dom.DOMStructure
{
	/**
	* Create a <code>DOMCryptoBinary</code> instance from the specified
	* <code>BigInteger</code>
	*
	* @param bigNum the arbitrary-length integer
	* @throws NullPointerException if <code>bigNum</code> is <code>null</code>
	*/
	@:overload public function new(bigNum : java.math.BigInteger) : Void;
	
	/**
	* Creates a <code>DOMCryptoBinary</code> from a node.
	*
	* @param cbNode a CryptoBinary text node
	* @throws MarshalException if value cannot be decoded (invalid format)
	*/
	@:overload public function new(cbNode : org.w3c.dom.Node) : Void;
	
	/**
	* Returns the <code>BigInteger</code> that this object contains.
	*
	* @return the <code>BigInteger</code> that this object contains
	*/
	@:overload public function getBigNum() : java.math.BigInteger;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, prefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	
}
