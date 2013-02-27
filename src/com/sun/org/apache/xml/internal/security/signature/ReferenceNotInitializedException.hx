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
/**
* Raised if verifying a {@link com.sun.org.apache.xml.internal.security.signature.Reference} fails
* because of an uninitialized {@link com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput}
*
* @author Christian Geuer-Pollmann
*/
extern class ReferenceNotInitializedException extends com.sun.org.apache.xml.internal.security.signature.XMLSignatureException
{
	/**
	* Constructor ReferenceNotInitializedException
	*
	*/
	@:overload public function new() : Void;
	
	/**
	* Constructor ReferenceNotInitializedException
	*
	* @param _msgID
	*/
	@:overload public function new(_msgID : String) : Void;
	
	/**
	* Constructor ReferenceNotInitializedException
	*
	* @param _msgID
	* @param exArgs
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor ReferenceNotInitializedException
	*
	* @param _msgID
	* @param _originalException
	*/
	@:overload public function new(_msgID : String, _originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor ReferenceNotInitializedException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	*/
	@:overload public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception) : Void;
	
	
}
