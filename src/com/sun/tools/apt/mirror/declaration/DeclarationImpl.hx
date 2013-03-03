package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of Declaration
*/
extern class DeclarationImpl implements com.sun.mirror.declaration.Declaration
{
	@:protected @:final private var env(default, null) : com.sun.tools.apt.mirror.AptEnv;
	
	@:public @:final public var sym(default, null) : com.sun.tools.javac.code.Symbol;
	
	@:protected @:static @:final private static var identityFilter(default, null) : com.sun.mirror.util.DeclarationFilter;
	
	/**
	* "sym" should be completed before this constructor is called.
	*/
	@:overload @:protected private function new(env : com.sun.tools.apt.mirror.AptEnv, sym : com.sun.tools.javac.code.Symbol) : Void;
	
	/**
	* {@inheritDoc}
	* <p> ParameterDeclarationImpl overrides this implementation.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* {@inheritDoc}
	* <p> ParameterDeclarationImpl overrides this implementation.
	*/
	@:overload @:public public function hashCode() : Int;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getDocComment() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getAnnotationMirrors() : java.util.Collection<com.sun.mirror.declaration.AnnotationMirror>;
	
	/**
	* {@inheritDoc}
	* Overridden by ClassDeclarationImpl to handle @Inherited.
	*/
	@:overload @:public public function getAnnotation<A : java.lang.annotation.Annotation>(annoType : Class<A>) : A;
	
	@:overload @:protected private function getAnnotation<A : java.lang.annotation.Annotation>(annoType : Class<A>, annotated : com.sun.tools.javac.code.Symbol) : A;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getModifiers() : java.util.Collection<com.sun.mirror.declaration.Modifier>;
	
	/**
	* {@inheritDoc}
	* Overridden in some subclasses.
	*/
	@:overload @:public public function getSimpleName() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getPosition() : com.sun.mirror.util.SourcePosition;
	
	/**
	* Applies a visitor to this declaration.
	*
	* @param v the visitor operating on this declaration
	*/
	@:overload @:public public function accept(v : com.sun.mirror.util.DeclarationVisitor) : Void;
	
	/**
	* Returns the symbols of type or package members (and constructors)
	* that are not synthetic or otherwise unwanted.
	* Caches the result if "cache" is true.
	*/
	@:overload @:protected private function getMembers(cache : Bool) : java.util.Collection<com.sun.tools.javac.code.Symbol>;
	
	
}
