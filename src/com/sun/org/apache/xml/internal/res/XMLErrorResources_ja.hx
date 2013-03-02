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
* $Id: XMLErrorResources_ja.java,v 1.2.4.1 2005/09/15 07:45:42 suresh_emailid Exp $
*/
extern class XMLErrorResources_ja extends java.util.ListResourceBundle
{
	/** Maximum error messages, this is needed to keep track of the number of messages.    */
	public static var MAX_CODE(default, null) : Int;
	
	/** Maximum warnings, this is needed to keep track of the number of warnings.          */
	public static var MAX_WARNING(default, null) : Int;
	
	/** Maximum misc strings.   */
	public static var MAX_OTHERS(default, null) : Int;
	
	/** Maximum total warnings and error messages.          */
	public static var MAX_MESSAGES(default, null) : Int;
	
	/*
	* Message keys
	*/
	public static var ER_FUNCTION_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_CANNOT_OVERWRITE_CAUSE(default, null) : String;
	
	public static var ER_NO_DEFAULT_IMPL(default, null) : String;
	
	public static var ER_CHUNKEDINTARRAY_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_OFFSET_BIGGER_THAN_SLOT(default, null) : String;
	
	public static var ER_COROUTINE_NOT_AVAIL(default, null) : String;
	
	public static var ER_COROUTINE_CO_EXIT(default, null) : String;
	
	public static var ER_COJOINROUTINESET_FAILED(default, null) : String;
	
	public static var ER_COROUTINE_PARAM(default, null) : String;
	
	public static var ER_PARSER_DOTERMINATE_ANSWERS(default, null) : String;
	
	public static var ER_NO_PARSE_CALL_WHILE_PARSING(default, null) : String;
	
	public static var ER_TYPED_ITERATOR_AXIS_NOT_IMPLEMENTED(default, null) : String;
	
	public static var ER_ITERATOR_AXIS_NOT_IMPLEMENTED(default, null) : String;
	
	public static var ER_ITERATOR_CLONE_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_UNKNOWN_AXIS_TYPE(default, null) : String;
	
	public static var ER_AXIS_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_NO_DTMIDS_AVAIL(default, null) : String;
	
	public static var ER_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_NODE_NON_NULL(default, null) : String;
	
	public static var ER_COULD_NOT_RESOLVE_NODE(default, null) : String;
	
	public static var ER_STARTPARSE_WHILE_PARSING(default, null) : String;
	
	public static var ER_STARTPARSE_NEEDS_SAXPARSER(default, null) : String;
	
	public static var ER_COULD_NOT_INIT_PARSER(default, null) : String;
	
	public static var ER_EXCEPTION_CREATING_POOL(default, null) : String;
	
	public static var ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE(default, null) : String;
	
	public static var ER_SCHEME_REQUIRED(default, null) : String;
	
	public static var ER_NO_SCHEME_IN_URI(default, null) : String;
	
	public static var ER_NO_SCHEME_INURI(default, null) : String;
	
	public static var ER_PATH_INVALID_CHAR(default, null) : String;
	
	public static var ER_SCHEME_FROM_NULL_STRING(default, null) : String;
	
	public static var ER_SCHEME_NOT_CONFORMANT(default, null) : String;
	
	public static var ER_HOST_ADDRESS_NOT_WELLFORMED(default, null) : String;
	
	public static var ER_PORT_WHEN_HOST_NULL(default, null) : String;
	
	public static var ER_INVALID_PORT(default, null) : String;
	
	public static var ER_FRAG_FOR_GENERIC_URI(default, null) : String;
	
	public static var ER_FRAG_WHEN_PATH_NULL(default, null) : String;
	
	public static var ER_FRAG_INVALID_CHAR(default, null) : String;
	
	public static var ER_PARSER_IN_USE(default, null) : String;
	
	public static var ER_CANNOT_CHANGE_WHILE_PARSING(default, null) : String;
	
	public static var ER_SELF_CAUSATION_NOT_PERMITTED(default, null) : String;
	
	public static var ER_NO_USERINFO_IF_NO_HOST(default, null) : String;
	
	public static var ER_NO_PORT_IF_NO_HOST(default, null) : String;
	
	public static var ER_NO_QUERY_STRING_IN_PATH(default, null) : String;
	
	public static var ER_NO_FRAGMENT_STRING_IN_PATH(default, null) : String;
	
	public static var ER_CANNOT_INIT_URI_EMPTY_PARMS(default, null) : String;
	
	public static var ER_METHOD_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_INCRSAXSRCFILTER_NOT_RESTARTABLE(default, null) : String;
	
	public static var ER_XMLRDR_NOT_BEFORE_STARTPARSE(default, null) : String;
	
	public static var ER_AXIS_TRAVERSER_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_ERRORHANDLER_CREATED_WITH_NULL_PRINTWRITER(default, null) : String;
	
	public static var ER_SYSTEMID_UNKNOWN(default, null) : String;
	
	public static var ER_LOCATION_UNKNOWN(default, null) : String;
	
	public static var ER_PREFIX_MUST_RESOLVE(default, null) : String;
	
	public static var ER_CREATEDOCUMENT_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_CHILD_HAS_NO_OWNER_DOCUMENT(default, null) : String;
	
	public static var ER_CHILD_HAS_NO_OWNER_DOCUMENT_ELEMENT(default, null) : String;
	
	public static var ER_CANT_OUTPUT_TEXT_BEFORE_DOC(default, null) : String;
	
	public static var ER_CANT_HAVE_MORE_THAN_ONE_ROOT(default, null) : String;
	
	public static var ER_ARG_LOCALNAME_NULL(default, null) : String;
	
	public static var ER_ARG_LOCALNAME_INVALID(default, null) : String;
	
	public static var ER_ARG_PREFIX_INVALID(default, null) : String;
	
	public static var ER_NAME_CANT_START_WITH_COLON(default, null) : String;
	
	public static var ER_RESOURCE_COULD_NOT_FIND(default, null) : String;
	
	public static var ER_RESOURCE_COULD_NOT_LOAD(default, null) : String;
	
	public static var ER_BUFFER_SIZE_LESSTHAN_ZERO(default, null) : String;
	
	public static var ER_INVALID_UTF16_SURROGATE(default, null) : String;
	
	public static var ER_OIERROR(default, null) : String;
	
	public static var ER_NAMESPACE_PREFIX(default, null) : String;
	
	public static var ER_STRAY_ATTRIBUTE(default, null) : String;
	
	public static var ER_STRAY_NAMESPACE(default, null) : String;
	
	public static var ER_COULD_NOT_LOAD_RESOURCE(default, null) : String;
	
	public static var ER_COULD_NOT_LOAD_METHOD_PROPERTY(default, null) : String;
	
	public static var ER_SERIALIZER_NOT_CONTENTHANDLER(default, null) : String;
	
	public static var ER_ILLEGAL_ATTRIBUTE_POSITION(default, null) : String;
	
	public static var ER_ILLEGAL_CHARACTER(default, null) : String;
	
	/**
	* Get the association list.
	*
	* @return The association list.
	*/
	@:overload private function getContents() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	/**
	*   Return a named ResourceBundle for a particular locale.  This method mimics the behavior
	*   of ResourceBundle.getBundle().
	*
	*   @param className the name of the class that implements the resource bundle.
	*   @return the ResourceBundle
	*   @throws MissingResourceException
	*/
	@:overload @:final public static function loadResourceBundle(className : String) : com.sun.org.apache.xml.internal.res.XMLErrorResources;
	
	
}
