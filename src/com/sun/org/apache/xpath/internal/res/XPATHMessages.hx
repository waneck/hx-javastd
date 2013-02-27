package com.sun.org.apache.xpath.internal.res;
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
* $Id: XPATHMessages.java,v 1.2.4.1 2005/09/01 14:57:34 pvedula Exp $
*/
extern class XPATHMessages extends com.sun.org.apache.xml.internal.res.XMLMessages
{
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
	@:overload @:final public static function createXPATHMessage(msgKey : String, args : java.NativeArray<Dynamic>) : String;
	
	/**
	* Creates a message from the specified key and replacement
	* arguments, localized to the given locale.
	*
	* @param msgKey The key for the message text.
	* @param args      The arguments to be used as replacement text
	*                  in the message created.
	*
	* @return The formatted warning string.
	*/
	@:overload @:final public static function createXPATHWarning(msgKey : String, args : java.NativeArray<Dynamic>) : String;
	
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
	@:overload @:final public static function createXPATHMsg(fResourceBundle : java.util.ListResourceBundle, msgKey : String, args : java.NativeArray<Dynamic>) : String;
	
	
}
