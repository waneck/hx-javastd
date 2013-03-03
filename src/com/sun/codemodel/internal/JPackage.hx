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
extern class JPackage implements com.sun.codemodel.internal.JDeclaration implements com.sun.codemodel.internal.JGenerable implements com.sun.codemodel.internal.JClassContainer implements com.sun.codemodel.internal.JAnnotatable implements java.lang.Comparable<com.sun.codemodel.internal.JPackage> implements com.sun.codemodel.internal.JDocCommentable
{
	@:overload @:public public function parentContainer() : com.sun.codemodel.internal.JClassContainer;
	
	/**
	* Gets the parent package, or null if this class is the root package.
	*/
	@:overload @:public public function parent() : com.sun.codemodel.internal.JPackage;
	
	@:overload @:public public function isClass() : Bool;
	
	@:overload @:public public function isPackage() : Bool;
	
	@:overload @:public public function getPackage() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Add a class to this package.
	*
	* @param mods
	*        Modifiers for this class declaration
	*
	* @param name
	*        Name of class to be added to this package
	*
	* @return Newly generated class
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload @:public public function _class(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* {@inheritDoc}
	* @deprecated
	*/
	@:overload @:public public function _class(mods : Int, name : String, isInterface : Bool) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:public public function _class(mods : Int, name : String, classTypeVal : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Adds a public class to this package.
	*/
	@:overload @:public public function _class(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Gets a reference to the already created {@link JDefinedClass}.
	*
	* @return null
	*      If the class is not yet created.
	*/
	@:overload @:public public function _getClass(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Order is based on the lexicological order of the package name.
	*/
	@:overload @:public public function compareTo(that : com.sun.codemodel.internal.JPackage) : Int;
	
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
	@:overload @:public public function _interface(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Adds a public interface to this package.
	*/
	@:overload @:public public function _interface(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add an annotationType Declaration to this package
	* @param name
	*      Name of the annotation Type declaration to be added to this package
	* @return
	*      newly created Annotation Type Declaration
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.

	*/
	@:overload @:public public function _annotationTypeDeclaration(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add a public enum to this package
	* @param name
	*      Name of the enum to be added to this package
	* @return
	*      newly created Enum
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.

	*/
	@:overload @:public public function _enum(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Adds a new resource file to this package.
	*/
	@:overload @:public public function addResourceFile(rsrc : com.sun.codemodel.internal.JResourceFile) : com.sun.codemodel.internal.JResourceFile;
	
	/**
	* Checks if a resource of the given name exists.
	*/
	@:overload @:public public function hasResourceFile(name : String) : Bool;
	
	/**
	* Iterates all resource files in this package.
	*/
	@:overload @:public public function propertyFiles() : java.util.Iterator<com.sun.codemodel.internal.JResourceFile>;
	
	/**
	* Creates, if necessary, and returns the package javadoc for this
	* JDefinedClass.
	*
	* @return JDocComment containing javadocs for this class
	*/
	@:overload @:public public function javadoc() : com.sun.codemodel.internal.JDocComment;
	
	/**
	* Removes a class from this package.
	*/
	@:overload @:public public function remove(c : com.sun.codemodel.internal.JClass) : Void;
	
	/**
	* Reference a class within this package.
	*/
	@:overload @:public public function ref(name : String) : com.sun.codemodel.internal.JClass;
	
	/**
	* Gets a reference to a sub package of this package.
	*/
	@:overload @:public public function subPackage(pkg : String) : com.sun.codemodel.internal.JPackage;
	
	/**
	* Returns an iterator that walks the top-level classes defined in this
	* package.
	*/
	@:overload @:public public function classes() : java.util.Iterator<com.sun.codemodel.internal.JDefinedClass>;
	
	/**
	* Checks if a given name is already defined as a class/interface
	*/
	@:overload @:public public function isDefined(classLocalName : String) : Bool;
	
	/**
	* Checks if this package is the root, unnamed package.
	*/
	@:overload @:public @:final public function isUnnamed() : Bool;
	
	/**
	* Get the name of this package
	*
	* @return
	*          The name of this package, or the empty string if this is the
	*          null package. For example, this method returns strings like
	*          <code>"java.lang"</code>
	*/
	@:overload @:public public function name() : String;
	
	/**
	* Return the code model root object being used to create this package.
	*/
	@:overload @:public @:final public function owner() : com.sun.codemodel.internal.JCodeModel;
	
	@:overload @:public public function annotate(clazz : com.sun.codemodel.internal.JClass) : com.sun.codemodel.internal.JAnnotationUse;
	
	@:overload @:public public function annotate(clazz : Class<java.lang.annotation.Annotation>) : com.sun.codemodel.internal.JAnnotationUse;
	
	@:overload @:public public function annotate2<W : com.sun.codemodel.internal.JAnnotationWriter<Dynamic>>(clazz : Class<W>) : W;
	
	@:overload @:public public function annotations() : java.util.Collection<com.sun.codemodel.internal.JAnnotationUse>;
	
	@:overload @:public public function declare(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	@:overload @:public public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
