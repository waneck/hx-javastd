package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class JCodeModel
{
	/** Obtains a reference to the special "null" type. */
	@:public @:final public var NULL(default, null) : com.sun.codemodel.internal.JNullType;
	
	@:public @:final public var VOID(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var BOOLEAN(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var BYTE(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var SHORT(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var CHAR(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var INT(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var FLOAT(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var LONG(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	@:public @:final public var DOUBLE(default, null) : com.sun.codemodel.internal.JPrimitiveType;
	
	/**
	* If the flag is true, we will consider two classes "Foo" and "foo"
	* as a collision.
	*/
	@:protected @:static @:final private static var isCaseSensitiveFileSystem(default, null) : Bool;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Add a package to the list of packages to be generated
	*
	* @param name
	*        Name of the package. Use "" to indicate the root package.
	*
	* @return Newly generated package
	*/
	@:overload @:public public function _package(name : String) : com.sun.codemodel.internal.JPackage;
	
	@:overload @:public @:final public function rootPackage() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Returns an iterator that walks the packages defined using this code
	* writer.
	*/
	@:overload @:public public function packages() : java.util.Iterator<com.sun.codemodel.internal.JPackage>;
	
	/**
	* Creates a new generated class.
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload @:public public function _class(fullyqualifiedName : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates a dummy, unknown {@link JClass} that represents a given name.
	*
	* <p>
	* This method is useful when the code generation needs to include the user-specified
	* class that may or may not exist, and only thing known about it is a class name.
	*/
	@:overload @:public public function directClass(name : String) : com.sun.codemodel.internal.JClass;
	
	/**
	* Creates a new generated class.
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload @:public public function _class(mods : Int, fullyqualifiedName : String, t : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates a new generated class.
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload @:public public function _class(fullyqualifiedName : String, t : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Gets a reference to the already created generated class.
	*
	* @return null
	*      If the class is not yet created.
	* @see JPackage#_getClass(String)
	*/
	@:overload @:public public function _getClass(fullyQualifiedName : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates a new anonymous class.
	*
	* @deprecated
	*      The naming convention doesn't match the rest of the CodeModel.
	*      Use {@link #anonymousClass(JClass)} instead.
	*/
	@:overload @:public public function newAnonymousClass(baseType : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates a new anonymous class.
	*/
	@:overload @:public public function anonymousClass(baseType : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:public public function anonymousClass(baseType : Class<Dynamic>) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Generates Java source code.
	* A convenience method for <code>build(destDir,destDir,System.out)</code>.
	*
	* @param   destDir
	*          source files are generated into this directory.
	* @param   status
	*      if non-null, progress indication will be sent to this stream.
	*/
	@:overload @:public public function build(destDir : java.io.File, status : java.io.PrintStream) : Void;
	
	/**
	* Generates Java source code.
	* A convenience method that calls {@link #build(CodeWriter,CodeWriter)}.
	*
	* @param   srcDir
	*          Java source files are generated into this directory.
	* @param   resourceDir
	*          Other resource files are generated into this directory.
	* @param   status
	*      if non-null, progress indication will be sent to this stream.
	*/
	@:overload @:public public function build(srcDir : java.io.File, resourceDir : java.io.File, status : java.io.PrintStream) : Void;
	
	/**
	* A convenience method for <code>build(destDir,System.out)</code>.
	*/
	@:overload @:public public function build(destDir : java.io.File) : Void;
	
	/**
	* A convenience method for <code>build(srcDir,resourceDir,System.out)</code>.
	*/
	@:overload @:public public function build(srcDir : java.io.File, resourceDir : java.io.File) : Void;
	
	/**
	* A convenience method for <code>build(out,out)</code>.
	*/
	@:overload @:public public function build(out : com.sun.codemodel.internal.CodeWriter) : Void;
	
	/**
	* Generates Java source code.
	*/
	@:overload @:public public function build(source : com.sun.codemodel.internal.CodeWriter, resource : com.sun.codemodel.internal.CodeWriter) : Void;
	
	/**
	* Returns the number of files to be generated if
	* {@link #build} is invoked now.
	*/
	@:overload @:public public function countArtifacts() : Int;
	
	/**
	* Obtains a reference to an existing class from its Class object.
	*
	* <p>
	* The parameter may not be primitive.
	*
	* @see #_ref(Class) for the version that handles more cases.
	*/
	@:overload @:public public function ref(clazz : Class<Dynamic>) : com.sun.codemodel.internal.JClass;
	
	@:overload @:public public function _ref(c : Class<Dynamic>) : com.sun.codemodel.internal.JType;
	
	/**
	* Obtains a reference to an existing class from its fully-qualified
	* class name.
	*
	* <p>
	* First, this method attempts to load the class of the given name.
	* If that fails, we assume that the class is derived straight from
	* {@link Object}, and return a {@link JClass}.
	*/
	@:overload @:public public function ref(fullyQualifiedClassName : String) : com.sun.codemodel.internal.JClass;
	
	/**
	* Gets a {@link JClass} representation for "?",
	* which is equivalent to "? extends Object".
	*/
	@:overload @:public public function wildcard() : com.sun.codemodel.internal.JClass;
	
	/**
	* Obtains a type object from a type name.
	*
	* <p>
	* This method handles primitive types, arrays, and existing {@link Class}es.
	*
	* @exception ClassNotFoundException
	*      If the specified type is not found.
	*/
	@:overload @:public public function parseType(name : String) : com.sun.codemodel.internal.JType;
	
	/**
	* Conversion from primitive type {@link Class} (such as {@link Integer#TYPE}
	* to its boxed type (such as <tt>Integer.class</tt>)
	*/
	@:public @:static @:final public static var primitiveToBox(default, null) : java.util.Map<Class<Dynamic>, Class<Dynamic>>;
	
	/**
	* The reverse look up for {@link #primitiveToBox}
	*/
	@:public @:static @:final public static var boxToPrimitive(default, null) : java.util.Map<Class<Dynamic>, Class<Dynamic>>;
	
	
}
@:native('com$sun$codemodel$internal$JCodeModel$TypeNameParser') @:internal extern class JCodeModel_TypeNameParser
{
	@:overload @:public public function new(s : String) : Void;
	
	
}
/**
* References to existing classes.
*
* <p>
* JReferencedClass is kept in a pool so that they are shared.
* There is one pool for each JCodeModel object.
*
* <p>
* It is impossible to cache JReferencedClass globally only because
* there is the _package() method, which obtains the owner JPackage
* object, which is scoped to JCodeModel.
*/
@:native('com$sun$codemodel$internal$JCodeModel$JReferencedClass') @:internal extern class JCodeModel_JReferencedClass extends com.sun.codemodel.internal.JClass implements com.sun.codemodel.internal.JDeclaration
{
	@:overload @:public override public function name() : String;
	
	@:overload @:public override public function fullName() : String;
	
	@:overload @:public override public function binaryName() : String;
	
	@:overload @:public override public function outer() : com.sun.codemodel.internal.JClass;
	
	@:overload @:public override public function _package() : com.sun.codemodel.internal.JPackage;
	
	@:overload @:public override public function _extends() : com.sun.codemodel.internal.JClass;
	
	@:overload @:public override public function _implements() : java.util.Iterator<com.sun.codemodel.internal.JClass>;
	
	@:overload @:public override public function isInterface() : Bool;
	
	@:overload @:public override public function isAbstract() : Bool;
	
	@:overload @:public override public function getPrimitiveType() : com.sun.codemodel.internal.JPrimitiveType;
	
	@:overload @:public override public function isArray() : Bool;
	
	@:overload @:public public function declare(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	@:overload @:public override public function typeParams() : java.NativeArray<com.sun.codemodel.internal.JTypeVar>;
	
	@:overload @:protected override private function substituteParams(variables : java.NativeArray<com.sun.codemodel.internal.JTypeVar>, bindings : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	
}
