package com.sun.org.apache.xml.internal.security.utils;
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
extern class Constants
{
	/** Field configurationFile */
	public static var configurationFile(default, null) : String;
	
	/** Field configurationFileNew */
	public static var configurationFileNew(default, null) : String;
	
	/** Field exceptionMessagesResourceBundleDir */
	public static var exceptionMessagesResourceBundleDir(default, null) : String;
	
	/** Field exceptionMessagesResourceBundleBase is the location of the <CODE>ResourceBundle</CODE> */
	public static var exceptionMessagesResourceBundleBase(default, null) : String;
	
	/**
	* The URL of the <A HREF="http://www.w3.org/TR/2001/CR-xmldsig-core-20010419/">XML Signature specification</A>
	*/
	public static var SIGNATURESPECIFICATION_URL(default, null) : String;
	
	/**
	* The namespace of the <A HREF="http://www.w3.org/TR/2001/CR-xmldsig-core-20010419/">XML Signature specification</A>
	*/
	public static var SignatureSpecNS(default, null) : String;
	
	/** The URL for more algorithm **/
	public static var MoreAlgorithmsSpecNS(default, null) : String;
	
	/** The URI for XML spec*/
	public static var XML_LANG_SPACE_SpecNS(default, null) : String;
	
	/** The URI for XMLNS spec*/
	public static var NamespaceSpecNS(default, null) : String;
	
	/** Tag of Attr Algorithm**/
	public static var _ATT_ALGORITHM(default, null) : String;
	
	/** Tag of Attr URI**/
	public static var _ATT_URI(default, null) : String;
	
	/** Tag of Attr Type**/
	public static var _ATT_TYPE(default, null) : String;
	
	/** Tag of Attr Id**/
	public static var _ATT_ID(default, null) : String;
	
	/** Tag of Attr MimeType**/
	public static var _ATT_MIMETYPE(default, null) : String;
	
	/** Tag of Attr Encoding**/
	public static var _ATT_ENCODING(default, null) : String;
	
	/** Tag of Attr Target**/
	public static var _ATT_TARGET(default, null) : String;
	
	/** Tag of Element CanonicalizationMethod **/
	public static var _TAG_CANONICALIZATIONMETHOD(default, null) : String;
	
	/** Tag of Element DigestMethod **/
	public static var _TAG_DIGESTMETHOD(default, null) : String;
	
	/** Tag of Element DigestValue **/
	public static var _TAG_DIGESTVALUE(default, null) : String;
	
	/** Tag of Element Manifest **/
	public static var _TAG_MANIFEST(default, null) : String;
	
	/** Tag of Element Methods **/
	public static var _TAG_METHODS(default, null) : String;
	
	/** Tag of Element Object **/
	public static var _TAG_OBJECT(default, null) : String;
	
	/** Tag of Element Reference **/
	public static var _TAG_REFERENCE(default, null) : String;
	
	/** Tag of Element Signature **/
	public static var _TAG_SIGNATURE(default, null) : String;
	
	/** Tag of Element SignatureMethod **/
	public static var _TAG_SIGNATUREMETHOD(default, null) : String;
	
	/** Tag of Element HMACOutputLength **/
	public static var _TAG_HMACOUTPUTLENGTH(default, null) : String;
	
	/** Tag of Element SignatureProperties **/
	public static var _TAG_SIGNATUREPROPERTIES(default, null) : String;
	
	/** Tag of Element SignatureProperty **/
	public static var _TAG_SIGNATUREPROPERTY(default, null) : String;
	
	/** Tag of Element SignatureValue **/
	public static var _TAG_SIGNATUREVALUE(default, null) : String;
	
	/** Tag of Element SignedInfo **/
	public static var _TAG_SIGNEDINFO(default, null) : String;
	
	/** Tag of Element Transform **/
	public static var _TAG_TRANSFORM(default, null) : String;
	
	/** Tag of Element Transforms **/
	public static var _TAG_TRANSFORMS(default, null) : String;
	
	/** Tag of Element XPath **/
	public static var _TAG_XPATH(default, null) : String;
	
	/** Tag of Element KeyInfo **/
	public static var _TAG_KEYINFO(default, null) : String;
	
	/** Tag of Element KeyName **/
	public static var _TAG_KEYNAME(default, null) : String;
	
	/** Tag of Element KeyValue **/
	public static var _TAG_KEYVALUE(default, null) : String;
	
	/** Tag of Element RetrievalMethod **/
	public static var _TAG_RETRIEVALMETHOD(default, null) : String;
	
	/** Tag of Element X509Data **/
	public static var _TAG_X509DATA(default, null) : String;
	
	/** Tag of Element PGPData **/
	public static var _TAG_PGPDATA(default, null) : String;
	
	/** Tag of Element SPKIData **/
	public static var _TAG_SPKIDATA(default, null) : String;
	
	/** Tag of Element MgmtData **/
	public static var _TAG_MGMTDATA(default, null) : String;
	
	/** Tag of Element RSAKeyValue **/
	public static var _TAG_RSAKEYVALUE(default, null) : String;
	
	/** Tag of Element Exponent **/
	public static var _TAG_EXPONENT(default, null) : String;
	
	/** Tag of Element Modulus **/
	public static var _TAG_MODULUS(default, null) : String;
	
	/** Tag of Element DSAKeyValue **/
	public static var _TAG_DSAKEYVALUE(default, null) : String;
	
	/** Tag of Element P **/
	public static var _TAG_P(default, null) : String;
	
	/** Tag of Element Q **/
	public static var _TAG_Q(default, null) : String;
	
	/** Tag of Element G **/
	public static var _TAG_G(default, null) : String;
	
	/** Tag of Element Y **/
	public static var _TAG_Y(default, null) : String;
	
	/** Tag of Element J **/
	public static var _TAG_J(default, null) : String;
	
	/** Tag of Element Seed **/
	public static var _TAG_SEED(default, null) : String;
	
	/** Tag of Element PgenCounter **/
	public static var _TAG_PGENCOUNTER(default, null) : String;
	
	/** Tag of Element rawX509Certificate **/
	public static var _TAG_RAWX509CERTIFICATE(default, null) : String;
	
	/** Tag of Element X509IssuerSerial **/
	public static var _TAG_X509ISSUERSERIAL(default, null) : String;
	
	/** Tag of Element X509SKI **/
	public static var _TAG_X509SKI(default, null) : String;
	
	/** Tag of Element X509SubjectName **/
	public static var _TAG_X509SUBJECTNAME(default, null) : String;
	
	/** Tag of Element X509Certificate **/
	public static var _TAG_X509CERTIFICATE(default, null) : String;
	
	/** Tag of Element X509CRL **/
	public static var _TAG_X509CRL(default, null) : String;
	
	/** Tag of Element X509IssuerName **/
	public static var _TAG_X509ISSUERNAME(default, null) : String;
	
	/** Tag of Element X509SerialNumber **/
	public static var _TAG_X509SERIALNUMBER(default, null) : String;
	
	/** Tag of Element PGPKeyID **/
	public static var _TAG_PGPKEYID(default, null) : String;
	
	/** Tag of Element PGPKeyPacket **/
	public static var _TAG_PGPKEYPACKET(default, null) : String;
	
	/** Tag of Element SPKISexp **/
	public static var _TAG_SPKISEXP(default, null) : String;
	
	/** Digest - Required SHA1 */
	public static var ALGO_ID_DIGEST_SHA1(default, null) : String;
	
	/**
	* @see <A HREF="http://www.ietf.org/internet-drafts/draft-blake-wilson-xmldsig-ecdsa-02.txt">
	*  draft-blake-wilson-xmldsig-ecdsa-02.txt</A>
	*/
	public static var ALGO_ID_SIGNATURE_ECDSA_CERTICOM(default, null) : String;
	
	/**
	* Sets the namespace prefix which will be used to identify elements in the
	* XML Signature Namespace.
	*
	* <pre>
	* Constants.setSignatureSpecNSprefix("dsig");
	* </pre>
	*
	* @param newPrefix is the new namespace prefix.
	* @throws XMLSecurityException
	* @see com.sun.org.apache.xml.internal.security.utils.Constants#getSignatureSpecNSprefix
	* $todo$ Add consistency checking for valid prefix
	*/
	@:overload public static function setSignatureSpecNSprefix(newPrefix : String) : Void;
	
	/**
	* Returns the XML namespace prefix which is used for elements in the XML
	* Signature namespace.
	*
	* It is defaulted to <code>dsig</code>, but can be changed using the
	* {@link #setSignatureSpecNSprefix} function.
	*
	* @return the current used namespace prefix
	* @see #setSignatureSpecNSprefix
	*/
	@:overload public static function getSignatureSpecNSprefix() : String;
	
	
}
