package com.sun.java.util.jar.pack;
/*
* Copyright (c) 2001, 2011, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class Constants
{
	public static var JAVA_MAGIC(default, null) : Int;
	
	/*
	Java Class Version numbers history
	1.0 to 1.3.X 45,3
	1.4 to 1.4.X 46,0
	1.5 to 1.5.X 49,0
	1.6 to 1.5.x 50,0 NOTE Assumed for now
	*/
	public static var JAVA_MIN_CLASS_MAJOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA_MIN_CLASS_MINOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA5_MAX_CLASS_MAJOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA5_MAX_CLASS_MINOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA6_MAX_CLASS_MAJOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA6_MAX_CLASS_MINOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA7_MAX_CLASS_MAJOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA7_MAX_CLASS_MINOR_VERSION(default, null) : java.StdTypes.Int16;
	
	public static var JAVA_PACKAGE_MAGIC(default, null) : Int;
	
	public static var JAVA5_PACKAGE_MAJOR_VERSION(default, null) : Int;
	
	public static var JAVA5_PACKAGE_MINOR_VERSION(default, null) : Int;
	
	public static var JAVA6_PACKAGE_MAJOR_VERSION(default, null) : Int;
	
	public static var JAVA6_PACKAGE_MINOR_VERSION(default, null) : Int;
	
	public static var CONSTANT_POOL_INDEX_LIMIT(default, null) : Int;
	
	public static var CONSTANT_POOL_NARROW_LIMIT(default, null) : Int;
	
	public static var JAVA_SIGNATURE_CHARS(default, null) : String;
	
	public static var CONSTANT_Utf8(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_unused2(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Integer(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Float(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Long(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Double(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Class(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_String(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Fieldref(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Methodref(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_InterfaceMethodref(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_NameandType(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_None(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Signature(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Limit(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_All(default, null) : java.StdTypes.Int8;
	
	public static var CONSTANT_Literal(default, null) : java.StdTypes.Int8;
	
	public static var ACC_IC_LONG_FORM(default, null) : Int;
	
	public static var ATTR_CONTEXT_CLASS(default, null) : Int;
	
	public static var ATTR_CONTEXT_FIELD(default, null) : Int;
	
	public static var ATTR_CONTEXT_METHOD(default, null) : Int;
	
	public static var ATTR_CONTEXT_CODE(default, null) : Int;
	
	public static var ATTR_CONTEXT_LIMIT(default, null) : Int;
	
	public static var ATTR_CONTEXT_NAME(default, null) : java.NativeArray<String>;
	
	public static var X_ATTR_OVERFLOW(default, null) : Int;
	
	public static var FO_DEFLATE_HINT(default, null) : Int;
	
	public static var FO_IS_CLASS_STUB(default, null) : Int;
	
	public static var AO_HAVE_SPECIAL_FORMATS(default, null) : Int;
	
	public static var AO_HAVE_CP_NUMBERS(default, null) : Int;
	
	public static var AO_HAVE_ALL_CODE_FLAGS(default, null) : Int;
	
	public static var AO_3_UNUSED_MBZ(default, null) : Int;
	
	public static var AO_HAVE_FILE_HEADERS(default, null) : Int;
	
	public static var AO_DEFLATE_HINT(default, null) : Int;
	
	public static var AO_HAVE_FILE_MODTIME(default, null) : Int;
	
	public static var AO_HAVE_FILE_OPTIONS(default, null) : Int;
	
	public static var AO_HAVE_FILE_SIZE_HI(default, null) : Int;
	
	public static var AO_HAVE_CLASS_FLAGS_HI(default, null) : Int;
	
	public static var AO_HAVE_FIELD_FLAGS_HI(default, null) : Int;
	
	public static var AO_HAVE_METHOD_FLAGS_HI(default, null) : Int;
	
	public static var AO_HAVE_CODE_FLAGS_HI(default, null) : Int;
	
	public static var LG_AO_HAVE_XXX_FLAGS_HI(default, null) : Int;
	
	public static var NO_MODTIME(default, null) : Int;
	
	public static var noInts(default, null) : java.NativeArray<Int>;
	
	public static var noBytes(default, null) : java.NativeArray<java.StdTypes.Int8>;
	
	public static var noValues(default, null) : java.NativeArray<Dynamic>;
	
	public static var noStrings(default, null) : java.NativeArray<String>;
	
	public static var emptyList(default, null) : java.util.List<Dynamic>;
	
	public static var _meta_default(default, null) : Int;
	
	public static var _nop(default, null) : Int;
	
	public static var _end_marker(default, null) : Int;
	
	public static var _byte_escape(default, null) : Int;
	
	public static var _ref_escape(default, null) : Int;
	
	public static var _first_linker_op(default, null) : Int;
	
	public static var _last_linker_op(default, null) : Int;
	
	public static var _num_linker_ops(default, null) : Int;
	
	public static var _self_linker_op(default, null) : Int;
	
	public static var _self_linker_aload_flag(default, null) : Int;
	
	public static var _self_linker_super_flag(default, null) : Int;
	
	public static var _self_linker_limit(default, null) : Int;
	
	public static var _invokeinit_op(default, null) : Int;
	
	public static var _invokeinit_self_option(default, null) : Int;
	
	public static var _invokeinit_super_option(default, null) : Int;
	
	public static var _invokeinit_new_option(default, null) : Int;
	
	public static var _invokeinit_limit(default, null) : Int;
	
	public static var _pseudo_instruction_limit(default, null) : Int;
	
	public static var _xldc_op(default, null) : Int;
	
	public static var _aldc(default, null) : Int;
	
	public static var _cldc(default, null) : Int;
	
	public static var _ildc(default, null) : Int;
	
	public static var _fldc(default, null) : Int;
	
	public static var _aldc_w(default, null) : Int;
	
	public static var _cldc_w(default, null) : Int;
	
	public static var _ildc_w(default, null) : Int;
	
	public static var _fldc_w(default, null) : Int;
	
	public static var _lldc2_w(default, null) : Int;
	
	public static var _dldc2_w(default, null) : Int;
	
	public static var _xldc_limit(default, null) : Int;
	
	
}
