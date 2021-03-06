package com.sun.org.apache.xerces.internal.xs;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2003,2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/**
* This interface allows one to retrieve an instance of <code>XSLoader</code>.
* This interface should be implemented on the same object that implements
* DOMImplementation.
*/
extern interface XSImplementation
{
	/**
	* A list containing the versions of XML Schema documents recognized by
	* this <code>XSImplemenation</code>.
	*/
	@:overload @:public public function getRecognizedVersions() : com.sun.org.apache.xerces.internal.xs.StringList;
	
	/**
	* Creates a new XSLoader. The newly constructed loader may then be
	* configured and used to load XML Schemas.
	* @param versions  A list containing the versions of XML Schema
	*   documents which can be loaded by the <code>XSLoader</code> or
	*   <code>null</code> to permit XML Schema documents of any recognized
	*   version to be loaded by the XSLoader.
	* @return  An XML Schema loader.
	* @exception XSException
	*   NOT_SUPPORTED_ERR: Raised if the implementation does not support one
	*   of the specified versions.
	*/
	@:overload @:public public function createXSLoader(versions : com.sun.org.apache.xerces.internal.xs.StringList) : com.sun.org.apache.xerces.internal.xs.XSLoader;
	
	
}
