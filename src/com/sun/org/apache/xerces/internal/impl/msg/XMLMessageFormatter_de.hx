package com.sun.org.apache.xerces.internal.impl.msg;
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
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XMLMessageFormatter_de implements com.sun.org.apache.xerces.internal.util.MessageFormatter
{
	/**
	* The domain of messages concerning the XML 1.0 specification.
	*/
	public static var XML_DOMAIN(default, null) : String;
	
	public static var XMLNS_DOMAIN(default, null) : String;
	
	/**
	* Formats a message with the specified arguments using the given
	* locale information.
	*
	* @param locale    The locale of the message.
	* @param key       The message key.
	* @param arguments The message replacement text arguments. The order
	*                  of the arguments must match that of the placeholders
	*                  in the actual message.
	*
	* @return Returns the formatted message.
	*
	* @throws MissingResourceException Thrown if the message with the
	*                                  specified key cannot be found.
	*/
	@:overload public function formatMessage(locale : java.util.Locale, key : String, arguments : java.NativeArray<Dynamic>) : String;
	
	
}
