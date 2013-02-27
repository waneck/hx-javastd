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
extern class TransformSpi
{
	/**
	* For API compatibility not thread safe.
	* @deprecated
	*/
	private var _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform;
	
	/**
	* Set the transform object.
	* Depeprecated For API compatibility.
	* @param transform the Transform
	* @deprecated
	*/
	@:overload private function setTransform(transform : com.sun.org.apache.xml.internal.security.transforms.Transform) : Void;
	
	/**
	* The mega method which MUST be implemented by the Transformation Algorithm.
	*
	* @param input {@link XMLSignatureInput} as the input of transformation
	* @param os where to output this transformation.
	* @param _transformObject the Transform
	* @return {@link XMLSignatureInput} as the result of transformation
	* @throws CanonicalizationException
	* @throws IOException
	* @throws InvalidCanonicalizerException
	* @throws ParserConfigurationException
	* @throws SAXException
	* @throws TransformationException
	*/
	@:overload private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, os : java.io.OutputStream, _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* The mega method which MUST be implemented by the Transformation Algorithm.
	* In order to be compatible with preexisting Transform implementations,
	* by default this implementation invokes the deprecated, thread-unsafe
	* methods. Subclasses should override this with a thread-safe
	* implementation.
	*
	* @param input {@link XMLSignatureInput} as the input of transformation
	* @param _transformObject the Transform
	* @return {@link XMLSignatureInput} as the result of transformation
	* @throws CanonicalizationException
	* @throws IOException
	* @throws InvalidCanonicalizerException
	* @throws ParserConfigurationException
	* @throws SAXException
	* @throws TransformationException
	*/
	@:overload private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* The mega method which MUST be implemented by the Transformation Algorithm.
	* @deprecated
	* @param input {@link XMLSignatureInput} as the input of transformation
	* @return {@link XMLSignatureInput} as the result of transformation
	* @throws CanonicalizationException
	* @throws IOException
	* @throws InvalidCanonicalizerException
	* @throws ParserConfigurationException
	* @throws SAXException
	* @throws TransformationException
	*/
	@:overload private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	/**
	* Returns the URI representation of <code>Transformation algorithm</code>
	*
	* @return the URI representation of <code>Transformation algorithm</code>
	*/
	@:overload @:abstract private function engineGetURI() : String;
	
	
}
