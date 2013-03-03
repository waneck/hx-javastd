package com.sun.org.apache.xml.internal.security.signature;
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
extern class SignedInfo extends com.sun.org.apache.xml.internal.security.signature.Manifest
{
	/**
	* Overwrites {@link Manifest#addDocument} because it creates another
	* Element.
	*
	* @param doc the {@link Document} in which <code>XMLsignature</code> will
	*    be placed
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructs {@link SignedInfo} using given Canonicalization algorithm and
	* Signature algorithm.
	*
	* @param doc <code>SignedInfo</code> is placed in this document
	* @param signatureMethodURI URI representation of the Digest and
	*    Signature algorithm
	* @param canonicalizationMethodURI URI representation of the
	*    Canonicalization method
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, signatureMethodURI : String, canonicalizationMethodURI : String) : Void;
	
	/**
	* Constructor SignedInfo
	*
	* @param doc <code>SignedInfo</code> is placed in this document
	* @param signatureMethodURI URI representation of the Digest and
	*    Signature algorithm
	* @param hMACOutputLength
	* @param canonicalizationMethodURI URI representation of the
	*    Canonicalization method
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, signatureMethodURI : String, hMACOutputLength : Int, canonicalizationMethodURI : String) : Void;
	
	/**
	* @param doc
	* @param signatureMethodElem
	* @param canonicalizationMethodElem
	* @throws XMLSecurityException
	*/
	@:overload @:public public function new(doc : org.w3c.dom.Document, signatureMethodElem : org.w3c.dom.Element, canonicalizationMethodElem : org.w3c.dom.Element) : Void;
	
	/**
	* Build a {@link SignedInfo} from an {@link Element}
	*
	* @param element <code>SignedInfo</code>
	* @param baseURI the URI of the resource where the XML instance was stored
	* @throws XMLSecurityException
	* @see <A HREF="http://lists.w3.org/Archives/Public/w3c-ietf-xmldsig/2001OctDec/0033.html">Question</A>
	* @see <A HREF="http://lists.w3.org/Archives/Public/w3c-ietf-xmldsig/2001OctDec/0054.html">Answer</A>
	*/
	@:overload @:public public function new(element : org.w3c.dom.Element, baseURI : String) : Void;
	
	/**
	* Tests core validation process
	*
	* @return true if verification was successful
	* @throws MissingResourceFailureException
	* @throws XMLSecurityException
	*/
	@:overload @:public public function verify() : Bool;
	
	/**
	* Tests core validation process
	*
	* @param followManifests defines whether the verification process has to verify referenced <CODE>ds:Manifest</CODE>s, too
	* @return true if verification was successful
	* @throws MissingResourceFailureException
	* @throws XMLSecurityException
	*/
	@:overload @:public public function verify(followManifests : Bool) : Bool;
	
	/**
	* Returns getCanonicalizedOctetStream
	*
	* @return the canonicalization result octedt stream of <code>SignedInfo</code> element
	* @throws CanonicalizationException
	* @throws InvalidCanonicalizerException
	* @throws XMLSecurityException
	*/
	@:overload @:public public function getCanonicalizedOctetStream() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	*  Output the C14n stream to the give outputstream.
	* @param os
	* @throws CanonicalizationException
	* @throws InvalidCanonicalizerException
	* @throws XMLSecurityException
	*/
	@:overload @:public public function signInOctectStream(os : java.io.OutputStream) : Void;
	
	/**
	* Returns the Canonicalization method URI
	*
	* @return the Canonicalization method URI
	*/
	@:overload @:public public function getCanonicalizationMethodURI() : String;
	
	/**
	* Returns the Signature method URI
	*
	* @return the Signature method URI
	*/
	@:overload @:public public function getSignatureMethodURI() : String;
	
	/**
	* Method getSignatureMethodElement
	* @return gets The SignatureMethod Node.
	*
	*/
	@:overload @:public public function getSignatureMethodElement() : org.w3c.dom.Element;
	
	/**
	* Creates a SecretKey for the appropriate Mac algorithm based on a
	* byte[] array password.
	*
	* @param secretKeyBytes
	* @return the secret key for the SignedInfo element.
	*/
	@:overload @:public public function createSecretKey(secretKeyBytes : java.NativeArray<java.StdTypes.Int8>) : javax.crypto.SecretKey;
	
	@:overload @:protected private function getSignatureAlgorithm() : com.sun.org.apache.xml.internal.security.algorithms.SignatureAlgorithm;
	
	/**
	* Method getBaseLocalName
	* @inheritDoc
	*
	*/
	@:overload @:public override public function getBaseLocalName() : String;
	
	@:overload @:public public function getInclusiveNamespaces() : String;
	
	
}
