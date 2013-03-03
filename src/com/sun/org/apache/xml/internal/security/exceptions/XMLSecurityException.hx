package com.sun.org.apache.xml.internal.security.exceptions;
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
extern class XMLSecurityException extends java.lang.Exception
{
	/** Field originalException */
	@:protected private var originalException : java.lang.Exception;
	
	/** Field msgID */
	@:protected private var msgID : String;
	
	/**
	* Constructor XMLSecurityException
	*
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Constructor XMLSecurityException
	*
	* @param _msgID
	*/
	@:overload @:public public function new(_msgID : String) : Void;
	
	/**
	* Constructor XMLSecurityException
	*
	* @param _msgID
	* @param exArgs
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>) : Void;
	
	/**
	* Constructor XMLSecurityException
	*
	* @param _originalException
	*/
	@:overload @:public public function new(_originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityException
	*
	* @param _msgID
	* @param _originalException
	*/
	@:overload @:public public function new(_msgID : String, _originalException : java.lang.Exception) : Void;
	
	/**
	* Constructor XMLSecurityException
	*
	* @param _msgID
	* @param exArgs
	* @param _originalException
	*/
	@:overload @:public public function new(_msgID : String, exArgs : java.NativeArray<Dynamic>, _originalException : java.lang.Exception) : Void;
	
	/**
	* Method getMsgID
	*
	* @return the messageId
	*/
	@:overload @:public public function getMsgID() : String;
	
	/** @inheritDoc */
	@:overload @:public override public function toString() : String;
	
	/**
	* Method printStackTrace
	*
	*/
	@:overload @:public override public function printStackTrace() : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printwriter
	*/
	@:overload @:public override public function printStackTrace(printwriter : java.io.PrintWriter) : Void;
	
	/**
	* Method printStackTrace
	*
	* @param printstream
	*/
	@:overload @:public override public function printStackTrace(printstream : java.io.PrintStream) : Void;
	
	/**
	* Method getOriginalException
	*
	* @return the original exception
	*/
	@:overload @:public public function getOriginalException() : java.lang.Exception;
	
	
}
