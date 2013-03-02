package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Represents a java class and provides access to information
* about the class, the class' comment and tags, and the
* members of the class.  A ClassDocImpl only exists if it was
* processed in this run of javadoc.  References to classes
* which may or may not have been processed in this run are
* referred to using Type (which can be converted to ClassDocImpl,
* if possible).
*
* @see Type
*
* @since 1.2
* @author Robert Field
* @author Neal Gafter (rewrite)
* @author Scott Seligman (generics, enums, annotations)
*/
@:require(java2) extern class ClassDocImpl extends com.sun.tools.javadoc.ProgramElementDocImpl implements com.sun.javadoc.ClassDoc
{
	public var type(default, null) : com.sun.tools.javac.code.Type.Type_ClassType;
	
	private var tsym(default, null) : ClassSymbol;
	
	/**
	* Constructor
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : ClassSymbol) : Void;
	
	/**
	* Constructor
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : ClassSymbol, documentation : String, tree : com.sun.tools.javac.tree.JCTree.JCTree_JCClassDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Returns the flags in terms of javac's flags
	*/
	@:overload override private function getFlags() : haxe.Int64;
	
	/**
	* Identify the containing class
	*/
	@:overload override private function getContainingClass() : ClassSymbol;
	
	/**
	* Return true if this is a class, not an interface.
	*/
	@:overload override public function isClass() : Bool;
	
	/**
	* Return true if this is a ordinary class,
	* not an enumeration, exception, an error, or an interface.
	*/
	@:overload override public function isOrdinaryClass() : Bool;
	
	/**
	* Return true if this is an enumeration.
	* (For legacy doclets, return false.)
	*/
	@:overload override public function isEnum() : Bool;
	
	/**
	* Return true if this is an interface, but not an annotation type.
	* Overridden by AnnotationTypeDocImpl.
	*/
	@:overload override public function isInterface() : Bool;
	
	/**
	* Return true if this is an exception class
	*/
	@:overload override public function isException() : Bool;
	
	/**
	* Return true if this is an error class
	*/
	@:overload override public function isError() : Bool;
	
	/**
	* Return true if this is a throwable class
	*/
	@:overload public function isThrowable() : Bool;
	
	/**
	* Return true if this class is abstract
	*/
	@:overload public function isAbstract() : Bool;
	
	/**
	* Returns true if this class was synthesized by the compiler.
	*/
	@:overload public function isSynthetic() : Bool;
	
	/**
	* Return true if this class is included in the active set.
	* A ClassDoc is included iff either it is specified on the
	* commandline, or if it's containing package is specified
	* on the command line, or if it is a member class of an
	* included class.
	*/
	@:overload override public function isIncluded() : Bool;
	
	/**
	* Return the package that this class is contained in.
	*/
	@:overload override public function containingPackage() : com.sun.javadoc.PackageDoc;
	
	/**
	* Return the class name without package qualifier - but with
	* enclosing class qualifier - as a String.
	* <pre>
	* Examples:
	*  for java.util.Hashtable
	*  return Hashtable
	*  for java.util.Map.Entry
	*  return Map.Entry
	* </pre>
	*/
	@:overload override public function name() : String;
	
	/**
	* Return the qualified class name as a String.
	* <pre>
	* Example:
	*  for java.util.Hashtable
	*  return java.util.Hashtable
	*  if no qualifier, just return flat name
	* </pre>
	*/
	@:overload override public function qualifiedName() : String;
	
	/**
	* Return unqualified name of type excluding any dimension information.
	* <p>
	* For example, a two dimensional array of String returns 'String'.
	*/
	@:overload public function typeName() : String;
	
	/**
	* Return qualified name of type excluding any dimension information.
	*<p>
	* For example, a two dimensional array of String
	* returns 'java.lang.String'.
	*/
	@:overload public function qualifiedTypeName() : String;
	
	/**
	* Return the simple name of this type.
	*/
	@:overload public function simpleTypeName() : String;
	
	/**
	* Return the qualified name and any type parameters.
	* Each parameter is a type variable with optional bounds.
	*/
	@:overload public function toString() : String;
	
	/**
	* Return the formal type parameters of this class or interface.
	* Return an empty array if there are none.
	*/
	@:overload public function typeParameters() : java.NativeArray<com.sun.javadoc.TypeVariable>;
	
	/**
	* Return the type parameter tags of this class or interface.
	*/
	@:overload public function typeParamTags() : java.NativeArray<com.sun.javadoc.ParamTag>;
	
	/**
	* Return the modifier string for this class. If it's an interface
	* exclude 'abstract' keyword from the modifier string
	*/
	@:overload override public function modifiers() : String;
	
	@:overload override public function modifierSpecifier() : Int;
	
	/**
	* Return the superclass of this class
	*
	* @return the ClassDocImpl for the superclass of this class, null
	* if there is no superclass.
	*/
	@:overload public function superclass() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return the superclass of this class.  Return null if this is an
	* interface.  A superclass is represented by either a
	* <code>ClassDoc</code> or a <code>ParameterizedType</code>.
	*/
	@:overload public function superclassType() : com.sun.javadoc.Type;
	
	/**
	* Test whether this class is a subclass of the specified class.
	*
	* @param cd the candidate superclass.
	* @return true if cd is a superclass of this class.
	*/
	@:overload public function subclassOf(cd : com.sun.javadoc.ClassDoc) : Bool;
	
	/**
	* Return interfaces implemented by this class or interfaces
	* extended by this interface.
	*
	* @return An array of ClassDocImpl representing the interfaces.
	* Return an empty array if there are no interfaces.
	*/
	@:overload public function interfaces() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return interfaces implemented by this class or interfaces extended
	* by this interface. Includes only directly-declared interfaces, not
	* inherited interfaces.
	* Return an empty array if there are no interfaces.
	*/
	@:overload public function interfaceTypes() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return fields in class.
	* @param filter include only the included fields if filter==true
	*/
	@:overload public function fields(filter : Bool) : java.NativeArray<com.sun.javadoc.FieldDoc>;
	
	/**
	* Return included fields in class.
	*/
	@:overload public function fields() : java.NativeArray<com.sun.javadoc.FieldDoc>;
	
	/**
	* Return the enum constants if this is an enum type.
	*/
	@:overload public function enumConstants() : java.NativeArray<com.sun.javadoc.FieldDoc>;
	
	/**
	* Return methods in class.
	* This method is overridden by AnnotationTypeDocImpl.
	*
	* @param filter include only the included methods if filter==true
	* @return an array of MethodDocImpl for representing the visible
	* methods in this class.  Does not include constructors.
	*/
	@:overload public function methods(filter : Bool) : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	/**
	* Return included methods in class.
	*
	* @return an array of MethodDocImpl for representing the visible
	* methods in this class.  Does not include constructors.
	*/
	@:overload public function methods() : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	/**
	* Return constructors in class.
	*
	* @param filter include only the included constructors if filter==true
	* @return an array of ConstructorDocImpl for representing the visible
	* constructors in this class.
	*/
	@:overload public function constructors(filter : Bool) : java.NativeArray<com.sun.javadoc.ConstructorDoc>;
	
	/**
	* Return included constructors in class.
	*
	* @return an array of ConstructorDocImpl for representing the visible
	* constructors in this class.
	*/
	@:overload public function constructors() : java.NativeArray<com.sun.javadoc.ConstructorDoc>;
	
	/**
	* Return inner classes within this class.
	*
	* @param filter include only the included inner classes if filter==true.
	* @return an array of ClassDocImpl for representing the visible
	* classes defined in this class. Anonymous and local classes
	* are not included.
	*/
	@:overload public function innerClasses(filter : Bool) : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Return included inner classes within this class.
	*
	* @return an array of ClassDocImpl for representing the visible
	* classes defined in this class. Anonymous and local classes
	* are not included.
	*/
	@:overload public function innerClasses() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Find a class within the context of this class.
	* Search order: qualified name, in this class (inner),
	* in this package, in the class imports, in the package
	* imports.
	* Return the ClassDocImpl if found, null if not found.
	*/
	@:overload public function findClass(className : String) : com.sun.javadoc.ClassDoc;
	
	/**
	* Find a method in this class scope.
	* Search order: this class, interfaces, superclasses, outerclasses.
	* Note that this is not necessarily what the compiler would do!
	*
	* @param methodName the unqualified name to search for.
	* @param paramTypeArray the array of Strings for method parameter types.
	* @return the first MethodDocImpl which matches, null if not found.
	*/
	@:overload public function findMethod(methodName : String, paramTypes : java.NativeArray<String>) : com.sun.tools.javadoc.MethodDocImpl;
	
	/**
	* Find constructor in this class.
	*
	* @param constrName the unqualified name to search for.
	* @param paramTypeArray the array of Strings for constructor parameters.
	* @return the first ConstructorDocImpl which matches, null if not found.
	*/
	@:overload public function findConstructor(constrName : String, paramTypes : java.NativeArray<String>) : com.sun.javadoc.ConstructorDoc;
	
	/**
	* Find a field in this class scope.
	* Search order: this class, outerclasses, interfaces,
	* superclasses. IMP: If see tag is defined in an inner class,
	* which extends a super class and if outerclass and the super
	* class have a visible field in common then Java compiler cribs
	* about the ambiguity, but the following code will search in the
	* above given search order.
	*
	* @param fieldName the unqualified name to search for.
	* @return the first FieldDocImpl which matches, null if not found.
	*/
	@:overload public function findField(fieldName : String) : com.sun.javadoc.FieldDoc;
	
	/**
	* Get the list of classes declared as imported.
	* These are called "single-type-import declarations" in the JLS.
	* This method is deprecated in the ClassDoc interface.
	*
	* @return an array of ClassDocImpl representing the imported classes.
	*
	* @deprecated  Import declarations are implementation details that
	*          should not be exposed here.  In addition, not all imported
	*          classes are imported through single-type-import declarations.
	*/
	@:overload public function importedClasses() : java.NativeArray<com.sun.javadoc.ClassDoc>;
	
	/**
	* Get the list of packages declared as imported.
	* These are called "type-import-on-demand declarations" in the JLS.
	* This method is deprecated in the ClassDoc interface.
	*
	* @return an array of PackageDocImpl representing the imported packages.
	*
	* ###NOTE: the syntax supports importing all inner classes from a class as well.
	* @deprecated  Import declarations are implementation details that
	*          should not be exposed here.  In addition, this method's
	*          return type does not allow for all type-import-on-demand
	*          declarations to be returned.
	*/
	@:overload public function importedPackages() : java.NativeArray<com.sun.javadoc.PackageDoc>;
	
	/**
	* Return the type's dimension information.
	* Always return "", as this is not an array type.
	*/
	@:overload public function dimension() : String;
	
	/**
	* Return this type as a class, which it already is.
	*/
	@:overload public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return null (unless overridden), as this is not an annotation type.
	*/
	@:overload public function asAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	/**
	* Return null, as this is not a class instantiation.
	*/
	@:overload public function asParameterizedType() : com.sun.javadoc.ParameterizedType;
	
	/**
	* Return null, as this is not a type variable.
	*/
	@:overload public function asTypeVariable() : com.sun.javadoc.TypeVariable;
	
	/**
	* Return null, as this is not a wildcard type.
	*/
	@:overload public function asWildcardType() : com.sun.javadoc.WildcardType;
	
	/**
	* Return false, as this is not a primitive type.
	*/
	@:overload public function isPrimitive() : Bool;
	
	/**
	* Return true if this class implements <code>java.io.Serializable</code>.
	*
	* Since <code>java.io.Externalizable</code> extends
	* <code>java.io.Serializable</code>,
	* Externalizable objects are also Serializable.
	*/
	@:overload public function isSerializable() : Bool;
	
	/**
	* Return true if this class implements
	* <code>java.io.Externalizable</code>.
	*/
	@:overload public function isExternalizable() : Bool;
	
	/**
	* Return the serialization methods for this class.
	*
	* @return an array of <code>MethodDocImpl</code> that represents
	* the serialization methods for this class.
	*/
	@:overload public function serializationMethods() : java.NativeArray<com.sun.javadoc.MethodDoc>;
	
	/**
	* Return the Serializable fields of class.<p>
	*
	* Return either a list of default fields documented by
	* <code>serial</code> tag<br>
	* or return a single <code>FieldDoc</code> for
	* <code>serialPersistentField</code> member.
	* There should be a <code>serialField</code> tag for
	* each Serializable field defined by an <code>ObjectStreamField</code>
	* array component of <code>serialPersistentField</code>.
	*
	* @returns an array of <code>FieldDoc</code> for the Serializable fields
	* of this class.
	*
	* @see #definesSerializableFields()
	* @see SerialFieldTagImpl
	*/
	@:overload public function serializableFields() : java.NativeArray<com.sun.javadoc.FieldDoc>;
	
	/**
	* Return true if Serializable fields are explicitly defined with
	* the special class member <code>serialPersistentFields</code>.
	*
	* @see #serializableFields()
	* @see SerialFieldTagImpl
	*/
	@:overload public function definesSerializableFields() : Bool;
	
	/**
	* Return the source position of the entity, or null if
	* no position is available.
	*/
	@:overload override public function position() : com.sun.javadoc.SourcePosition;
	
	
}
