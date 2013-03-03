package com.sun.tools.javac.jvm;
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
/** This class provides operations to read a classfile into an internal
*  representation. The internal representation is anchored in a
*  ClassSymbol which contains in its scope symbol representations
*  for all other definitions in the classfile. Top-level Classes themselves
*  appear as members of the scopes of PackageSymbols.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class ClassReader implements Completer
{
	/** The context key for the class reader. */
	@:protected @:static @:final private static var classReaderKey(default, null) : com.sun.tools.javac.util.Context.Context_Key<com.sun.tools.javac.jvm.ClassReader>;
	
	@:public @:static @:final public static var INITIAL_BUFFER_SIZE(default, null) : Int;
	
	/** Switch: read constant pool and code sections. This switch is initially
	*  set to false but can be turned on from outside.
	*/
	@:public public var readAllOfClassFile : Bool;
	
	/** Switch: preserve parameter names from the variable table.
	*/
	@:public public var saveParameterNames : Bool;
	
	/**
	* Switch: prefer source files instead of newer when both source
	* and class are available
	**/
	@:public public var preferSource : Bool;
	
	/** Can be reassigned from outside:
	*  the completer to be used for ".java" files. If this remains unassigned
	*  ".java" files will not be loaded.
	*/
	@:public public var sourceCompleter : com.sun.tools.javac.jvm.ClassReader.ClassReader_SourceCompleter;
	
	/** The current scope where type variables are entered.
	*/
	@:protected private var typevars : com.sun.tools.javac.code.Scope;
	
	/** The path name of the class file currently being read.
	*/
	@:protected private var currentClassFile : javax.tools.JavaFileObject;
	
	/** The class or method currently being read.
	*/
	@:protected private var currentOwner : com.sun.tools.javac.code.Symbol;
	
	/** Get the ClassReader instance for this invocation. */
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.jvm.ClassReader;
	
	/** Initialize classes and packages, treating this as the definitive classreader. */
	@:overload @:public public function init(syms : com.sun.tools.javac.code.Symtab) : Void;
	
	/** Construct a new class reader, optionally treated as the
	*  definitive classreader for this invocation.
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context, definitive : Bool) : Void;
	
	@:overload @:public public function badClassFile(key : String, args : java.NativeArray<Dynamic>) : com.sun.tools.javac.jvm.ClassReader.ClassReader_BadClassFile;
	
	@:protected private var CLASS_ATTRIBUTE : java.util.Set<com.sun.tools.javac.jvm.ClassReader.ClassReader_AttributeKind>;
	
	@:protected private var MEMBER_ATTRIBUTE : java.util.Set<com.sun.tools.javac.jvm.ClassReader.ClassReader_AttributeKind>;
	
	@:protected private var CLASS_OR_MEMBER_ATTRIBUTE : java.util.Set<com.sun.tools.javac.jvm.ClassReader.ClassReader_AttributeKind>;
	
	@:protected private var attributeReaders : java.util.Map<com.sun.tools.javac.util.Name, com.sun.tools.javac.jvm.ClassReader.ClassReader_AttributeReader>;
	
	/** Enter type variables of this classtype and all enclosing ones in
	*  `typevars'.
	*/
	@:overload @:protected private function enterTypevars(t : com.sun.tools.javac.code.Type) : Void;
	
	@:overload @:protected private function enterTypevars(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Define a new class given its name and owner.
	*/
	@:overload @:public public function defineClass(name : com.sun.tools.javac.util.Name, owner : com.sun.tools.javac.code.Symbol) : ClassSymbol;
	
	/** Create a new toplevel or member class symbol with given name
	*  and owner and enter in `classes' unless already there.
	*/
	@:overload @:public public function enterClass(name : com.sun.tools.javac.util.Name, owner : TypeSymbol) : ClassSymbol;
	
	/**
	* Creates a new toplevel class symbol with given flat name and
	* given class (or source) file.
	*
	* @param flatName a fully qualified binary class name
	* @param classFile the class file or compilation unit defining
	* the class (may be {@code null})
	* @return a newly created class symbol
	* @throws AssertionError if the class symbol already exists
	*/
	@:overload @:public public function enterClass(flatName : com.sun.tools.javac.util.Name, classFile : javax.tools.JavaFileObject) : ClassSymbol;
	
	/** Create a new member or toplevel class symbol with given flat name
	*  and enter in `classes' unless already there.
	*/
	@:overload @:public public function enterClass(flatname : com.sun.tools.javac.util.Name) : ClassSymbol;
	
	/** Completion for classes to be loaded. Before a class is loaded
	*  we make sure its enclosing class (if any) is loaded.
	*/
	@:overload @:public public function complete(sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/** Load a toplevel class with given fully qualified name
	*  The class is entered into `classes' only if load was successful.
	*/
	@:overload @:public public function loadClass(flatname : com.sun.tools.javac.util.Name) : ClassSymbol;
	
	/** Check to see if a package exists, given its fully qualified name.
	*/
	@:overload @:public public function packageExists(fullname : com.sun.tools.javac.util.Name) : Bool;
	
	/** Make a package, given its fully qualified name.
	*/
	@:overload @:public public function enterPackage(fullname : com.sun.tools.javac.util.Name) : PackageSymbol;
	
	/** Make a package, given its unqualified name and enclosing package.
	*/
	@:overload @:public public function enterPackage(name : com.sun.tools.javac.util.Name, owner : PackageSymbol) : PackageSymbol;
	
	/** Include class corresponding to given class file in package,
	*  unless (1) we already have one the same kind (.class or .java), or
	*         (2) we have one of the other kind, and the given class file
	*             is older.
	*/
	@:overload @:protected private function includeClassFile(p : PackageSymbol, file : javax.tools.JavaFileObject) : Void;
	
	/** Implement policy to choose to derive information from a source
	*  file or a class file when both are present.  May be overridden
	*  by subclasses.
	*/
	@:overload @:protected private function preferredFileObject(a : javax.tools.JavaFileObject, b : javax.tools.JavaFileObject) : javax.tools.JavaFileObject;
	
	/**
	* specifies types of files to be read when filling in a package symbol
	*/
	@:overload @:protected private function getPackageFileKinds() : java.util.EnumSet<javax.tools.JavaFileObject.JavaFileObject_Kind>;
	
	/**
	* this is used to support javadoc
	*/
	@:overload @:protected private function extraFileActions(pack : PackageSymbol, fe : javax.tools.JavaFileObject) : Void;
	
	@:protected private var currentLoc : javax.tools.JavaFileManager.JavaFileManager_Location;
	
	
}
/************************************************************************
* Error Diagnoses
***********************************************************************/
@:native('com$sun$tools$javac$jvm$ClassReader$BadClassFile') extern class ClassReader_BadClassFile extends CompletionFailure
{
	@:overload @:public public function new(sym : TypeSymbol, file : javax.tools.JavaFileObject, diag : com.sun.tools.javac.util.JCDiagnostic) : Void;
	
	
}
/************************************************************************
* Reading Attributes
***********************************************************************/
@:native('com$sun$tools$javac$jvm$ClassReader$AttributeKind') privateextern enum ClassReader_AttributeKind
{
	CLASS;
	MEMBER;
	
}

@:native('com$sun$tools$javac$jvm$ClassReader$AttributeReader') extern class ClassReader_AttributeReader
{
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$ProxyVisitor') @:internal extern interface ClassReader_ProxyVisitor extends com.sun.tools.javac.code.Attribute.Attribute_Visitor
{
	@:overload public function visitEnumAttributeProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_EnumAttributeProxy) : Void;
	
	@:overload public function visitArrayAttributeProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_ArrayAttributeProxy) : Void;
	
	@:overload public function visitCompoundAnnotationProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_CompoundAnnotationProxy) : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$EnumAttributeProxy') @:internal extern class ClassReader_EnumAttributeProxy extends com.sun.tools.javac.code.Attribute
{
	@:overload @:public public function new(enumType : com.sun.tools.javac.code.Type, enumerator : com.sun.tools.javac.util.Name) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$ArrayAttributeProxy') @:internal extern class ClassReader_ArrayAttributeProxy extends com.sun.tools.javac.code.Attribute
{
	@:overload @:public override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
/** A temporary proxy representing a compound attribute.
*/
@:native('com$sun$tools$javac$jvm$ClassReader$CompoundAnnotationProxy') @:internal extern class ClassReader_CompoundAnnotationProxy extends com.sun.tools.javac.code.Attribute
{
	@:overload @:public public function new(type : com.sun.tools.javac.code.Type, values : com.sun.tools.javac.util.List<com.sun.tools.javac.util.Pair<com.sun.tools.javac.util.Name, com.sun.tools.javac.code.Attribute>>) : Void;
	
	@:overload @:public override public function accept(v : com.sun.tools.javac.code.Attribute.Attribute_Visitor) : Void;
	
	@:overload @:public public function toString() : String;
	
	
}
/** A temporary proxy representing a type annotation.
*/
@:native('com$sun$tools$javac$jvm$ClassReader$TypeAnnotationProxy') @:internal extern class ClassReader_TypeAnnotationProxy
{
	@:overload @:public public function new(compound : com.sun.tools.javac.jvm.ClassReader.ClassReader_CompoundAnnotationProxy, position : com.sun.tools.javac.code.TypeAnnotationPosition) : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$AnnotationDeproxy') @:internal extern class ClassReader_AnnotationDeproxy implements com.sun.tools.javac.jvm.ClassReader.ClassReader_ProxyVisitor
{
	@:overload @:public public function visitConstant(value : com.sun.tools.javac.code.Attribute.Attribute_Constant) : Void;
	
	@:overload @:public public function visitClass(clazz : com.sun.tools.javac.code.Attribute.Attribute_Class) : Void;
	
	@:overload @:public public function visitEnum(e : com.sun.tools.javac.code.Attribute.Attribute_Enum) : Void;
	
	@:overload @:public public function visitCompound(compound : com.sun.tools.javac.code.Attribute.Attribute_Compound) : Void;
	
	@:overload @:public public function visitArray(array : com.sun.tools.javac.code.Attribute.Attribute_Array) : Void;
	
	@:overload @:public public function visitError(e : com.sun.tools.javac.code.Attribute.Attribute_Error) : Void;
	
	@:overload @:public public function visitEnumAttributeProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_EnumAttributeProxy) : Void;
	
	@:overload @:public public function visitArrayAttributeProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_ArrayAttributeProxy) : Void;
	
	@:overload @:public public function visitCompoundAnnotationProxy(proxy : com.sun.tools.javac.jvm.ClassReader.ClassReader_CompoundAnnotationProxy) : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$AnnotationDefaultCompleter') @:internal extern class ClassReader_AnnotationDefaultCompleter extends com.sun.tools.javac.jvm.ClassReader.ClassReader_AnnotationDeproxy implements com.sun.tools.javac.comp.Annotate.Annotate_Annotator
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function enterAnnotation() : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$AnnotationCompleter') @:internal extern class ClassReader_AnnotationCompleter extends com.sun.tools.javac.jvm.ClassReader.ClassReader_AnnotationDeproxy implements com.sun.tools.javac.comp.Annotate.Annotate_Annotator
{
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function enterAnnotation() : Void;
	
	
}
@:native('com$sun$tools$javac$jvm$ClassReader$SourceCompleter') extern interface ClassReader_SourceCompleter
{
	@:overload public function complete(sym : ClassSymbol) : Void;
	
	
}
/**
* A subclass of JavaFileObject for the sourcefile attribute found in a classfile.
* The attribute is only the last component of the original filename, so is unlikely
* to be valid as is, so operations other than those to access the name throw
* UnsupportedOperationException
*/
@:native('com$sun$tools$javac$jvm$ClassReader$SourceFileObject') @:internal extern class ClassReader_SourceFileObject extends com.sun.tools.javac.file.BaseFileObject
{
	@:overload @:public public function new(name : com.sun.tools.javac.util.Name, flatname : com.sun.tools.javac.util.Name) : Void;
	
	@:overload @:public override public function toUri() : java.net.URI;
	
	@:overload @:public override public function getName() : String;
	
	@:overload @:public override public function getShortName() : String;
	
	@:overload @:public override public function getKind() : javax.tools.JavaFileObject.JavaFileObject_Kind;
	
	@:overload @:public override public function openInputStream() : java.io.InputStream;
	
	@:overload @:public override public function openOutputStream() : java.io.OutputStream;
	
	@:overload @:public override public function getCharContent(ignoreEncodingErrors : Bool) : java.nio.CharBuffer;
	
	@:overload @:public override public function openReader(ignoreEncodingErrors : Bool) : java.io.Reader;
	
	@:overload @:public override public function openWriter() : java.io.Writer;
	
	@:overload @:public override public function getLastModified() : haxe.Int64;
	
	@:overload @:public override public function delete() : Bool;
	
	@:overload @:protected override private function inferBinaryName(path : java.lang.Iterable<java.io.File>) : String;
	
	@:overload @:public override public function isNameCompatible(simpleName : String, kind : javax.tools.JavaFileObject.JavaFileObject_Kind) : Bool;
	
	/**
	* Check if two file objects are equal.
	* SourceFileObjects are just placeholder objects for the value of a
	* SourceFile attribute, and do not directly represent specific files.
	* Two SourceFileObjects are equal if their names are equal.
	*/
	@:overload @:public override public function equals(other : Dynamic) : Bool;
	
	@:overload @:public override public function hashCode() : Int;
	
	
}
