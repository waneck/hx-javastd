package com.sun.xml.internal.fastinfoset;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
* DO NOT ALTER OR REMOVE COPYRIGHT NOTICES OR THIS FILE HEADER.
*
* This code is free software; you can redistribute it and/or modify it
* under the terms of the GNU General Public License version 2 only, as
* published by the Free Software Foundation.  Oracle designates this
* particular file as subject to the "Classpath" exception as provided
* by Oracle in the LICENSE file that accompanied this code.
*
* This code is distributed in the hope that it will be useful, but WITHOUT
* ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
* FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
* version 2 for more details (a copy is included in the LICENSE file that
* accompanied this code).
*
* You should have received a copy of the GNU General Public License version
* 2 along with this work; if not, write to the Free Software Foundation,
* Inc., 51 Franklin St, Fifth Floor, Boston, MA 02110-1301 USA.
*
* Please contact Oracle, 500 Oracle Parkway, Redwood Shores, CA 94065 USA
* or visit www.oracle.com if you need additional information or have any
* questions.
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class EncodingConstants
{
	public static var XML_NAMESPACE_PREFIX(default, null) : String;
	
	public static var XML_NAMESPACE_PREFIX_LENGTH(default, null) : Int;
	
	public static var XML_NAMESPACE_NAME(default, null) : String;
	
	public static var XML_NAMESPACE_NAME_LENGTH(default, null) : Int;
	
	public static var XMLNS_NAMESPACE_PREFIX(default, null) : String;
	
	public static var XMLNS_NAMESPACE_PREFIX_LENGTH(default, null) : Int;
	
	public static var XMLNS_NAMESPACE_NAME(default, null) : String;
	
	public static var XMLNS_NAMESPACE_NAME_LENGTH(default, null) : Int;
	
	public static var DEFAULT_NAMESPACE_DECLARATION(default, null) : com.sun.xml.internal.fastinfoset.QualifiedName;
	
	public static var DOCUMENT_ADDITIONAL_DATA_FLAG(default, null) : Int;
	
	public static var DOCUMENT_INITIAL_VOCABULARY_FLAG(default, null) : Int;
	
	public static var DOCUMENT_NOTATIONS_FLAG(default, null) : Int;
	
	public static var DOCUMENT_UNPARSED_ENTITIES_FLAG(default, null) : Int;
	
	public static var DOCUMENT_CHARACTER_ENCODING_SCHEME(default, null) : Int;
	
	public static var DOCUMENT_STANDALONE_FLAG(default, null) : Int;
	
	public static var DOCUMENT_VERSION_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_EXTERNAL_VOCABULARY_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_RESTRICTED_ALPHABETS_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_ENCODING_ALGORITHMS_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_PREFIXES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_NAMESPACE_NAMES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_LOCAL_NAMES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_OTHER_NCNAMES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_OTHER_URIS_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_ATTRIBUTE_VALUES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_CONTENT_CHARACTER_CHUNKS_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_OTHER_STRINGS_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_ELEMENT_NAME_SURROGATES_FLAG(default, null) : Int;
	
	public static var INITIAL_VOCABULARY_ATTRIBUTE_NAME_SURROGATES_FLAG(default, null) : Int;
	
	public static var NAME_SURROGATE_PREFIX_FLAG(default, null) : Int;
	
	public static var NAME_SURROGATE_NAME_FLAG(default, null) : Int;
	
	public static var NOTATIONS(default, null) : Int;
	
	public static var NOTATIONS_MASK(default, null) : Int;
	
	public static var NOTATIONS_SYSTEM_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var NOTATIONS_PUBLIC_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var UNPARSED_ENTITIES(default, null) : Int;
	
	public static var UNPARSED_ENTITIES_MASK(default, null) : Int;
	
	public static var UNPARSED_ENTITIES_PUBLIC_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var PROCESSING_INSTRUCTION(default, null) : Int;
	
	public static var PROCESSING_INSTRUCTION_MASK(default, null) : Int;
	
	public static var COMMENT(default, null) : Int;
	
	public static var COMMENT_MASK(default, null) : Int;
	
	public static var DOCUMENT_TYPE_DECLARATION(default, null) : Int;
	
	public static var DOCUMENT_TYPE_DECLARATION_MASK(default, null) : Int;
	
	public static var DOCUMENT_TYPE_SYSTEM_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var DOCUMENT_TYPE_PUBLIC_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var ELEMENT(default, null) : Int;
	
	public static var ELEMENT_ATTRIBUTE_FLAG(default, null) : Int;
	
	public static var ELEMENT_NAMESPACES_FLAG(default, null) : Int;
	
	public static var ELEMENT_LITERAL_QNAME_FLAG(default, null) : Int;
	
	public static var NAMESPACE_ATTRIBUTE(default, null) : Int;
	
	public static var NAMESPACE_ATTRIBUTE_MASK(default, null) : Int;
	
	public static var NAMESPACE_ATTRIBUTE_PREFIX_NAME_MASK(default, null) : Int;
	
	public static var NAMESPACE_ATTRIBUTE_PREFIX_FLAG(default, null) : Int;
	
	public static var NAMESPACE_ATTRIBUTE_NAME_FLAG(default, null) : Int;
	
	public static var ATTRIBUTE_LITERAL_QNAME_FLAG(default, null) : Int;
	
	public static var LITERAL_QNAME_PREFIX_NAMESPACE_NAME_MASK(default, null) : Int;
	
	public static var LITERAL_QNAME_PREFIX_FLAG(default, null) : Int;
	
	public static var LITERAL_QNAME_NAMESPACE_NAME_FLAG(default, null) : Int;
	
	public static var CHARACTER_CHUNK(default, null) : Int;
	
	public static var CHARACTER_CHUNK_ADD_TO_TABLE_FLAG(default, null) : Int;
	
	public static var CHARACTER_CHUNK_UTF_8_FLAG(default, null) : Int;
	
	public static var CHARACTER_CHUNK_UTF_16_FLAG(default, null) : Int;
	
	public static var CHARACTER_CHUNK_RESTRICTED_ALPHABET_FLAG(default, null) : Int;
	
	public static var CHARACTER_CHUNK_ENCODING_ALGORITHM_FLAG(default, null) : Int;
	
	public static var UNEXPANDED_ENTITY_REFERENCE(default, null) : Int;
	
	public static var UNEXPANDED_ENTITY_REFERENCE_MASK(default, null) : Int;
	
	public static var UNEXPANDED_ENTITY_SYSTEM_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var UNEXPANDED_ENTITY_PUBLIC_IDENTIFIER_FLAG(default, null) : Int;
	
	public static var NISTRING_ADD_TO_TABLE_FLAG(default, null) : Int;
	
	public static var NISTRING_UTF_8_FLAG(default, null) : Int;
	
	public static var NISTRING_UTF_16_FLAG(default, null) : Int;
	
	public static var NISTRING_RESTRICTED_ALPHABET_FLAG(default, null) : Int;
	
	public static var NISTRING_ENCODING_ALGORITHM_FLAG(default, null) : Int;
	
	public static var TERMINATOR(default, null) : Int;
	
	public static var DOUBLE_TERMINATOR(default, null) : Int;
	
	public static var ENCODING_ALGORITHM_BUILTIN_END(default, null) : Int;
	
	public static var ENCODING_ALGORITHM_APPLICATION_START(default, null) : Int;
	
	public static var ENCODING_ALGORITHM_APPLICATION_MAX(default, null) : Int;
	
	public static var RESTRICTED_ALPHABET_BUILTIN_END(default, null) : Int;
	
	public static var RESTRICTED_ALPHABET_APPLICATION_START(default, null) : Int;
	
	public static var RESTRICTED_ALPHABET_APPLICATION_MAX(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_SMALL_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_MEDIUM_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_MEDIUM_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_LARGE_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_MAXIMUM_LENGTH(default, null) : haxe.Int64;
	
	/*
	* C.22
	*/
	public static var OCTET_STRING_LENGTH_2ND_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_2ND_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_2ND_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_2ND_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_2ND_BIT_SMALL_MASK(default, null) : Int;
	
	/*
	* C.23
	*/
	public static var OCTET_STRING_LENGTH_5TH_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_5TH_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_5TH_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_5TH_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_5TH_BIT_SMALL_MASK(default, null) : Int;
	
	/*
	* C.24
	*/
	public static var OCTET_STRING_LENGTH_7TH_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_7TH_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_7TH_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_7TH_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var OCTET_STRING_LENGTH_7TH_BIT_SMALL_MASK(default, null) : Int;
	
	public static var INTEGER_SMALL_LIMIT(default, null) : Int;
	
	public static var INTEGER_MEDIUM_LIMIT(default, null) : Int;
	
	public static var INTEGER_LARGE_LIMIT(default, null) : Int;
	
	public static var INTEGER_MEDIUM_FLAG(default, null) : Int;
	
	public static var INTEGER_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_LARGE_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_MAXIMUM_SIZE(default, null) : Int;
	
	/*
	* C.25
	*/
	public static var INTEGER_2ND_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_LARGE_LIMIT(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_SMALL_MASK(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_MEDIUM_MASK(default, null) : Int;
	
	public static var INTEGER_2ND_BIT_LARGE_MASK(default, null) : Int;
	
	/*
	* C.27
	*/
	public static var INTEGER_3RD_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_LARGE_LIMIT(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_LARGE_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_SMALL_MASK(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_MEDIUM_MASK(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_LARGE_MASK(default, null) : Int;
	
	public static var INTEGER_3RD_BIT_LARGE_LARGE_MASK(default, null) : Int;
	
	/*
	* C.28
	*/
	public static var INTEGER_4TH_BIT_SMALL_LIMIT(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_MEDIUM_LIMIT(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_LARGE_LIMIT(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_MEDIUM_FLAG(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_LARGE_LARGE_FLAG(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_SMALL_MASK(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_MEDIUM_MASK(default, null) : Int;
	
	public static var INTEGER_4TH_BIT_LARGE_MASK(default, null) : Int;
	
	
}
