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
	@:public @:static @:final public static var namesKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.util.Names>;
	
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.util.Names;
	
	@:public @:final public var slash(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var hyphen(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var T(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var slashequals(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var deprecated(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var init(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var clinit(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var error(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var any(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var empty(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var one(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var period(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var comma(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var semicolon(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var asterisk(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var _this(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var _super(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var _default(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var _class(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_Object(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_Class(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_Cloneable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_io_Serializable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var serialVersionUID(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_Enum(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_invoke_MethodHandle(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var package_info(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var ConstantValue(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var LineNumberTable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var LocalVariableTable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var LocalVariableTypeTable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var CharacterRangeTable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var StackMap(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var StackMapTable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var SourceID(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var CompilationID(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Code(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Exceptions(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var SourceFile(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var InnerClasses(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Synthetic(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Bridge(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Deprecated(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Enum(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var _name(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Signature(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Varargs(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Annotation(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeVisibleAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeInvisibleAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeVisibleTypeAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeInvisibleTypeAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeVisibleParameterAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RuntimeInvisibleParameterAnnotations(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Value(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var EnclosingMethod(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var desiredAssertionStatus(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var append(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var family(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var forName(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var toString(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var length(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var valueOf(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var value(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var getMessage(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var getClass(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var TYPE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var TYPE_USE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var TYPE_PARAMETER(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var FIELD(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var METHOD(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var PARAMETER(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var CONSTRUCTOR(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var LOCAL_VARIABLE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var ANNOTATION_TYPE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var PACKAGE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var SOURCE(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var CLASS(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var RUNTIME(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Array(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Method(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var Bound(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var clone(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var getComponentType(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var getClassLoader(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var initCause(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var values(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var iterator(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var hasNext(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var next(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var AnnotationDefault(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var ordinal(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var equals(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var hashCode(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var compareTo(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var getDeclaringClass(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var ex(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var finalize(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var java_lang_AutoCloseable(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var close(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var addSuppressed(default, null) : com.sun.tools.javac.util.Name;
	
	@:public @:final public var table(default, null) : com.sun.tools.javac.util.Name.Name_Table;
	
	@:overload @:public public function new(context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload @:protected private function createTable(options : com.sun.tools.javac.util.Options) : com.sun.tools.javac.util.Name.Name_Table;
	
	@:overload @:public public function dispose() : Void;
	
	@:overload @:public public function fromChars(cs : java.NativeArray<java.StdTypes.Char16>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function fromString(s : String) : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>) : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function fromUtf(cs : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int) : com.sun.tools.javac.util.Name;
	
	
}
