package com.sun.org.apache.xml.internal.utils.res;
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
* $Id: XResourceBundle.java,v 1.2.4.1 2005/09/15 08:16:04 suresh_emailid Exp $
*/
extern class XResourceBundle extends java.util.ListResourceBundle
{
	/** Error resource constants */
	@:public @:static @:final public static var ERROR_RESOURCES(default, null) : String;
	
	/**
	* Return a named ResourceBundle for a particular locale.  This method mimics the behavior
	* of ResourceBundle.getBundle().
	*
	* @param className Name of local-specific subclass.
	* @param locale the locale to prefer when searching for the bundle
	*/
	@:overload @:public @:static @:final public static function loadResourceBundle(className : String, locale : java.util.Locale) : com.sun.org.apache.xml.internal.utils.res.XResourceBundle;
	
	/**
	* Get the association list.
	*
	* @return The association list.
	*/
	@:overload @:public override public function getContents() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	
}
