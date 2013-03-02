package com.sun.mirror.util;
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
@:internal extern class SourceOrderDeclScanner extends com.sun.mirror.util.DeclarationScanner
{
	/**
	* Visits a type declaration.
	*
	* @param d the declaration to visit
	*/
	@:overload override public function visitTypeDeclaration(d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	/**
	* Visits a class declaration.
	*
	* @param d the declaration to visit
	*/
	@:overload override public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload override public function visitExecutableDeclaration(d : com.sun.mirror.declaration.ExecutableDeclaration) : Void;
	
	
}
/**
* A visitor for declarations that scans declarations contained within
* the given declaration in source code order.  For example, when
* visiting a class, the methods, fields, constructors, and nested
* types of the class are also visited.
*
* To control the processing done on a declaration, users of this
* class pass in their own visitors for pre and post processing.  The
* preprocessing visitor is called before the contained declarations
* are scanned; the postprocessing visitor is called after the
* contained declarations are scanned.
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
@:require(java5) @:native('com$sun$mirror$util$SourceOrderDeclScanner$SourceOrderComparator') @:internal extern class SourceOrderDeclScanner_SourceOrderComparator implements java.util.Comparator<com.sun.mirror.declaration.Declaration>
{
	@:overload public function compare(d1 : com.sun.mirror.declaration.Declaration, d2 : com.sun.mirror.declaration.Declaration) : Int;
	
	
}
@:native('com$sun$mirror$util$SourceOrderDeclScanner$SourceOrderComparator$DeclPartialOrder') @:internal extern class SourceOrderDeclScanner_SourceOrderComparator_DeclPartialOrder extends com.sun.mirror.util.SimpleDeclarationVisitor
{
	@:overload public function getValue() : Int;
	
	@:overload public function visitTypeParameterDeclaration(d : com.sun.mirror.declaration.TypeParameterDeclaration) : Void;
	
	@:overload public function visitEnumConstantDeclaration(d : com.sun.mirror.declaration.EnumConstantDeclaration) : Void;
	
	@:overload public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload public function visitEnumDeclaration(d : com.sun.mirror.declaration.EnumDeclaration) : Void;
	
	@:overload public function visitAnnotationTypeDeclaration(d : com.sun.mirror.declaration.AnnotationTypeDeclaration) : Void;
	
	@:overload public function visitFieldDeclaration(d : com.sun.mirror.declaration.FieldDeclaration) : Void;
	
	@:overload public function visitConstructorDeclaration(d : com.sun.mirror.declaration.ConstructorDeclaration) : Void;
	
	@:overload public function visitMethodDeclaration(d : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	
}
