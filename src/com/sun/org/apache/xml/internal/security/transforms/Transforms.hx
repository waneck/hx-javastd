package com.sun.org.apache.xml.internal.security.transforms;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  1999-2008 The Apache Software Foundation.
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
extern class Transforms extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/** Canonicalization - Required Canonical XML (omits comments) */
	public static var TRANSFORM_C14N_OMIT_COMMENTS(default, null) : String;
	
	/** Canonicalization - Recommended Canonical XML with Comments */
	public static var TRANSFORM_C14N_WITH_COMMENTS(default, null) : String;
	
	/** Canonicalization - Required Canonical XML 1.1 (omits comments) */
	public static var TRANSFORM_C14N11_OMIT_COMMENTS(default, null) : String;
	
	/** Canonicalization - Recommended Canonical XML 1.1 with Comments */
	public static var TRANSFORM_C14N11_WITH_COMMENTS(default, null) : String;
	
	/** Canonicalization - Required Exclusive Canonicalization (omits comments) */
	public static var TRANSFORM_C14N_EXCL_OMIT_COMMENTS(default, null) : String;
	
	/** Canonicalization - Recommended Exclusive Canonicalization with Comments */
	public static var TRANSFORM_C14N_EXCL_WITH_COMMENTS(default, null) : String;
	
	/** Transform - Optional XSLT */
	public static var TRANSFORM_XSLT(default, null) : String;
	
	/** Transform - Required base64 decoding */
	public static var TRANSFORM_BASE64_DECODE(default, null) : String;
	
	/** Transform - Recommended XPath */
	public static var TRANSFORM_XPATH(default, null) : String;
	
	/** Transform - Required Enveloped Signature */
	public static var TRANSFORM_ENVELOPED_SIGNATURE(default, null) : String;
	
	/** Transform - XPointer */
	public static var TRANSFORM_XPOINTER(default, null) : String;
	
	/** Transform - XPath Filter v2.0 */
	public static var TRANSFORM_XPATH2FILTER04(default, null) : String;
	
	/** Transform - XPath Filter */
	public static var TRANSFORM_XPATH2FILTER(default, null) : String;
	
	/** Transform - XPath Filter  CHGP private */
	public static var TRANSFORM_XPATHFILTERCHGP(default, null) : String;
	
	@:overload private function new() : Void;
	
	/**
	* Constructs {@link Transforms}.
	*
	* @param doc the {@link Document} in which <code>XMLSignature</code> will
	* be placed
	*/
	@:overload public function new(doc : org.w3c.dom.Document) : Void;
	
	/**
	* Constructs {@link Transforms} from {@link Element} which is
	* <code>Transforms</code> Element
	*
	* @param element  is <code>Transforms</code> element
	* @param BaseURI the URI where the XML instance was stored
	* @throws DOMException
	* @throws InvalidTransformException
	* @throws TransformationException
	* @throws XMLSecurityException
	* @throws XMLSignatureException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Adds the <code>Transform</code> with the specified <code>Transform
	* algorithm URI</code>
	*
	* @param transformURI the URI form of transform that indicates which
	* transformation is applied to data
	* @throws TransformationException
	*/
	@:overload public function addTransform(transformURI : String) : Void;
	
	/**
	* Adds the <code>Transform</code> with the specified <code>Transform
	* algorithm URI</code>
	*
	* @param transformURI the URI form of transform that indicates which
	* transformation is applied to data
	* @param contextElement
	* @throws TransformationException
	* @see Transform#getInstance(Document doc, String algorithmURI, Element childElement)
	*/
	@:overload public function addTransform(transformURI : String, contextElement : org.w3c.dom.Element) : Void;
	
	/**
	* Adds the <code>Transform</code> with the specified <code>Transform
	* algorithm URI</code>.
	*
	* @param transformURI the URI form of transform that indicates which
	* transformation is applied to data
	* @param contextNodes
	* @throws TransformationException
	* @see Transform#getInstance(Document doc, String algorithmURI, NodeList contextNodes)
	*/
	@:overload public function addTransform(transformURI : String, contextNodes : org.w3c.dom.NodeList) : Void;
	
	/**
	* Applies all included <code>Transform</code>s to xmlSignatureInput and
	* returns the result of these transformations.
	*
	* @param xmlSignatureInput the input for the <code>Transform</code>s
	* @return the result of the <code>Transforms</code>
	* @throws TransformationException
	*/
	@:overload public function performTransforms(xmlSignatureInput : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Applies all included <code>Transform</code>s to xmlSignatureInput and
	* returns the result of these transformations.
	*
	* @param xmlSignatureInput the input for the <code>Transform</code>s
	* @param os where to output the last transformation.
	* @return the result of the <code>Transforms</code>
	* @throws TransformationException
	*/
	@:overload public function performTransforms(xmlSignatureInput : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, os : java.io.OutputStream) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Return the nonnegative number of transformations.
	*
	* @return the number of transformations
	*/
	@:overload public function getLength() : Int;
	
	/**
	* Return the <it>i</it><sup>th</sup> <code>{@link Transform}</code>.
	* Valid <code>i</code> values are 0 to <code>{@link #getLength}-1</code>.
	*
	* @param i index of {@link Transform} to return
	* @return the <it>i</it><sup>th</sup> Transform
	* @throws TransformationException
	*/
	@:overload public function item(i : Int) : com.sun.org.apache.xml.internal.security.transforms.Transform;
	
	/** @inheritDoc */
	@:overload public function getBaseLocalName() : String;
	
	
}
