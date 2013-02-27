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
extern class Reference extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/** Field CacheSignedNodes */
	public static var CacheSignedNodes(default, null) : Bool;
	
	/** Field OBJECT_URI */
	public static var OBJECT_URI(default, null) : String;
	
	/** Field MANIFEST_URI */
	public static var MANIFEST_URI(default, null) : String;
	
	/**
	* Constructor Reference
	*
	* @param doc the {@link Document} in which <code>XMLsignature</code> is placed
	* @param BaseURI the URI of the resource where the XML instance will be stored
	* @param ReferenceURI URI indicate where is data which will digested
	* @param manifest
	* @param transforms {@link Transforms} applied to data
	* @param messageDigestAlgorithm {@link MessageDigestAlgorithm Digest algorithm} which is applied to the data
	* TODO should we throw XMLSignatureException if MessageDigestAlgoURI is wrong?
	* @throws XMLSignatureException
	*/
	@:overload private function new(doc : org.w3c.dom.Document, BaseURI : String, ReferenceURI : String, manifest : com.sun.org.apache.xml.internal.security.signature.Manifest, transforms : com.sun.org.apache.xml.internal.security.transforms.Transforms, messageDigestAlgorithm : String) : Void;
	
	/**
	* Build a {@link Reference} from an {@link Element}
	*
	* @param element <code>Reference</code> element
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @param manifest is the {@link Manifest} of {@link SignedInfo} in which the Reference occurs. We need this because the Manifest has the individual {@link ResourceResolver}s whcih have been set by the user
	* @throws XMLSecurityException
	*/
	@:overload private function new(element : org.w3c.dom.Element, BaseURI : String, manifest : com.sun.org.apache.xml.internal.security.signature.Manifest) : Void;
	
	/**
	* Returns {@link MessageDigestAlgorithm}
	*
	*
	* @return {@link MessageDigestAlgorithm}
	*
	* @throws XMLSignatureException
	*/
	@:overload public function getMessageDigestAlgorithm() : com.sun.org.apache.xml.internal.security.algorithms.MessageDigestAlgorithm;
	
	/**
	* Sets the <code>URI</code> of this <code>Reference</code> element
	*
	* @param URI the <code>URI</code> of this <code>Reference</code> element
	*/
	@:overload public function setURI(URI : String) : Void;
	
	/**
	* Returns the <code>URI</code> of this <code>Reference</code> element
	*
	* @return URI the <code>URI</code> of this <code>Reference</code> element
	*/
	@:overload public function getURI() : String;
	
	/**
	* Sets the <code>Id</code> attribute of this <code>Reference</code> element
	*
	* @param Id the <code>Id</code> attribute of this <code>Reference</code> element
	*/
	@:overload public function setId(Id : String) : Void;
	
	/**
	* Returns the <code>Id</code> attribute of this <code>Reference</code> element
	*
	* @return Id the <code>Id</code> attribute of this <code>Reference</code> element
	*/
	@:overload public function getId() : String;
	
	/**
	* Sets the <code>type</code> atttibute of the Reference indicate whether an <code>ds:Object</code>, <code>ds:SignatureProperty</code>, or <code>ds:Manifest</code> element
	*
	* @param Type the <code>type</code> attribute of the Reference
	*/
	@:overload public function setType(Type : String) : Void;
	
	/**
	* Return the <code>type</code> atttibute of the Reference indicate whether an <code>ds:Object</code>, <code>ds:SignatureProperty</code>, or <code>ds:Manifest</code> element
	*
	* @return the <code>type</code> attribute of the Reference
	*/
	@:overload public function getType() : String;
	
	/**
	* Method isReferenceToObject
	*
	* This returns true if the <CODE>Type</CODE> attribute of the
	* <CODE>Refernce</CODE> element points to a <CODE>#Object</CODE> element
	*
	* @return true if the Reference type indicates that this Reference points to an <code>Object</code>
	*/
	@:overload public function typeIsReferenceToObject() : Bool;
	
	/**
	* Method isReferenceToManifest
	*
	* This returns true if the <CODE>Type</CODE> attribute of the
	* <CODE>Refernce</CODE> element points to a <CODE>#Manifest</CODE> element
	*
	* @return true if the Reference type indicates that this Reference points to a {@link Manifest}
	*/
	@:overload public function typeIsReferenceToManifest() : Bool;
	
	/**
	* Method generateDigestValue
	*
	* @throws ReferenceNotInitializedException
	* @throws XMLSignatureException
	*/
	@:overload public function generateDigestValue() : Void;
	
	/**
	* Returns the XMLSignatureInput which is created by de-referencing the URI attribute.
	* @return the XMLSignatureInput of the source of this reference
	* @throws ReferenceNotInitializedException If the resolver found any
	*  problem resolving the reference
	*/
	@:overload public function getContentsBeforeTransformation() : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Returns the data which is referenced by the URI attribute. This method
	* only works works after a call to verify.
	* @return a XMLSignature with a byte array.
	* @throws ReferenceNotInitializedException
	*
	* @deprecated use getContentsBeforeTransformation
	*/
	@:overload public function getTransformsInput() : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Returns the XMLSignatureInput which is the result of the Transforms.
	* @return a XMLSignatureInput with all transformations applied.
	* @throws XMLSignatureException
	*/
	@:overload public function getContentsAfterTransformation() : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* This method returns the XMLSignatureInput which represents the node set before
	* some kind of canonicalization is applied for the first time.
	* @return Gets a the node doing everything till the first c14n is needed
	*
	* @throws XMLSignatureException
	*/
	@:overload public function getNodesetBeforeFirstCanonicalization() : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method getHTMLRepresentation
	* @return The HTML of the transformation
	* @throws XMLSignatureException
	*/
	@:overload public function getHTMLRepresentation() : String;
	
	/**
	* This method only works works after a call to verify.
	* @return the transformed output(i.e. what is going to be digested).
	*/
	@:overload public function getTransformsOutput() : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* This method returns the {@link XMLSignatureInput} which is referenced by the
	* <CODE>URI</CODE> Attribute.
	* @param os where to write the transformation can be null.
	* @return the element to digest
	*
	* @throws XMLSignatureException
	* @see Manifest#verifyReferences()
	*/
	@:overload private function dereferenceURIandPerformTransforms(os : java.io.OutputStream) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Method getTransforms
	*
	* @return The transforms that applied this reference.
	* @throws InvalidTransformException
	* @throws TransformationException
	* @throws XMLSecurityException
	* @throws XMLSignatureException
	*/
	@:overload public function getTransforms() : com.sun.org.apache.xml.internal.security.transforms.Transforms;
	
	/**
	* Method getReferencedBytes
	*
	* @return the bytes that will be used to generated digest.
	* @throws ReferenceNotInitializedException
	* @throws XMLSignatureException
	*/
	@:overload public function getReferencedBytes() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Returns the digest value.
	*
	* @return the digest value.
	* @throws Base64DecodingException if Reference contains no proper base64 encoded data.
	* @throws XMLSecurityException if the Reference does not contain a DigestValue element
	*/
	@:overload public function getDigestValue() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Tests reference valdiation is success or false
	*
	* @return true if reference valdiation is success, otherwise false
	* @throws ReferenceNotInitializedException
	* @throws XMLSecurityException
	*/
	@:overload public function verify() : Bool;
	
	/**
	* Method getBaseLocalName
	* @inheritDoc
	*
	*/
	@:overload override public function getBaseLocalName() : String;
	
	
}
