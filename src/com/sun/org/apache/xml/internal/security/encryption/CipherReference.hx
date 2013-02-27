package com.sun.org.apache.xml.internal.security.encryption;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright  2003-2004 The Apache Software Foundation.
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
extern interface CipherReference
{
	/**
	* Returns an <code>URI</code> that contains an identifier that should be
	* dereferenced.
	* @return
	*/
	@:overload public function getURI() : String;
	
	/**
	* Gets the URI as an Attribute node.  Used to meld the CipherREference
	* with the XMLSignature ResourceResolvers
	* @return
	*/
	@:overload public function getURIAsAttr() : org.w3c.dom.Attr;
	
	/**
	* Returns the <code>Transforms</code> that specifies how to transform the
	* <code>URI</code> to yield the appropiate cipher value.
	*
	* @return the transform that specifies how to transform the reference to
	*   yield the intended cipher value.
	*/
	@:overload public function getTransforms() : com.sun.org.apache.xml.internal.security.encryption.Transforms;
	
	/**
	* Sets the <code>Transforms</code> that specifies how to transform the
	* <code>URI</code> to yield the appropiate cipher value.
	*
	* @param transforms the set of <code>Transforms</code> that specifies how
	*   to transform the reference to yield the intended cipher value.
	*/
	@:overload public function setTransforms(transforms : com.sun.org.apache.xml.internal.security.encryption.Transforms) : Void;
	
	
}
