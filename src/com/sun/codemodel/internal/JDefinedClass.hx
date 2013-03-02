package com.sun.codemodel.internal;
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
extern class JDefinedClass extends com.sun.codemodel.internal.JClass implements com.sun.codemodel.internal.JDeclaration implements com.sun.codemodel.internal.JClassContainer implements com.sun.codemodel.internal.JGenerifiable implements com.sun.codemodel.internal.JAnnotatable implements com.sun.codemodel.internal.JDocCommentable
{
	/**
	* Client-app spcific metadata associated with this user-created class.
	*/
	public var metadata : Dynamic;
	
	/**
	* Returns true if this is an anonymous class.
	*/
	@:overload @:final public function isAnonymous() : Bool;
	
	/**
	* This class extends the specifed class.
	*
	* @param superClass
	*        Superclass for this class
	*
	* @return This class
	*/
	@:overload public function _extends(superClass : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function _extends(superClass : Class<Dynamic>) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Returns the class extended by this class.
	*/
	@:overload override public function _extends() : com.sun.codemodel.internal.JClass;
	
	/**
	* This class implements the specifed interface.
	*
	* @param iface
	*        Interface that this class implements
	*
	* @return This class
	*/
	@:overload public function _implements(iface : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function _implements(iface : Class<Dynamic>) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Returns an iterator that walks the nested classes defined in this
	* class.
	*/
	@:overload override public function _implements() : java.util.Iterator<com.sun.codemodel.internal.JClass>;
	
	/**
	* JClass name accessor.
	*
	* <p>
	* For example, for <code>java.util.List</code>, this method
	* returns <code>"List"</code>"
	*
	* @return Name of this class
	*/
	@:overload override public function name() : String;
	
	/**
	* If the named enum already exists, the reference to it is returned.
	* Otherwise this method generates a new enum reference with the given
	* name and returns it.
	*
	* @param name
	*          The name of the constant.
	* @return
	*      The generated type-safe enum constant.
	*/
	@:overload public function enumConstant(name : String) : com.sun.codemodel.internal.JEnumConstant;
	
	/**
	* Gets the fully qualified name of this class.
	*/
	@:overload override public function fullName() : String;
	
	@:overload override public function binaryName() : String;
	
	@:overload override public function isInterface() : Bool;
	
	@:overload override public function isAbstract() : Bool;
	
	/**
	* Adds a field to the list of field members of this JDefinedClass.
	*
	* @param mods
	*        Modifiers for this field
	*
	* @param type
	*        JType of this field
	*
	* @param name
	*        Name of this field
	*
	* @return Newly generated field
	*/
	@:overload public function field(mods : Int, type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JFieldVar;
	
	@:overload public function field(mods : Int, type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JFieldVar;
	
	/**
	* Adds a field to the list of field members of this JDefinedClass.
	*
	* @param mods
	*        Modifiers for this field.
	* @param type
	*        JType of this field.
	* @param name
	*        Name of this field.
	* @param init
	*        Initial value of this field.
	*
	* @return Newly generated field
	*/
	@:overload public function field(mods : Int, type : com.sun.codemodel.internal.JType, name : String, init : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JFieldVar;
	
	/**  This method indicates if the interface
	*   is an annotationTypeDeclaration
	*
	*/
	@:overload public function isAnnotationTypeDeclaration() : Bool;
	
	/**
	* Add an annotationType Declaration to this package
	* @param name
	*      Name of the annotation Type declaration to be added to this package
	* @return
	*      newly created Annotation Type Declaration
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.

	*/
	@:overload public function _annotationTypeDeclaration(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add a public enum to this package
	* @param name
	*      Name of the enum to be added to this package
	* @return
	*      newly created Enum
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.

	*/
	@:overload public function _enum(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add a public enum to this package
	* @param name
	*      Name of the enum to be added to this package
	* @param mods
	*          Modifiers for this enum declaration
	* @return
	*      newly created Enum
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.

	*/
	@:overload public function _enum(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function getClassType() : com.sun.codemodel.internal.ClassType;
	
	@:overload public function field(mods : Int, type : Class<Dynamic>, name : String, init : com.sun.codemodel.internal.JExpression) : com.sun.codemodel.internal.JFieldVar;
	
	/**
	* Returns all the fields declred in this class.
	* The returned {@link Map} is a read-only live view.
	*
	* @return always non-null.
	*/
	@:overload public function fields() : java.util.Map<String, com.sun.codemodel.internal.JFieldVar>;
	
	/**
	* Removes a {@link JFieldVar} from this class.
	*
	* @throws IllegalArgumentException
	*      if the given field is not a field on this class.
	*/
	@:overload public function removeField(field : com.sun.codemodel.internal.JFieldVar) : Void;
	
	/**
	* Creates, if necessary, and returns the static initializer
	* for this class.
	*
	* @return JBlock containing initialization statements for this class
	*/
	@:overload public function init() : com.sun.codemodel.internal.JBlock;
	
	/**
	* Adds a constructor to this class.
	*
	* @param mods
	*        Modifiers for this constructor
	*/
	@:overload public function constructor(mods : Int) : com.sun.codemodel.internal.JMethod;
	
	/**
	* Returns an iterator that walks the constructors defined in this class.
	*/
	@:overload public function constructors() : java.util.Iterator<com.sun.codemodel.internal.JMethod>;
	
	/**
	* Looks for a method that has the specified method signature
	* and return it.
	*
	* @return
	*      null if not found.
	*/
	@:overload public function getConstructor(argTypes : java.NativeArray<com.sun.codemodel.internal.JType>) : com.sun.codemodel.internal.JMethod;
	
	/**
	* Add a method to the list of method members of this JDefinedClass instance.
	*
	* @param mods
	*        Modifiers for this method
	*
	* @param type
	*        Return type for this method
	*
	* @param name
	*        Name of the method
	*
	* @return Newly generated JMethod
	*/
	@:overload public function method(mods : Int, type : com.sun.codemodel.internal.JType, name : String) : com.sun.codemodel.internal.JMethod;
	
	@:overload public function method(mods : Int, type : Class<Dynamic>, name : String) : com.sun.codemodel.internal.JMethod;
	
	/**
	* Returns the set of methods defined in this class.
	*/
	@:overload public function methods() : java.util.Collection<com.sun.codemodel.internal.JMethod>;
	
	/**
	* Looks for a method that has the specified method signature
	* and return it.
	*
	* @return
	*      null if not found.
	*/
	@:overload public function getMethod(name : String, argTypes : java.NativeArray<com.sun.codemodel.internal.JType>) : com.sun.codemodel.internal.JMethod;
	
	@:overload public function isClass() : Bool;
	
	@:overload public function isPackage() : Bool;
	
	@:overload public function getPackage() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Add a new nested class to this class.
	*
	* @param mods
	*        Modifiers for this class declaration
	*
	* @param name
	*        Name of class to be added to this package
	*
	* @return Newly generated class
	*/
	@:overload public function _class(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* {@inheritDoc}
	*
	* @deprecated
	*/
	@:overload public function _class(mods : Int, name : String, isInterface : Bool) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload public function _class(mods : Int, name : String, classTypeVal : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add a new public nested class to this class.
	*/
	@:overload public function _class(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add an interface to this package.
	*
	* @param mods
	*        Modifiers for this interface declaration
	*
	* @param name
	*        Name of interface to be added to this package
	*
	* @return Newly generated interface
	*/
	@:overload public function _interface(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Adds a public interface to this package.
	*/
	@:overload public function _interface(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates, if necessary, and returns the class javadoc for this
	* JDefinedClass
	*
	* @return JDocComment containing javadocs for this class
	*/
	@:overload public function javadoc() : com.sun.codemodel.internal.JDocComment;
	
	/**
	* Mark this file as hidden, so that this file won't be
	* generated.
	*
	* <p>
	* This feature could be used to generate code that refers
	* to class X, without actually generating X.java.
	*/
	@:overload public function hide() : Void;
	
	@:overload public function isHidden() : Bool;
	
	/**
	* Returns an iterator that walks the nested classes defined in this
	* class.
	*/
	@:overload @:final public function classes() : java.util.Iterator<com.sun.codemodel.internal.JDefinedClass>;
	
	/**
	* Returns all the nested classes defined in this class.
	*/
	@:overload @:final public function listClasses() : java.NativeArray<com.sun.codemodel.internal.JClass>;
	
	@:overload override public function outer() : com.sun.codemodel.internal.JClass;
	
	@:overload public function declare(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	/**
	* prints the body of a class.
	*/
	@:overload private function declareBody(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	/**
	* Places the given string directly inside the generated class.
	*
	* This method can be used to add methods/fields that are not
	* generated by CodeModel.
	* This method should be used only as the last resort.
	*/
	@:overload public function direct(string : String) : Void;
	
	@:overload @:final override public function _package() : com.sun.codemodel.internal.JPackage;
	
	@:overload @:final public function parentContainer() : com.sun.codemodel.internal.JClassContainer;
	
	@:overload public function generify(name : String) : com.sun.codemodel.internal.JTypeVar;
	
	@:overload public function generify(name : String, bound : Class<Dynamic>) : com.sun.codemodel.internal.JTypeVar;
	
	@:overload public function generify(name : String, bound : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JTypeVar;
	
	@:overload override public function typeParams() : java.NativeArray<com.sun.codemodel.internal.JTypeVar>;
	
	@:overload override private function substituteParams(variables : java.NativeArray<com.sun.codemodel.internal.JTypeVar>, bindings : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	/** Adding ability to annotate a class
	* @param clazz
	*          The annotation class to annotate the class with
	*/
	@:overload public function annotate(clazz : Class<java.lang.annotation.Annotation>) : com.sun.codemodel.internal.JAnnotationUse;
	
	/** Adding ability to annotate a class
	* @param clazz
	*          The annotation class to annotate the class with
	*/
	@:overload public function annotate(clazz : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JAnnotationUse;
	
	@:overload public function annotate2<W : com.sun.codemodel.internal.JAnnotationWriter<Dynamic>>(clazz : Class<W>) : W;
	
	/**
	* {@link JAnnotatable#annotations()}
	*/
	@:overload public function annotations() : java.util.Collection<com.sun.codemodel.internal.JAnnotationUse>;
	
	/**
	* @return
	*      the current modifiers of this class.
	*      Always return non-null valid object.
	*/
	@:overload public function mods() : com.sun.codemodel.internal.JMods;
	
	
}
