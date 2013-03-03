package com.sun.org.apache.xerces.internal.dom;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2002,2004 The Apache Software Foundation.
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
extern class DOMMessageFormatter
{
	/**
	* Used to format DOM error messages, using the system locale.
	*
	* @xerces.internal
	*
	* @author Sandy Gao, IBM
	*/
	@:public @:static @:final public static var DOM_DOMAIN(default, null) : String;
	
	@:public @:static @:final public static var XML_DOMAIN(default, null) : String;
	
	@:public @:static @:final public static var SERIALIZER_DOMAIN(default, null) : String;
	
	/**
	* Formats a message with the specified arguments using the given
	* locale information.
	*
	* @param domain    domain from which error string is to come.
	* @param key       The message key.
	* @param arguments The message replacement text arguments. The order
	*                  of the arguments must match that of the placeholders
	*                  in the actual message.
	*
	* @return          the formatted message.
	*
	* @throws MissingResourceException Thrown if the message with the
	*                                  specified key cannot be found.
	*/
	@:overload @:public @:static public static function formatMessage(domain : String, key : String, arguments : java.NativeArray<Dynamic>) : String;
	
	/**
	* Initialize Message Formatter.
	*/
	@:overload @:public @:static public static function init() : Void;
	
	/**
	* setLocale to be used by the formatter.
	* @param locale
	*/
	@:overload @:public @:static public static function setLocale(dlocale : java.util.Locale) : Void;
	
	
}
