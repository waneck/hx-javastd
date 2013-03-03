package com.sun.mirror.util;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
* A visitor for declarations, in the style of the standard visitor
* design pattern.  Classes implementing this interface are used to
* operate on a declaration when the kind of declaration is unknown at
* compile time.  When a visitor is passed to a declaration's {@link
* Declaration#accept accept} method, the most specific
* <tt>visit<i>Xxx</i></tt> method applicable to that declaration is
* invoked.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is {@link
* javax.lang.model.element.ElementVisitor}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface DeclarationVisitor
{
	/**
	* Visits a declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitDeclaration(d : com.sun.mirror.declaration.Declaration) : Void;
	
	/**
	* Visits a package declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitPackageDeclaration(d : com.sun.mirror.declaration.PackageDeclaration) : Void;
	
	/**
	* Visits a member or constructor declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitMemberDeclaration(d : com.sun.mirror.declaration.MemberDeclaration) : Void;
	
	/**
	* Visits a type declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitTypeDeclaration(d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	/**
	* Visits a class declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	/**
	* Visits an enum declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitEnumDeclaration(d : com.sun.mirror.declaration.EnumDeclaration) : Void;
	
	/**
	* Visits an interface declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	/**
	* Visits an annotation type declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitAnnotationTypeDeclaration(d : com.sun.mirror.declaration.AnnotationTypeDeclaration) : Void;
	
	/**
	* Visits a field declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitFieldDeclaration(d : com.sun.mirror.declaration.FieldDeclaration) : Void;
	
	/**
	* Visits an enum constant declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitEnumConstantDeclaration(d : com.sun.mirror.declaration.EnumConstantDeclaration) : Void;
	
	/**
	* Visits a method or constructor declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitExecutableDeclaration(d : com.sun.mirror.declaration.ExecutableDeclaration) : Void;
	
	/**
	* Visits a constructor declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitConstructorDeclaration(d : com.sun.mirror.declaration.ConstructorDeclaration) : Void;
	
	/**
	* Visits a method declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitMethodDeclaration(d : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	/**
	* Visits an annotation type element declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitAnnotationTypeElementDeclaration(d : com.sun.mirror.declaration.AnnotationTypeElementDeclaration) : Void;
	
	/**
	* Visits a parameter declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitParameterDeclaration(d : com.sun.mirror.declaration.ParameterDeclaration) : Void;
	
	/**
	* Visits a type parameter declaration.
	* @param d the declaration to visit
	*/
	@:overload @:public public function visitTypeParameterDeclaration(d : com.sun.mirror.declaration.TypeParameterDeclaration) : Void;
	
	
}
