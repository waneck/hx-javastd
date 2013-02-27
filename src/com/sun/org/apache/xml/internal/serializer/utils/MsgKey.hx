package com.sun.org.apache.xml.internal.serializer.utils;
/*
* reserved comment block
* DO NOT REMOVE OR ALTER!
*/
/*
* Copyright 2004 The Apache Software Foundation.
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
* $Id: MsgKey.java,v 1.1.4.1 2005/09/08 11:03:11 suresh_emailid Exp $
*/
/**
* This class is not a public API,
* It is used internally by serializer and is public,
* in the Java sense, only because its use crosses
* package boundaries.
* <p>
* This class holds only the message keys used
* when generating messages.
*/
extern class MsgKey
{
	/** An internal error with the messages,
	* this is the message to use if the message key can't be found
	*/
	public static var BAD_MSGKEY(default, null) : String;
	
	/**
	* An internal error with the messages,
	* this is the message to use if the message format operation failed.
	*/
	public static var BAD_MSGFORMAT(default, null) : String;
	
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
	
	public static var ER_INVALID_PORT(default, null) : String;
	
	public static var ER_PORT_WHEN_HOST_NULL(default, null) : String;
	
	public static var ER_HOST_ADDRESS_NOT_WELLFORMED(default, null) : String;
	
	public static var ER_SCHEME_NOT_CONFORMANT(default, null) : String;
	
	public static var ER_SCHEME_FROM_NULL_STRING(default, null) : String;
	
	public static var ER_PATH_CONTAINS_INVALID_ESCAPE_SEQUENCE(default, null) : String;
	
	public static var ER_PATH_INVALID_CHAR(default, null) : String;
	
	public static var ER_NO_SCHEME_INURI(default, null) : String;
	
	public static var ER_FRAG_INVALID_CHAR(default, null) : String;
	
	public static var ER_FRAG_WHEN_PATH_NULL(default, null) : String;
	
	public static var ER_FRAG_FOR_GENERIC_URI(default, null) : String;
	
	public static var ER_NO_SCHEME_IN_URI(default, null) : String;
	
	public static var ER_CANNOT_INIT_URI_EMPTY_PARMS(default, null) : String;
	
	public static var ER_NO_FRAGMENT_STRING_IN_PATH(default, null) : String;
	
	public static var ER_NO_QUERY_STRING_IN_PATH(default, null) : String;
	
	public static var ER_NO_PORT_IF_NO_HOST(default, null) : String;
	
	public static var ER_NO_USERINFO_IF_NO_HOST(default, null) : String;
	
	public static var ER_SCHEME_REQUIRED(default, null) : String;
	
	public static var ER_XML_VERSION_NOT_SUPPORTED(default, null) : String;
	
	public static var ER_FACTORY_PROPERTY_MISSING(default, null) : String;
	
	public static var ER_ENCODING_NOT_SUPPORTED(default, null) : String;
	
	
}
