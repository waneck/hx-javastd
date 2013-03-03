package com.sun.org.apache.xml.internal.security.transforms.implementations;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2008 The Apache Software Foundation.
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
extern class TransformC14N11_WithComments extends com.sun.org.apache.xml.internal.security.transforms.TransformSpi
{
	/**
	* Implements the <CODE>http://www.w3.org/2006/12/xml-c14n-11#WithComments</CODE>
	* (C14N 1.1 With Comments) transform.
	*
	* @author Sean Mullan
	*/
	@:overload @:protected override private function engineGetURI() : String;
	
	@:overload @:protected override private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, transform : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	@:overload @:protected override private function enginePerformTransform(input : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput, os : java.io.OutputStream, transform : com.sun.org.apache.xml.internal.security.transforms.Transform) : com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput;
	
	
}
