package com.sun.org.apache.xml.internal.security.utils;
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
extern class I18n
{
	/** Field NOT_INITIALIZED_MSG */
	public static var NOT_INITIALIZED_MSG(default, null) : String;
	
	/**
	* Method translate
	*
	* translates a message ID into an internationalized String, see alse
	* <CODE>XMLSecurityException.getExceptionMEssage()</CODE>. The strings are
	* stored in the <CODE>ResourceBundle</CODE>, which is identified in
	* <CODE>exceptionMessagesResourceBundleBase</CODE>
	*
	* @param message
	* @param args is an <CODE>Object[]</CODE> array of strings which are inserted into the String which is retrieved from the <CODE>ResouceBundle</CODE>
	* @return message translated
	*/
	@:overload public static function translate(message : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Method translate
	*
	* translates a message ID into an internationalized String, see alse
	* <CODE>XMLSecurityException.getExceptionMEssage()</CODE>
	*
	* @param message
	* @return message translated
	*/
	@:overload public static function translate(message : String) : String;
	
	/**
	* Method getExceptionMessage
	*
	* @param msgID
	* @return message translated
	*
	*/
	@:overload public static function getExceptionMessage(msgID : String) : String;
	
	/**
	* Method getExceptionMessage
	*
	* @param msgID
	* @param originalException
	* @return message translated
	*/
	@:overload public static function getExceptionMessage(msgID : String, originalException : java.lang.Exception) : String;
	
	/**
	* Method getExceptionMessage
	*
	* @param msgID
	* @param exArgs
	* @return message translated
	*/
	@:overload public static function getExceptionMessage(msgID : String, exArgs : java.NativeArray<Dynamic>) : String;
	
	
}
