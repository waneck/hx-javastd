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
extern interface JClassContainer
{
	/**
	* Returns true if the container is a class.
	*/
	@:overload public function isClass() : Bool;
	
	/**
	* Returns true if the container is a package.
	*/
	@:overload public function isPackage() : Bool;
	
	/**
	* Add a new class to this package/class.
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
	@:overload public function _class(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add a new public class to this class/package.
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload public function _class(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Add an interface to this class/package.
	*
	* @param mods
	*        Modifiers for this interface declaration
	*
	* @param name
	*        Name of interface to be added to this package
	*
	* @return Newly generated interface
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload public function _interface(mods : Int, name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Adds a public interface to this package.
	*
	* @exception JClassAlreadyExistsException
	*      When the specified class/interface was already created.
	*/
	@:overload public function _interface(name : String) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Create a new class or a new interface.
	*
	* @deprecated
	*      use {@link #_class(int, String, ClassType)}
	*/
	@:overload public function _class(mods : Int, name : String, isInterface : Bool) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Creates a new class/enum/interface/annotation.
	*/
	@:overload public function _class(mods : Int, name : String, kind : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	/**
	* Returns an iterator that walks the nested classes defined in this
	* class.
	*/
	@:overload public function classes() : java.util.Iterator<com.sun.codemodel.internal.JDefinedClass>;
	
	/**
	* Parent JClassContainer.
	*
	* If this is a package, this method returns a parent package,
	* or null if this package is the root package.
	*
	* If this is an outer-most class, this method returns a package
	* to which it belongs.
	*
	* If this is an inner class, this method returns the outer
	* class.
	*/
	@:overload public function parentContainer() : com.sun.codemodel.internal.JClassContainer;
	
	/**
	* Gets the nearest package parent.
	*
	* <p>
	* If <tt>this.isPackage()</tt>, then return <tt>this</tt>.
	*/
	@:overload public function getPackage() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Get the root code model object.
	*/
	@:overload public function owner() : com.sun.codemodel.internal.JCodeModel;
	
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
	
	
}
