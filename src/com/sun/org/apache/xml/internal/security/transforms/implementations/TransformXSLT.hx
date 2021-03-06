package com.sun.org.apache.xml.internal.security.transforms.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2007 The Apache Software Foundation.
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
extern class TransformXSLT extends com.sun.org.apache.xml.internal.security.transforms.TransformSpi
{
	/** Field implementedTransformURI */
	@:public @:static @:final public static var implementedTransformURI(default, null) : String;
	
	/**
	* Method engineGetURI
	*
	* @inheritDoc
	*/
	@:overload @:protected override private function engineGetURI() : String;
	
	/**
	* Method enginePerformTransform
	*
	* @param input the input for this transform
	* @return the result of this Transform
	* @throws IOException
	* @throws TransformationException
	*/
	@:overload @:protected override private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	@:overload @:protected override private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, baos : java.io.OutputStream, _transformObject : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	
}
