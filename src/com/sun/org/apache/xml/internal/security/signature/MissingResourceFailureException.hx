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
* Thrown by {@link com.sun.org.apache.xml.internal.security.signature.SignedInfo#verify()} when
* testing the signature fails because of uninitialized
* {@link com.sun.org.apache.xml.internal.security.signature.Reference}s.
*
* @author Christian Geuer-Pollmann
* @see ReferenceNotInitializedException
*/
extern class MissingResourceFailureException extends com.sun.org.apache.xml.internal.security.signature.XMLSignatureException
{
	/**
	* MissingKeyResourceFailureException constructor.
	* @param _msgID
	* @param reference
	* @see #getReference
	*/
	@:overload @:public public function new(_msgID : String, reference : com.sun.org.apache.xml.internal.security.signature.Reference) : Void;
	
	/**
	* Constructor MissingResourceFailureException
	*
	* @param _msgID
	* @param exArgs
	* @param reference
	* @see #getReference
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, reference : com.sun.org.apache.xml.internal.security.signature.Reference) : Void;
	
	/**
	* Constructor MissingResourceFailureException
	*
	* @param _msgID
	* @param _originalException
	* @param reference
	* @see #getReference
	*/
	@:overload @:public public function new(_msgID : String, _originalException : java.lang.Exception, reference : com.sun.org.apache.xml.internal.security.signature.Reference) : Void;
	
	/**
	* Constructor MissingResourceFailureException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	* @param reference
	* @see #getReference
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception, reference : com.sun.org.apache.xml.internal.security.signature.Reference) : Void;
	
	/**
	* used to set the uninitialized {@link com.sun.org.apache.xml.internal.security.signature.Reference}
	*
	* @param reference the Reference object
	* @see #getReference
	*/
	@:overload @:public public function setReference(reference : com.sun.org.apache.xml.internal.security.signature.Reference) : Void;
	
	/**
	* used to get the uninitialized {@link com.sun.org.apache.xml.internal.security.signature.Reference}
	*
	* This allows to supply the correct {@link com.sun.org.apache.xml.internal.security.signature.XMLSignatureInput}
	* to the {@link com.sun.org.apache.xml.internal.security.signature.Reference} to try again verification.
	*
	* @return the Reference object
	* @see #setReference
	*/
	@:overload @:public public function getReference() : com.sun.org.apache.xml.internal.security.signature.Reference;
	
	
}
