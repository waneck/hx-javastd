package com.sun.org.apache.xpath.internal.compiler;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 1999-2005 The Apache Software Foundation.
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
* $Id: FunctionTable.java,v 1.3 2005/09/28 13:49:34 pvedula Exp $
*/
extern class FunctionTable
{
	/** The 'current()' id. */
	public static var FUNC_CURRENT(default, null) : Int;
	
	/** The 'last()' id. */
	public static var FUNC_LAST(default, null) : Int;
	
	/** The 'position()' id. */
	public static var FUNC_POSITION(default, null) : Int;
	
	/** The 'count()' id. */
	public static var FUNC_COUNT(default, null) : Int;
	
	/** The 'id()' id. */
	public static var FUNC_ID(default, null) : Int;
	
	/** The 'key()' id (XSLT). */
	public static var FUNC_KEY(default, null) : Int;
	
	/** The 'local-name()' id. */
	public static var FUNC_LOCAL_PART(default, null) : Int;
	
	/** The 'namespace-uri()' id. */
	public static var FUNC_NAMESPACE(default, null) : Int;
	
	/** The 'name()' id. */
	public static var FUNC_QNAME(default, null) : Int;
	
	/** The 'generate-id()' id. */
	public static var FUNC_GENERATE_ID(default, null) : Int;
	
	/** The 'not()' id. */
	public static var FUNC_NOT(default, null) : Int;
	
	/** The 'true()' id. */
	public static var FUNC_TRUE(default, null) : Int;
	
	/** The 'false()' id. */
	public static var FUNC_FALSE(default, null) : Int;
	
	/** The 'boolean()' id. */
	public static var FUNC_BOOLEAN(default, null) : Int;
	
	/** The 'number()' id. */
	public static var FUNC_NUMBER(default, null) : Int;
	
	/** The 'floor()' id. */
	public static var FUNC_FLOOR(default, null) : Int;
	
	/** The 'ceiling()' id. */
	public static var FUNC_CEILING(default, null) : Int;
	
	/** The 'round()' id. */
	public static var FUNC_ROUND(default, null) : Int;
	
	/** The 'sum()' id. */
	public static var FUNC_SUM(default, null) : Int;
	
	/** The 'string()' id. */
	public static var FUNC_STRING(default, null) : Int;
	
	/** The 'starts-with()' id. */
	public static var FUNC_STARTS_WITH(default, null) : Int;
	
	/** The 'contains()' id. */
	public static var FUNC_CONTAINS(default, null) : Int;
	
	/** The 'substring-before()' id. */
	public static var FUNC_SUBSTRING_BEFORE(default, null) : Int;
	
	/** The 'substring-after()' id. */
	public static var FUNC_SUBSTRING_AFTER(default, null) : Int;
	
	/** The 'normalize-space()' id. */
	public static var FUNC_NORMALIZE_SPACE(default, null) : Int;
	
	/** The 'translate()' id. */
	public static var FUNC_TRANSLATE(default, null) : Int;
	
	/** The 'concat()' id. */
	public static var FUNC_CONCAT(default, null) : Int;
	
	/** The 'substring()' id. */
	public static var FUNC_SUBSTRING(default, null) : Int;
	
	/** The 'string-length()' id. */
	public static var FUNC_STRING_LENGTH(default, null) : Int;
	
	/** The 'system-property()' id. */
	public static var FUNC_SYSTEM_PROPERTY(default, null) : Int;
	
	/** The 'lang()' id. */
	public static var FUNC_LANG(default, null) : Int;
	
	/** The 'function-available()' id (XSLT). */
	public static var FUNC_EXT_FUNCTION_AVAILABLE(default, null) : Int;
	
	/** The 'element-available()' id (XSLT). */
	public static var FUNC_EXT_ELEM_AVAILABLE(default, null) : Int;
	
	/** The 'unparsed-entity-uri()' id (XSLT). */
	public static var FUNC_UNPARSED_ENTITY_URI(default, null) : Int;
	
	/** The 'document-location()' id (Proprietary). */
	public static var FUNC_DOCLOCATION(default, null) : Int;
	
	@:overload public function new() : Void;
	
	/**
	* Install a built-in function.
	* @param name The unqualified name of the function, must not be null
	* @param func A Implementation of an XPath Function object.
	* @return the position of the function in the internal index.
	*/
	@:overload public function installFunction(name : String, func : Class<Dynamic>) : Int;
	
	/**
	* Tell if a built-in, non-namespaced function is available.
	*
	* @param methName The local name of the function.
	*
	* @return True if the function can be executed.
	*/
	@:overload public function functionAvailable(methName : String) : Bool;
	
	
}
