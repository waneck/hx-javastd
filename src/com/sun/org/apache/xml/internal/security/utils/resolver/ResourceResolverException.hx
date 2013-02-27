package com.sun.org.apache.xml.internal.security.utils.resolver;
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
extern class ResourceResolverException extends com.sun.org.apache.xml.internal.security.exceptions.XMLSecurityException
{
	/**
	* Constructor ResourceResolverException
	*
	* @param _msgID
	* @param uri
	* @param BaseURI
	*/
	@:overload public function new(_msgID : String, uri : org.w3c.dom.Attr, BaseURI : String) : Void;
	
	/**
	* Constructor ResourceResolverException
	*
	* @param _msgID
	* @param exArgs
	* @param uri
	* @param BaseURI
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, uri : org.w3c.dom.Attr, BaseURI : String) : Void;
	
	/**
	* Constructor ResourceResolverException
	*
	* @param _msgID
	* @param _originalException
	* @param uri
	* @param BaseURI
	*/
	@:overload public function new(_msgID : String, _originalException : java.lang.Exception, uri : org.w3c.dom.Attr, BaseURI : String) : Void;
	
	/**
	* Constructor ResourceResolverException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	* @param uri
	* @param BaseURI
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception, uri : org.w3c.dom.Attr, BaseURI : String) : Void;
	
	/**
	*
	* @param uri
	*/
	@:overload public function setURI(uri : org.w3c.dom.Attr) : Void;
	
	/**
	*
	* @return the uri
	*/
	@:overload public function getURI() : org.w3c.dom.Attr;
	
	/**
	*
	* @param BaseURI
	*/
	@:overload public function setBaseURI(BaseURI : String) : Void;
	
	/**
	*
	* @return the basUri
	*/
	@:overload public function getBaseURI() : String;
	
	
}
