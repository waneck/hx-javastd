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
extern class XMLX509SubjectName extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy implements com.sun.org.apache.xml.internal.security.keys.content.x509.XMLX509DataContent
{
	/**
	* Constructor X509SubjectName
	*
	* @param element
	* @param BaseURI
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Constructor X509SubjectName
	*
	* @param doc
	* @param X509SubjectNameString
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, X509SubjectNameString : String) : Void;
	
	/**
	* Constructor XMLX509SubjectName
	*
	* @param doc
	* @param x509certificate
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, x509certificate : java.security.cert.X509Certificate) : Void;
	
	/**
	* Method getSubjectName
	*
	*
	* @return the subject name
	*/
	@:overload @:public public function getSubjectName() : String;
	
	/** @inheritDoc */
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/** @inheritDoc */
	@:overload @:public override public function getBaseLocalName() : String;
	
	
}
