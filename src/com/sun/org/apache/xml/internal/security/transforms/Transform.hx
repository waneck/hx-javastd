package com.sun.org.apache.xml.internal.security.transforms;
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
extern class Transform extends com.sun.org.apache.xml.internal.security.utils.SignatureElementProxy
{
	/**
	* Constructs {@link Transform}
	*
	* @param doc the {@link Document} in which <code>Transform</code> will be
	* placed
	* @param algorithmURI URI representation of
	* <code>Transform algorithm</code> which will be specified as parameter of
	* {@link #getInstance(Document, String)}, when generated. </br>
	* @param contextNodes the child node list of <code>Transform</code> element
	* @throws InvalidTransformException
	*/
	@:overload public function new(doc : org.w3c.dom.Document, algorithmURI : String, contextNodes : org.w3c.dom.NodeList) : Void;
	
	/**
	* This constructor can only be called from the {@link Transforms} object,
	* so it's protected.
	*
	* @param element <code>ds:Transform</code> element
	* @param BaseURI the URI of the resource where the XML instance was stored
	* @throws InvalidTransformException
	* @throws TransformationException
	* @throws XMLSecurityException
	*/
	@:overload public function new(element : org.w3c.dom.Element, BaseURI : String) : Void;
	
	/**
	* Generates a Transform object that implements the specified
	* <code>Transform algorithm</code> URI.
	*
	* @param algorithmURI <code>Transform algorithm</code> URI representation,
	* such as specified in
	* <a href=http://www.w3.org/TR/xmldsig-core/#sec-TransformAlg>Transform algorithm </a>
	* @param doc the proxy {@link Document}
	* @return <code>{@link Transform}</code> object
	* @throws InvalidTransformException
	*/
	@:overload public static function getInstance(doc : org.w3c.dom.Document, algorithmURI : String) : Transform;
	
	/**
	* Generates a Transform object that implements the specified
	* <code>Transform algorithm</code> URI.
	*
	* @param algorithmURI <code>Transform algorithm</code> URI representation,
	* such as specified in
	* <a href=http://www.w3.org/TR/xmldsig-core/#sec-TransformAlg>Transform algorithm </a>
	* @param contextChild the child element of <code>Transform</code> element
	* @param doc the proxy {@link Document}
	* @return <code>{@link Transform}</code> object
	* @throws InvalidTransformException
	*/
	@:overload public static function getInstance(doc : org.w3c.dom.Document, algorithmURI : String, contextChild : org.w3c.dom.Element) : Transform;
	
	/**
	* Generates a Transform object that implements the specified
	* <code>Transform algorithm</code> URI.
	*
	* @param algorithmURI <code>Transform algorithm</code> URI form, such as
	* specified in <a href=http://www.w3.org/TR/xmldsig-core/#sec-TransformAlg>
	* Transform algorithm </a>
	* @param contextNodes the child node list of <code>Transform</code> element
	* @param doc the proxy {@link Document}
	* @return <code>{@link Transform}</code> object
	* @throws InvalidTransformException
	*/
	@:overload public static function getInstance(doc : org.w3c.dom.Document, algorithmURI : String, contextNodes : org.w3c.dom.NodeList) : Transform;
	
	/**
	* Initalizes for this {@link Transform}.
	*/
	@:overload public static function init() : Void;
	
	/**
	* Registers implementing class of the Transform algorithm with algorithmURI
	*
	* @param algorithmURI algorithmURI URI representation of
	* <code>Transform algorithm</code> will be specified as parameter of
	* {@link #getInstance(Document, String)}, when generate. </br>
	* @param implementingClass <code>implementingClass</code> the implementing
	* class of {@link TransformSpi}
	* @throws AlgorithmAlreadyRegisteredException if specified algorithmURI
	* is already registered
	*/
	@:overload public static function register(algorithmURI : String, implementingClass : String) : Void;
	
	/**
	* Returns the URI representation of Transformation algorithm
	*
	* @return the URI representation of Transformation algorithm
	*/
	@:overload public function getURI() : String;
	
	/**
	* Transforms the input, and generates {@link XMLSignatureInput} as output.
	*
	* @param input input {@link XMLSignatureInput} which can supplied Octet
	* Stream and NodeSet as Input of Transformation
	* @return the {@link XMLSignatureInput} class as the result of
	* transformation
	* @throws CanonicalizationException
	* @throws IOException
	* @throws InvalidCanonicalizerException
	* @throws TransformationException
	*/
	@:overload public function performTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Transforms the input, and generates {@link XMLSignatureInput} as output.
	*
	* @param input input {@link XMLSignatureInput} which can supplied Octet
	* Stream and NodeSet as Input of Transformation
	* @param os where to output the result of the last transformation
	* @return the {@link XMLSignatureInput} class as the result of
	* transformation
	* @throws CanonicalizationException
	* @throws IOException
	* @throws InvalidCanonicalizerException
	* @throws TransformationException
	*/
	@:overload public function performTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, os : java.io.OutputStream) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/** @inheritDoc */
	@:overload override public function getBaseLocalName() : String;
	
	
}
