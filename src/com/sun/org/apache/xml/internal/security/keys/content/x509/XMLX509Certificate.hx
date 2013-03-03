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
extern class XMLX509Certificate extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509DataContent
{
	/** Field JCA_CERT_ID */
	@:public @:static @:final public static var JCA_CERT_ID(default, null) : String;
	
	/**
	* Constructor X509Certificate
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Constructor X509Certificate
	*
	* @param doc
	* @param certificateBytes
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, certificateBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructor XMLX509Certificate
	*
	* @param doc
	* @param x509certificate
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method getCertificateBytes
	*
	* @return the certificate bytes
	* @throws XMLSecurityException
	*/
	@:overload @:public public function getCertificateBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method getX509Certificate
	*
	* @return the x509 certificate
	* @throws XMLSecurityException
	*/
	@:overload @:public public function getX509Certificate() : java.security.cert.X509Certificate;
	
	/**
	* Method getPublicKey
	*
	* @return teh publickey
	* @throws XMLSecurityException
	*/
	@:overload @:public public function getPublicKey() : java.security.PublicKey;
	
	/** @inheritDoc */
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
