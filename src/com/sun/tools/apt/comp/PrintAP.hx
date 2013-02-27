package com.sun.tools.apt.comp;
/*
* Copyright (c) 2004, 2006, Oracle and/or its affiliates. All rights reserved.
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
* Class used to implement "-print" option.
*/
extern class PrintAP implements com.sun.mirror.apt.AnnotationProcessor
{
	@:overload public function process() : Void;
	
	
}
@:native('com$sun$tools$apt$comp$PrintAP$PrintingVisitors') @:internal extern class PrintAP_PrintingVisitors
{
	
}
@:native('com$sun$tools$apt$comp$PrintAP$PrintingVisitors$PrePrinting') @:internal extern class PrintAP_PrintingVisitors_PrePrinting extends com.sun.mirror.util.SimpleDeclarationVisitor
{
	@:overload override public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload override public function visitEnumDeclaration(d : com.sun.mirror.declaration.EnumDeclaration) : Void;
	
	@:overload override public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload override public function visitAnnotationTypeDeclaration(d : com.sun.mirror.declaration.AnnotationTypeDeclaration) : Void;
	
	@:overload override public function visitFieldDeclaration(d : com.sun.mirror.declaration.FieldDeclaration) : Void;
	
	@:overload override public function visitEnumConstantDeclaration(d : com.sun.mirror.declaration.EnumConstantDeclaration) : Void;
	
	@:overload override public function visitMethodDeclaration(d : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	@:overload override public function visitConstructorDeclaration(d : com.sun.mirror.declaration.ConstructorDeclaration) : Void;
	
	
}
@:native('com$sun$tools$apt$comp$PrintAP$PrintingVisitors$PostPrinting') @:internal extern class PrintAP_PrintingVisitors_PostPrinting extends com.sun.mirror.util.SimpleDeclarationVisitor
{
	@:overload override public function visitTypeDeclaration(d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	
}
