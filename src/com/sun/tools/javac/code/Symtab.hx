package com.sun.tools.javac.code;
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
/** A class that defines all predefined constants and operators
*  as well as special classes such as java.lang.Object, which need
*  to be known to the compiler. All symbols are held in instance
*  fields. This makes it possible to work in multiple concurrent
*  projects, which might use different class files for library classes.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class Symtab
{
	/** The context key for the symbol table. */
	@:protected @:static @:final private static var symtabKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.code.Symtab>;
	
	/** Get the symbol table instance. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.code.Symtab;
	
	/** Builtin types.
	*/
	@:public @:final public var byteType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var charType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var shortType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var intType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var longType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var floatType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var doubleType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var booleanType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var botType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var voidType(default, null) : JCNoType;
	
	/** A symbol for the root package.
	*/
	@:public @:final public var rootPackage(default, null) : PackageSymbol;
	
	/** A symbol for the unnamed package.
	*/
	@:public @:final public var unnamedPackage(default, null) : PackageSymbol;
	
	/** A symbol that stands for a missing symbol.
	*/
	@:public @:final public var noSymbol(default, null) : TypeSymbol;
	
	/** The error symbol.
	*/
	@:public @:final public var errSymbol(default, null) : ClassSymbol;
	
	/** The unknown symbol.
	*/
	@:public @:final public var unknownSymbol(default, null) : ClassSymbol;
	
	/** A value for the errType, with a originalType of noType */
	@:public @:final public var errType(default, null) : com.sun.tools.javac.code.Type;
	
	/** A value for the unknown type. */
	@:public @:final public var unknownType(default, null) : com.sun.tools.javac.code.Type;
	
	/** The builtin type of all arrays. */
	@:public @:final public var arrayClass(default, null) : ClassSymbol;
	
	@:public @:final public var arrayCloneMethod(default, null) : MethodSymbol;
	
	/** VGJ: The (singleton) type of all bound types. */
	@:public @:final public var boundClass(default, null) : ClassSymbol;
	
	/** The builtin type of all methods. */
	@:public @:final public var methodClass(default, null) : ClassSymbol;
	
	/** Predefined types.
	*/
	@:public @:final public var objectType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var classType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var classLoaderType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var stringType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var stringBufferType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var stringBuilderType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var cloneableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var serializableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var methodHandleType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var polymorphicSignatureType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var throwableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var errorType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var interruptedExceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var illegalArgumentExceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var exceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var runtimeExceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var classNotFoundExceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var noClassDefFoundErrorType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var noSuchFieldErrorType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var assertionErrorType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var cloneNotSupportedExceptionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var annotationType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var enumSym(default, null) : TypeSymbol;
	
	@:public @:final public var listType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var collectionsType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var comparableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var arraysType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var iterableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var iteratorType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var annotationTargetType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var overrideType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var retentionType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var deprecatedType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var suppressWarningsType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var inheritedType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var proprietaryType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var systemType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var autoCloseableType(default, null) : com.sun.tools.javac.code.Type;
	
	@:public @:final public var trustMeType(default, null) : com.sun.tools.javac.code.Type;
	
	/** The symbol representing the length field of an array.
	*/
	@:public @:final public var lengthVar(default, null) : VarSymbol;
	
	/** The null check operator. */
	@:public @:final public var nullcheck(default, null) : OperatorSymbol;
	
	/** The symbol representing the final finalize method on enums */
	@:public @:final public var enumFinalFinalize(default, null) : MethodSymbol;
	
	/** The symbol representing the close method on TWR AutoCloseable type */
	@:public @:final public var autoCloseableClose(default, null) : MethodSymbol;
	
	/** The predefined type that belongs to a tag.
	*/
	@:public @:final public var typeOfTag(default, null) : java.NativeArray<com.sun.tools.javac.code.Type>;
	
	/** The name of the class that belongs to a basix type tag.
	*/
	@:public @:final public var boxedName(default, null) : java.NativeArray<com.sun.tools.javac.util.Name>;
	
	/** A hashtable containing the encountered top-level and member classes,
	*  indexed by flat names. The table does not contain local classes.
	*  It should be updated from the outside to reflect classes defined
	*  by compiled source files.
	*/
	@:public @:final public var classes(default, null) : java.util.Map<com.sun.tools.javac.util.Name, ClassSymbol>;
	
	/** A hashtable containing the encountered packages.
	*  the table should be updated from outside to reflect packages defined
	*  by compiled source files.
	*/
	@:public @:final public var packages(default, null) : java.util.Map<com.sun.tools.javac.util.Name, PackageSymbol>;
	
	@:overload @:public public function initType(type : com.sun.tools.javac.code.Type, c : ClassSymbol) : Void;
	
	@:overload @:public public function initType(type : com.sun.tools.javac.code.Type, name : String) : Void;
	
	@:overload @:public public function initType(type : com.sun.tools.javac.code.Type, name : String, bname : String) : Void;
	
	/** The class symbol that owns all predefined symbols.
	*/
	@:public @:final public var predefClass(default, null) : ClassSymbol;
	
	@:overload @:public public function synthesizeEmptyInterfaceIfMissing(type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload @:public public function synthesizeBoxTypeIfMissing(type : com.sun.tools.javac.code.Type) : Void;
	
	/** Constructor; enters all predefined identifiers and operators
	*  into symbol table.
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	
}
