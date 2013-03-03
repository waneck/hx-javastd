package com.sun.org.apache.xml.internal.serializer;
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
* $Id: OutputPropertiesFactory.java,v 1.2.4.1 2005/09/15 08:15:21 suresh_emailid Exp $
*/
extern class OutputPropertiesFactory
{
	/**
	* This is not a public API.
	* This is the built-in extensions namespace,
	* reexpressed in {namespaceURI} syntax
	* suitable for prepending to a localname to produce a "universal
	* name".
	*/
	@:public @:static @:final public static var S_BUILTIN_EXTENSIONS_UNIVERSAL(default, null) : String;
	
	/**
	* The non-standard property key to use to set the
	* number of whitepaces to indent by, per indentation level,
	* if indent="yes".
	*/
	@:public @:static @:final public static var S_KEY_INDENT_AMOUNT(default, null) : String;
	
	/**
	* The non-standard property key to use to set the
	* number of whitepaces to indent by, per indentation level,
	* if indent="yes".
	*/
	@:public @:static @:final public static var S_KEY_LINE_SEPARATOR(default, null) : String;
	
	/** This non-standard property key is used to set the name of the fully qualified
	* Java class that implements the ContentHandler interface.
	* Fully qualified name of class with a default constructor that
	*  implements the ContentHandler interface, where the result tree events
	*  will be sent to.
	*/
	@:public @:static @:final public static var S_KEY_CONTENT_HANDLER(default, null) : String;
	
	/**
	* This non-standard property key is used to specify the name of the property file
	* that specifies character to entity reference mappings.
	*/
	@:public @:static @:final public static var S_KEY_ENTITIES(default, null) : String;
	
	/**
	* This non-standard property key is used to set a value of "yes" if the href values for HTML serialization should
	*  use %xx escaping. */
	@:public @:static @:final public static var S_USE_URL_ESCAPING(default, null) : String;
	
	/**
	* This non-standard property key is used to set a value of "yes" if the META tag should be omitted where it would
	*  otherwise be supplied.
	*/
	@:public @:static @:final public static var S_OMIT_META_TAG(default, null) : String;
	
	/**
	* The old built-in extension namespace, this is not a public API.
	*/
	@:public @:static @:final public static var S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL(default, null) : String;
	
	/**
	* This is not a public API, it is only public because it is used
	* by outside of this package,
	* it is the length of the old built-in extension namespace.
	*/
	@:public @:static @:final public static var S_BUILTIN_OLD_EXTENSIONS_UNIVERSAL_LEN(default, null) : Int;
	
	/**
	* <p>Is Standalone</p>
	*
	* <ul>
	*   <li>
	*     <code>yes</code> to indicate the output is intended to be used as standalone
	*   </li>
	*   <li>
	*     <code>no</code> has no effect.
	*   </li>
	* </ul>
	*/
	@:public @:static @:final public static var ORACLE_IS_STANDALONE(default, null) : String;
	
	/**
	* Creates an empty OutputProperties with the property key/value defaults specified by
	* a property file.  The method argument is used to construct a string of
	* the form output_[method].properties (for instance, output_html.properties).
	* The output_xml.properties file is always used as the base.
	*
	* <p>Anything other than 'text', 'xml', and 'html', will
	* use the output_xml.properties file.</p>
	*
	* @param   method non-null reference to method name.
	*
	* @return Properties object that holds the defaults for the given method.
	*/
	@:overload @:static @:public @:final public static function getDefaultMethodProperties(method : String) : java.util.Properties;
	
	
}
