package com.sun.org.apache.xml.internal.res;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2004 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*     http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
/*
* $Id: XMLMessages.java,v 1.2.4.1 2005/09/15 07:45:48 suresh_emailid Exp $
*/
extern class XMLMessages
{
	/** The local object to use.  */
	private var fLocale : java.util.Locale;
	
	/** String to use if a bad message code is used. */
	private static var BAD_CODE(default, null) : String;
	
	/** String to use if the message format operation failed.  */
	private static var FORMAT_FAILED(default, null) : String;
	
	/**
	* Set the Locale object to use.
	*
	* @param locale non-null reference to Locale object.
	*/
	@:overload public function setLocale(locale : java.util.Locale) : Void;
	
	/**
	* Get the Locale object that is being used.
	*
	* @return non-null reference to Locale object.
	*/
	@:overload public function getLocale() : java.util.Locale;
	
	/**
	* Creates a message from the specified key and replacement
	* arguments, localized to the given locale.
	*
	* @param msgKey    The key for the message text.
	* @param args      The arguments to be used as replacement text
	*                  in the message created.
	*
	* @return The formatted message string.
	*/
	@:overload @:final public static function createXMLMessage(msgKey : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Creates a message from the specified key and replacement
	* arguments, localized to the given locale.
	*
	* @param fResourceBundle The resource bundle to use.
	* @param msgKey  The message key to use.
	* @param args      The arguments to be used as replacement text
	*                  in the message created.
	*
	* @return The formatted message string.
	*/
	@:overload @:final public static function createMsg(fResourceBundle : java.util.ListResourceBundle, msgKey : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Return a named ResourceBundle for a particular locale.  This method mimics the behavior
	* of ResourceBundle.getBundle().
	*
	* @param className The class name of the resource bundle.
	* @return the ResourceBundle
	* @throws MissingResourceException
	*/
	@:overload public static function loadResourceBundle(className : String) : java.util.ListResourceBundle;
	
	/**
	* Return the resource file suffic for the indicated locale
	* For most locales, this will be based the language code.  However
	* for Chinese, we do distinguish between Taiwan and PRC
	*
	* @param locale the locale
	* @return an String suffix which can be appended to a resource name
	*/
	@:overload private static function getResourceSuffix(locale : java.util.Locale) : String;
	
	
}
