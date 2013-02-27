package com.sun.tools.javadoc;
/*
* Copyright (c) 1997, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodDocImpl extends com.sun.tools.javadoc.ExecutableMemberDocImpl implements com.sun.javadoc.MethodDoc
{
	/**
	* constructor.
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : MethodSymbol) : Void;
	
	/**
	* constructor.
	*/
	@:overload public function new(env : com.sun.tools.javadoc.DocEnv, sym : MethodSymbol, docComment : String, tree : com.sun.tools.javac.tree.JCTree.JCTree_JCMethodDecl, lineMap : com.sun.tools.javac.util.Position.Position_LineMap) : Void;
	
	/**
	* Return true if it is a method, which it is.
	* Note: constructors are not methods.
	* This method is overridden by AnnotationTypeElementDocImpl.
	*
	* @return true
	*/
	@:overload override public function isMethod() : Bool;
	
	/**
	* Return true if this method is abstract
	*/
	@:overload public function isAbstract() : Bool;
	
	/**
	* Get return type.
	*
	* @return the return type of this method, null if it
	* is a constructor.
	*/
	@:overload public function returnType() : com.sun.javadoc.Type;
	
	/**
	* Return the class that originally defined the method that
	* is overridden by the current definition, or null if no
	* such class exists.
	*
	* @return a ClassDocImpl representing the superclass that
	* originally defined this method, null if this method does
	* not override a definition in a superclass.
	*/
	@:overload public function overriddenClass() : com.sun.javadoc.ClassDoc;
	
	/**
	* Return the type containing the method that this method overrides.
	* It may be a <code>ClassDoc</code> or a <code>ParameterizedType</code>.
	*/
	@:overload public function overriddenType() : com.sun.javadoc.Type;
	
	/**
	* Return the method that this method overrides.
	*
	* @return a MethodDoc representing a method definition
	* in a superclass this method overrides, null if
	* this method does not override.
	*/
	@:overload public function overriddenMethod() : com.sun.javadoc.MethodDoc;
	
	/**
	* Tests whether this method overrides another.
	* The overridden method may be one declared in a superclass or
	* a superinterface (unlike {@link #overriddenMethod()}).
	*
	* <p> When a non-abstract method overrides an abstract one, it is
	* also said to <i>implement</i> the other.
	*
	* @param meth  the other method to examine
	* @return <tt>true</tt> if this method overrides the other
	*/
	@:overload public function overrides(meth : com.sun.javadoc.MethodDoc) : Bool;
	
	@:overload override public function name() : String;
	
	@:overload override public function qualifiedName() : String;
	
	/**
	* Returns a string representation of this method.  Includes the
	* qualified signature, the qualified method name, and any type
	* parameters.  Type parameters follow the class name, as they do
	* in the syntax for invoking methods with explicit type parameters.
	*/
	@:overload override public function toString() : String;
	
	
}
