package com.sun.org.apache.xml.internal.security.keys.content;
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
extern class X509Data extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.KeyInfoContent
{
	/**
	* Constructor X509Data
	*
	* @param doc
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructor X509Data
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Method addIssuerSerial
	*
	* @param X509IssuerName
	* @param X509SerialNumber
	*/
	@:overload @:public public function addIssuerSerial(X509IssuerName : String, X509SerialNumber : java.math.BigInteger) : Void;
	
	/**
	* Method addIssuerSerial
	*
	* @param X509IssuerName
	* @param X509SerialNumber
	*/
	@:overload @:public public function addIssuerSerial(X509IssuerName : String, X509SerialNumber : String) : Void;
	
	/**
	* Method addIssuerSerial
	*
	* @param X509IssuerName
	* @param X509SerialNumber
	*/
	@:overload @:public public function addIssuerSerial(X509IssuerName : String, X509SerialNumber : Int) : Void;
	
	/**
	* Method add
	*
	* @param xmlX509IssuerSerial
	*/
	@:overload @:public public function add(xmlX509IssuerSerial : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509IssuerSerial) : Void;
	
	/**
	* Method addSKI
	*
	* @param skiBytes
	*/
	@:overload @:public public function addSKI(skiBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Method addSKI
	*
	* @param x509certificate
	* @throws XMLSecurityException
	*/
	@:overload @:public public function addSKI(x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method add
	*
	* @param xmlX509SKI
	*/
	@:overload @:public public function add(xmlX509SKI : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SKI) : Void;
	
	/**
	* Method addSubjectName
	*
	* @param subjectName
	*/
	@:overload @:public public function addSubjectName(subjectName : String) : Void;
	
	/**
	* Method addSubjectName
	*
	* @param x509certificate
	*/
	@:overload @:public public function addSubjectName(x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method add
	*
	* @param xmlX509SubjectName
	*/
	@:overload @:public public function add(xmlX509SubjectName : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SubjectName) : Void;
	
	/**
	* Method addCertificate
	*
	* @param x509certificate
	* @throws XMLSecurityException
	*/
	@:overload @:public public function addCertificate(x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method addCertificate
	*
	* @param x509certificateBytes
	*/
	@:overload @:public public function addCertificate(x509certificateBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Method add
	*
	* @param xmlX509Certificate
	*/
	@:overload @:public public function add(xmlX509Certificate : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509Certificate) : Void;
	
	/**
	* Method addCRL
	*
	* @param crlBytes
	*/
	@:overload @:public public function addCRL(crlBytes : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	/**
	* Method add
	*
	* @param xmlX509CRL
	*/
	@:overload @:public public function add(xmlX509CRL : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509CRL) : Void;
	
	/**
	* Method addUnknownElement
	*
	* @param element
	*/
	@:overload @:public public function addUnknownElement(element : org.w3c.dom.Element) : Void;
	
	/**
	* Method lengthIssuerSerial
	*
	* @return the number of IssuerSerial elements in this X509Data
	*/
	@:overload @:public public function lengthIssuerSerial() : Int;
	
	/**
	* Method lengthSKI
	*
	* @return the number of SKI elements in this X509Data
	*/
	@:overload @:public public function lengthSKI() : Int;
	
	/**
	* Method lengthSubjectName
	*
	* @return the number of SubjectName elements in this X509Data
	*/
	@:overload @:public public function lengthSubjectName() : Int;
	
	/**
	* Method lengthCertificate
	*
	* @return the number of Certificate elements in this X509Data
	*/
	@:overload @:public public function lengthCertificate() : Int;
	
	/**
	* Method lengthCRL
	*
	* @return the number of CRL elements in this X509Data
	*/
	@:overload @:public public function lengthCRL() : Int;
	
	/**
	* Method lengthUnknownElement
	*
	* @return the number of UnknownElement elements in this X509Data
	*/
	@:overload @:public public function lengthUnknownElement() : Int;
	
	/**
	* Method itemIssuerSerial
	*
	* @param i
	* @return the X509IssuerSerial, null if not present
	* @throws XMLSecurityException
	*/
	@:overload @:public public function itemIssuerSerial(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509IssuerSerial;
	
	/**
	* Method itemSKI
	*
	* @param i
	* @return the X509SKI, null if not present
	* @throws XMLSecurityException
	*/
	@:overload @:public public function itemSKI(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SKI;
	
	/**
	* Method itemSubjectName
	*
	* @param i
	* @return the X509SubjectName, null if not present
	* @throws XMLSecurityException
	*/
	@:overload @:public public function itemSubjectName(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509SubjectName;
	
	/**
	* Method itemCertificate
	*
	* @param i
	* @return the X509Certifacte, null if not present
	* @throws XMLSecurityException
	*/
	@:overload @:public public function itemCertificate(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509Certificate;
	
	/**
	* Method itemCRL
	*
	* @param i
	* @return the X509CRL, null if not present
	* @throws XMLSecurityException
	*/
	@:overload @:public public function itemCRL(i : Int) : com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509CRL;
	
	/**
	* Method itemUnknownElement
	*
	* @param i
	* @return the Unknown Element at i
	* TODO implement
	**/
	@:overload @:public public function itemUnknownElement(i : Int) : org.w3c.dom.Element;
	
	/**
	* Method containsIssuerSerial
	*
	* @return true if this X509Data contains a IssuerSerial
	*/
	@:overload @:public public function containsIssuerSerial() : Bool;
	
	/**
	* Method containsSKI
	*
	* @return true if this X509Data contains a SKI
	*/
	@:overload @:public public function containsSKI() : Bool;
	
	/**
	* Method containsSubjectName
	*
	* @return true if this X509Data contains a SubjectName
	*/
	@:overload @:public public function containsSubjectName() : Bool;
	
	/**
	* Method containsCertificate
	*
	* @return true if this X509Data contains a Certificate
	*/
	@:overload @:public public function containsCertificate() : Bool;
	
	/**
	* Method containsCRL
	*
	* @return true if this X509Data contains a CRL
	*/
	@:overload @:public public function containsCRL() : Bool;
	
	/**
	* Method containsUnknownElement
	*
	* @return true if this X509Data contains an UnknownElement
	*/
	@:overload @:public public function containsUnknownElement() : Bool;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
