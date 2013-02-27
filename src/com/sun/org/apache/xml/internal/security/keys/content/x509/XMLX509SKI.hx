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
extern class XMLX509SKI extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509DataContent
{
	/**
	* <CODE>SubjectKeyIdentifier (id-ce-subjectKeyIdentifier) (2.5.29.14)</CODE>:
	* This extension identifies the public key being certified. It enables
	* distinct keys used by the same subject to be differentiated
	* (e.g., as key updating occurs).
	* <BR />
	* A key identifer shall be unique with respect to all key identifiers
	* for the subject with which it is used. This extension is always non-critical.
	*/
	public static var SKI_OID(default, null) : String;
	
	/**
	* Constructor X509SKI
	*
	* @param doc
	* @param skiBytes
	*/
	@:overload public function new(doc : org.w3c.dom.Document, skiBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Constructor XMLX509SKI
	*
	* @param doc
	* @param x509certificate
	* @throws XMLSecurityException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Constructor XMLX509SKI
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Method getSKIBytes
	*
	* @return the skibytes
	* @throws XMLSecurityException
	*/
	@:overload public function getSKIBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Method getSKIBytesFromCert
	*
	* @param cert
	* @return ski bytes from the given certificate
	*
	* @throws XMLSecurityException
	* @see java.security.cert.X509Extension#getExtensionValue(java.lang.String)
	*/
	@:overload public static function getSKIBytesFromCert(cert : java.security.cert.X509Certificate) : java.NativeArray<java.StdTypes.Int8>;
	
	/** @inheritDoc */
	@:overload public function equals(obj : Dynamic) : Bool;
	
	/** @inheritDoc */
	@:overload override public function getBaseLocalName() : String;
	
	
}
