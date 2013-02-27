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
* A simple visitor for declarations.
*
* <p> The implementations of the methods of this class do nothing but
* delegate up the declaration hierarchy.  A subclass should override the
* methods that correspond to the kinds of declarations on which it
* will operate.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this class is {@link
* javax.lang.model.util.SimpleElementVisitor6}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern class SimpleDeclarationVisitor implements com.sun.mirror.util.DeclarationVisitor
{
	/**
	* Creates a new <tt>SimpleDeclarationVisitor</tt>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Visits a declaration.
	* The implementation does nothing.
	* @param d the declaration to visit
	*/
	@:overload public function visitDeclaration(d : com.sun.mirror.declaration.Declaration) : Void;
	
	/**
	* Visits a package declaration.
	* The implementation simply invokes
	* {@link #visitDeclaration visitDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitPackageDeclaration(d : com.sun.mirror.declaration.PackageDeclaration) : Void;
	
	/**
	* Visits a member or constructor declaration.
	* The implementation simply invokes
	* {@link #visitDeclaration visitDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitMemberDeclaration(d : com.sun.mirror.declaration.MemberDeclaration) : Void;
	
	/**
	* Visits a type declaration.
	* The implementation simply invokes
	* {@link #visitMemberDeclaration visitMemberDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitTypeDeclaration(d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	/**
	* Visits a class declaration.
	* The implementation simply invokes
	* {@link #visitTypeDeclaration visitTypeDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	/**
	* Visits an enum declaration.
	* The implementation simply invokes
	* {@link #visitClassDeclaration visitClassDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitEnumDeclaration(d : com.sun.mirror.declaration.EnumDeclaration) : Void;
	
	/**
	* Visits an interface declaration.
	* The implementation simply invokes
	* {@link #visitTypeDeclaration visitTypeDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	/**
	* Visits an annotation type declaration.
	* The implementation simply invokes
	* {@link #visitInterfaceDeclaration visitInterfaceDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitAnnotationTypeDeclaration(d : com.sun.mirror.declaration.AnnotationTypeDeclaration) : Void;
	
	/**
	* Visits a field declaration.
	* The implementation simply invokes
	* {@link #visitMemberDeclaration visitMemberDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitFieldDeclaration(d : com.sun.mirror.declaration.FieldDeclaration) : Void;
	
	/**
	* Visits an enum constant declaration.
	* The implementation simply invokes
	* {@link #visitFieldDeclaration visitFieldDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitEnumConstantDeclaration(d : com.sun.mirror.declaration.EnumConstantDeclaration) : Void;
	
	/**
	* Visits a method or constructor declaration.
	* The implementation simply invokes
	* {@link #visitMemberDeclaration visitMemberDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitExecutableDeclaration(d : com.sun.mirror.declaration.ExecutableDeclaration) : Void;
	
	/**
	* Visits a constructor declaration.
	* The implementation simply invokes
	* {@link #visitExecutableDeclaration visitExecutableDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitConstructorDeclaration(d : com.sun.mirror.declaration.ConstructorDeclaration) : Void;
	
	/**
	* Visits a method declaration.
	* The implementation simply invokes
	* {@link #visitExecutableDeclaration visitExecutableDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitMethodDeclaration(d : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	/**
	* Visits an annotation type element declaration.
	* The implementation simply invokes
	* {@link #visitMethodDeclaration visitMethodDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitAnnotationTypeElementDeclaration(d : com.sun.mirror.declaration.AnnotationTypeElementDeclaration) : Void;
	
	/**
	* Visits a parameter declaration.
	* The implementation simply invokes
	* {@link #visitDeclaration visitDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitParameterDeclaration(d : com.sun.mirror.declaration.ParameterDeclaration) : Void;
	
	/**
	* Visits a type parameter declaration.
	* The implementation simply invokes
	* {@link #visitDeclaration visitDeclaration}.
	* @param d the declaration to visit
	*/
	@:overload public function visitTypeParameterDeclaration(d : com.sun.mirror.declaration.TypeParameterDeclaration) : Void;
	
	
}
