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
extern class InvalidTransformException extends com.sun.org.apache.xml.internal.security.exceptions.XMLSecurityException
{
	/**
	* Constructor InvalidTransformException
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor InvalidTransformException
	*
	* @param _msgId
	*/
	@:overload @:public public function new(_msgId : String) : Void;
	
	/**
	* Constructor InvalidTransformException
	*
	* @param _msgId
	* @param exArgs
	*/
	@:overload @:public public function new(_msgId : String, exArgs : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor InvalidTransformException
	*
	* @param _msgId
	* @param _originalException
	*/
	@:overload @:public public function new(_msgId : String, _originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor InvalidTransformException
	*
	* @param _msgId
	* @param exArgs
	* @param _originalException
	*/
	@:overload @:public public function new(_msgId : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception) : Void;
	
	
}
