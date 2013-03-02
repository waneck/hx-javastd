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
* $Id: DOMX509IssuerSerial.java,v 1.2 2008/07/24 15:20:32 mullan Exp $
*/
extern class DOMX509IssuerSerial extends org.jcp.xml.dsig.internal.dom.DOMStructure implements javax.xml.crypto.dsig.keyinfo.X509IssuerSerial
{
	/**
	* Creates a <code>DOMX509IssuerSerial</code> containing the specified
	* issuer distinguished name/serial number pair.
	*
	* @param issuerName the X.509 issuer distinguished name in RFC 2253
	*    String format
	* @param serialNumber the serial number
	* @throws IllegalArgumentException if the format of <code>issuerName</code>
	*    is not RFC 2253 compliant
	* @throws NullPointerException if <code>issuerName</code> or
	*    <code>serialNumber</code> is <code>null</code>
	*/
	@:overload public function new(issuerName : String, serialNumber : java.math.BigInteger) : Void;
	
	/**
	* Creates a <code>DOMX509IssuerSerial</code> from an element.
	*
	* @param isElem an X509IssuerSerial element
	*/
	@:overload public function new(isElem : org.w3c.dom.Element) : Void;
	
	@:overload public function getIssuerName() : String;
	
	@:overload public function getSerialNumber() : java.math.BigInteger;
	
	@:overload public function marshal(parent : org.w3c.dom.Node, dsPrefix : String, context : javax.xml.crypto.dom.DOMCryptoContext) : Void;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	
}
