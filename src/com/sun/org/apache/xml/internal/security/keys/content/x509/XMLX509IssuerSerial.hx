package com.sun.org.apache.xml.internal.security.keys.content.x509;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2004 The Apache Software Foundation.
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
extern class XMLX509IssuerSerial extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509DataContent
{
	/**
	* Constructor XMLX509IssuerSerial
	*
	* @param element
	* @param baseURI
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, baseURI : String) : Void;
	
	/**
	* Constructor XMLX509IssuerSerial
	*
	* @param doc
	* @param x509IssuerName
	* @param x509SerialNumber
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509IssuerName : String, x509SerialNumber : java.math.BigInteger) : Void;
	
	/**
	* Constructor XMLX509IssuerSerial
	*
	* @param doc
	* @param x509IssuerName
	* @param x509SerialNumber
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509IssuerName : String, x509SerialNumber : String) : Void;
	
	/**
	* Constructor XMLX509IssuerSerial
	*
	* @param doc
	* @param x509IssuerName
	* @param x509SerialNumber
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509IssuerName : String, x509SerialNumber : Int) : Void;
	
	/**
	* Constructor XMLX509IssuerSerial
	*
	* @param doc
	* @param x509certificate
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method getSerialNumber
	*
	* @return the serial number
	*/
	@:overload @:public public function getSerialNumber() : java.math.BigInteger;
	
	/**
	* Method getSerialNumberInteger
	*
	* @return the serial number as plain int
	*/
	@:overload @:public public function getSerialNumberInteger() : Int;
	
	/**
	* Method getIssuerName
	*
	* @return the issuer name
	*/
	@:overload @:public public function getIssuerName() : String;
	
	/** @inheritDoc */
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
