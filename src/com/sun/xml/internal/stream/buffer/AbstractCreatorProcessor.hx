package com.sun.xml.internal.stream.buffer;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
*/
extern class AbstractCreatorProcessor
{
	/**
	* Flag on a T_DOCUMENT to indicate if a fragment
	*/
	@:protected @:static @:final private static var FLAG_DOCUMENT_FRAGMENT(default, null) : Int;
	
	/*
	* Flags on T_ELEMENT, T_ATTRIBUTE, T_NAMESPACE_ATTRIBUTE
	* to indicate namespace information is represent
	*/
	@:protected @:static @:final private static var FLAG_PREFIX(default, null) : Int;
	
	@:protected @:static @:final private static var FLAG_URI(default, null) : Int;
	
	@:protected @:static @:final private static var FLAG_QUALIFIED_NAME(default, null) : Int;
	
	/*
	* Types of content for T_TEXT and T_COMMENT
	* <p>
	* Highest 2 bits of lower nibble are used.
	*/
	@:protected @:static @:final private static var CONTENT_TYPE_CHAR_ARRAY(default, null) : Int;
	
	@:protected @:static @:final private static var CONTENT_TYPE_CHAR_ARRAY_COPY(default, null) : Int;
	
	@:protected @:static @:final private static var CONTENT_TYPE_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var CONTENT_TYPE_OBJECT(default, null) : Int;
	
	/*
	* Size of the length of character content for CONTENT_TYPE_CHAR_ARRAY
	* <p>
	* Last bit of lower nibble is used.
	*/
	@:protected @:static @:final private static var CHAR_ARRAY_LENGTH_SMALL(default, null) : Int;
	
	@:protected @:static @:final private static var CHAR_ARRAY_LENGTH_MEDIUM(default, null) : Int;
	
	@:protected @:static @:final private static var CHAR_ARRAY_LENGTH_SMALL_SIZE(default, null) : Int;
	
	@:protected @:static @:final private static var CHAR_ARRAY_LENGTH_MEDIUM_SIZE(default, null) : Int;
	
	/*
	* Types of value for T_ATTRIBUTE
	* <p>
	* Highest bit of lower nibble is used.
	*/
	@:protected @:static @:final private static var VALUE_TYPE_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var VALUE_TYPE_OBJECT(default, null) : Int;
	
	/*
	* Mask for types.
	* <p>
	* Highest nibble is used.
	*/
	@:protected @:static @:final private static var TYPE_MASK(default, null) : Int;
	
	@:protected @:static @:final private static var T_DOCUMENT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ELEMENT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE(default, null) : Int;
	
	@:protected @:static @:final private static var T_NAMESPACE_ATTRIBUTE(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT(default, null) : Int;
	
	@:protected @:static @:final private static var T_PROCESSING_INSTRUCTION(default, null) : Int;
	
	@:protected @:static @:final private static var T_UNEXPANDED_ENTITY_REFERENCE(default, null) : Int;
	
	@:protected @:static @:final private static var T_END(default, null) : Int;
	
	/*
	* Composed types.
	* <p>
	* One octet is used.
	*/
	@:protected @:static @:final private static var T_DOCUMENT_FRAGMENT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ELEMENT_U_LN_QN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ELEMENT_P_U_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ELEMENT_U_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ELEMENT_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_NAMESPACE_ATTRIBUTE_P(default, null) : Int;
	
	@:protected @:static @:final private static var T_NAMESPACE_ATTRIBUTE_P_U(default, null) : Int;
	
	@:protected @:static @:final private static var T_NAMESPACE_ATTRIBUTE_U(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_U_LN_QN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_P_U_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_U_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_LN(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_U_LN_QN_OBJECT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_P_U_LN_OBJECT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_U_LN_OBJECT(default, null) : Int;
	
	@:protected @:static @:final private static var T_ATTRIBUTE_LN_OBJECT(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_CHAR_ARRAY(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_CHAR_ARRAY_SMALL(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_CHAR_ARRAY_MEDIUM(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_CHAR_ARRAY_COPY(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var T_TEXT_AS_OBJECT(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT_AS_CHAR_ARRAY(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT_AS_CHAR_ARRAY_SMALL(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT_AS_CHAR_ARRAY_MEDIUM(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT_AS_CHAR_ARRAY_COPY(default, null) : Int;
	
	@:protected @:static @:final private static var T_COMMENT_AS_STRING(default, null) : Int;
	
	@:protected @:static @:final private static var T_END_OF_BUFFER(default, null) : Int;
	
	@:protected private var _currentStructureFragment : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Int8>>;
	
	@:protected private var _structure : java.NativeArray<java.StdTypes.Int8>;
	
	@:protected private var _structurePtr : Int;
	
	@:protected private var _currentStructureStringFragment : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<String>>;
	
	@:protected private var _structureStrings : java.NativeArray<String>;
	
	@:protected private var _structureStringsPtr : Int;
	
	@:protected private var _currentContentCharactersBufferFragment : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<java.StdTypes.Char16>>;
	
	@:protected private var _contentCharactersBuffer : java.NativeArray<java.StdTypes.Char16>;
	
	@:protected private var _contentCharactersBufferPtr : Int;
	
	@:protected private var _currentContentObjectFragment : com.sun.xml.internal.stream.buffer.FragmentedArray<java.NativeArray<Dynamic>>;
	
	@:protected private var _contentObjects : java.NativeArray<Dynamic>;
	
	@:protected private var _contentObjectsPtr : Int;
	
	
}
