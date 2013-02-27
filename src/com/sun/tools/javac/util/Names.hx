package com.sun.tools.javac.util;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
/**
* Access to the compiler's name table.  STandard names are defined,
* as well as methods to create new names.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Names
{
	public static var namesKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<Names>;
	
	@:overload public static function instance(context : com.sun.tools.javac.util.Context) : Names;
	
	public var slash(default, null) : com.sun.tools.javac.util.Name;
	
	public var hyphen(default, null) : com.sun.tools.javac.util.Name;
	
	public var T(default, null) : com.sun.tools.javac.util.Name;
	
	public var slashequals(default, null) : com.sun.tools.javac.util.Name;
	
	public var deprecated(default, null) : com.sun.tools.javac.util.Name;
	
	public var init(default, null) : com.sun.tools.javac.util.Name;
	
	public var clinit(default, null) : com.sun.tools.javac.util.Name;
	
	public var error(default, null) : com.sun.tools.javac.util.Name;
	
	public var any(default, null) : com.sun.tools.javac.util.Name;
	
	public var empty(default, null) : com.sun.tools.javac.util.Name;
	
	public var one(default, null) : com.sun.tools.javac.util.Name;
	
	public var period(default, null) : com.sun.tools.javac.util.Name;
	
	public var comma(default, null) : com.sun.tools.javac.util.Name;
	
	public var semicolon(default, null) : com.sun.tools.javac.util.Name;
	
	public var asterisk(default, null) : com.sun.tools.javac.util.Name;
	
	public var _this(default, null) : com.sun.tools.javac.util.Name;
	
	public var _super(default, null) : com.sun.tools.javac.util.Name;
	
	public var _default(default, null) : com.sun.tools.javac.util.Name;
	
	public var _class(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_Object(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_Class(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_Cloneable(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_io_Serializable(default, null) : com.sun.tools.javac.util.Name;
	
	public var serialVersionUID(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_Enum(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_invoke_MethodHandle(default, null) : com.sun.tools.javac.util.Name;
	
	public var package_info(default, null) : com.sun.tools.javac.util.Name;
	
	public var ConstantValue(default, null) : com.sun.tools.javac.util.Name;
	
	public var LineNumberTable(default, null) : com.sun.tools.javac.util.Name;
	
	public var LocalVariableTable(default, null) : com.sun.tools.javac.util.Name;
	
	public var LocalVariableTypeTable(default, null) : com.sun.tools.javac.util.Name;
	
	public var CharacterRangeTable(default, null) : com.sun.tools.javac.util.Name;
	
	public var StackMap(default, null) : com.sun.tools.javac.util.Name;
	
	public var StackMapTable(default, null) : com.sun.tools.javac.util.Name;
	
	public var SourceID(default, null) : com.sun.tools.javac.util.Name;
	
	public var CompilationID(default, null) : com.sun.tools.javac.util.Name;
	
	public var Code(default, null) : com.sun.tools.javac.util.Name;
	
	public var Exceptions(default, null) : com.sun.tools.javac.util.Name;
	
	public var SourceFile(default, null) : com.sun.tools.javac.util.Name;
	
	public var InnerClasses(default, null) : com.sun.tools.javac.util.Name;
	
	public var Synthetic(default, null) : com.sun.tools.javac.util.Name;
	
	public var Bridge(default, null) : com.sun.tools.javac.util.Name;
	
	public var Deprecated(default, null) : com.sun.tools.javac.util.Name;
	
	public var Enum(default, null) : com.sun.tools.javac.util.Name;
	
	public var _name(default, null) : com.sun.tools.javac.util.Name;
	
	public var Signature(default, null) : com.sun.tools.javac.util.Name;
	
	public var Varargs(default, null) : com.sun.tools.javac.util.Name;
	
	public var Annotation(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeVisibleAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeInvisibleAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeVisibleTypeAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeInvisibleTypeAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeVisibleParameterAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var RuntimeInvisibleParameterAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	public var Value(default, null) : com.sun.tools.javac.util.Name;
	
	public var EnclosingMethod(default, null) : com.sun.tools.javac.util.Name;
	
	public var desiredAssertionStatus(default, null) : com.sun.tools.javac.util.Name;
	
	public var append(default, null) : com.sun.tools.javac.util.Name;
	
	public var family(default, null) : com.sun.tools.javac.util.Name;
	
	public var forName(default, null) : com.sun.tools.javac.util.Name;
	
	public var toString(default, null) : com.sun.tools.javac.util.Name;
	
	public var length(default, null) : com.sun.tools.javac.util.Name;
	
	public var valueOf(default, null) : com.sun.tools.javac.util.Name;
	
	public var value(default, null) : com.sun.tools.javac.util.Name;
	
	public var getMessage(default, null) : com.sun.tools.javac.util.Name;
	
	public var getClass(default, null) : com.sun.tools.javac.util.Name;
	
	public var TYPE(default, null) : com.sun.tools.javac.util.Name;
	
	public var TYPE_USE(default, null) : com.sun.tools.javac.util.Name;
	
	public var TYPE_PARAMETER(default, null) : com.sun.tools.javac.util.Name;
	
	public var FIELD(default, null) : com.sun.tools.javac.util.Name;
	
	public var METHOD(default, null) : com.sun.tools.javac.util.Name;
	
	public var PARAMETER(default, null) : com.sun.tools.javac.util.Name;
	
	public var CONSTRUCTOR(default, null) : com.sun.tools.javac.util.Name;
	
	public var LOCAL_VARIABLE(default, null) : com.sun.tools.javac.util.Name;
	
	public var ANNOTATION_TYPE(default, null) : com.sun.tools.javac.util.Name;
	
	public var PACKAGE(default, null) : com.sun.tools.javac.util.Name;
	
	public var SOURCE(default, null) : com.sun.tools.javac.util.Name;
	
	public var CLASS(default, null) : com.sun.tools.javac.util.Name;
	
	public var RUNTIME(default, null) : com.sun.tools.javac.util.Name;
	
	public var Array(default, null) : com.sun.tools.javac.util.Name;
	
	public var Method(default, null) : com.sun.tools.javac.util.Name;
	
	public var Bound(default, null) : com.sun.tools.javac.util.Name;
	
	public var clone(default, null) : com.sun.tools.javac.util.Name;
	
	public var getComponentType(default, null) : com.sun.tools.javac.util.Name;
	
	public var getClassLoader(default, null) : com.sun.tools.javac.util.Name;
	
	public var initCause(default, null) : com.sun.tools.javac.util.Name;
	
	public var values(default, null) : com.sun.tools.javac.util.Name;
	
	public var iterator(default, null) : com.sun.tools.javac.util.Name;
	
	public var hasNext(default, null) : com.sun.tools.javac.util.Name;
	
	public var next(default, null) : com.sun.tools.javac.util.Name;
	
	public var AnnotationDefault(default, null) : com.sun.tools.javac.util.Name;
	
	public var ordinal(default, null) : com.sun.tools.javac.util.Name;
	
	public var equals(default, null) : com.sun.tools.javac.util.Name;
	
	public var hashCode(default, null) : com.sun.tools.javac.util.Name;
	
	public var compareTo(default, null) : com.sun.tools.javac.util.Name;
	
	public var getDeclaringClass(default, null) : com.sun.tools.javac.util.Name;
	
	public var ex(default, null) : com.sun.tools.javac.util.Name;
	
	public var finalize(default, null) : com.sun.tools.javac.util.Name;
	
	public var java_lang_AutoCloseable(default, null) : com.sun.tools.javac.util.Name;
	
	public var close(default, null) : com.sun.tools.javac.util.Name;
	
	public var addSuppressed(default, null) : com.sun.tools.javac.util.Name;
	
	public var table(default, null) : com.sun.tools.javac.util.Name.Name_Table;
	
	@:overload public function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload private function createTable(options : com.sun.tools.javac.util.Options) : com.sun.tools.javac.util.Name.Name_Table;
	
	@:overload public function dispose() : Void;
	
	@:overload public function fromChars(cs : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload public function fromString(s : String) : com.sun.tools.javac.util.Name;
	
	@:overload public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>) : com.sun.tools.javac.util.Name;
	
	@:overload public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	
}
