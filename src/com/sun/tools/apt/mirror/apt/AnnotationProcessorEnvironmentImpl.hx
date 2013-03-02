package com.sun.tools.apt.mirror.apt;
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
/*
* Annotation Processor Environment implementation.
*/
extern class AnnotationProcessorEnvironmentImpl implements com.sun.mirror.apt.AnnotationProcessorEnvironment
{
	@:overload public function new(spectypedecls : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>, typedecls : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>, origOptions : java.util.Map<String, String>, context : com.sun.tools.javac.util.Context) : Void;
	
	@:overload public function getOptions() : java.util.Map<String, String>;
	
	@:overload public function getMessager() : com.sun.mirror.apt.Messager;
	
	@:overload public function getFiler() : com.sun.mirror.apt.Filer;
	
	@:overload public function getSpecifiedTypeDeclarations() : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>;
	
	@:overload public function getPackage(name : String) : com.sun.mirror.declaration.PackageDeclaration;
	
	@:overload public function getTypeDeclaration(name : String) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload public function getTypeDeclarations() : java.util.Collection<com.sun.mirror.declaration.TypeDeclaration>;
	
	@:overload public function getDeclarationsAnnotatedWith(a : com.sun.mirror.declaration.AnnotationTypeDeclaration) : java.util.Collection<com.sun.mirror.declaration.Declaration>;
	
	@:overload public function getDeclarationUtils() : com.sun.mirror.util.Declarations;
	
	@:overload public function getTypeUtils() : com.sun.mirror.util.Types;
	
	@:overload public function addListener(listener : com.sun.mirror.apt.AnnotationProcessorListener) : Void;
	
	@:overload public function removeListener(listener : com.sun.mirror.apt.AnnotationProcessorListener) : Void;
	
	@:overload public function roundComplete() : Void;
	
	
}
@:native('com$sun$tools$apt$mirror$apt$AnnotationProcessorEnvironmentImpl$CollectingAP') @:internal extern class AnnotationProcessorEnvironmentImpl_CollectingAP implements com.sun.mirror.apt.AnnotationProcessor
{
	@:overload public function process() : Void;
	
	
}
@:native('com$sun$tools$apt$mirror$apt$AnnotationProcessorEnvironmentImpl$CollectingAP$CollectingVisitor') @:internal extern class AnnotationProcessorEnvironmentImpl_CollectingAP_CollectingVisitor extends com.sun.mirror.util.SimpleDeclarationVisitor
{
	@:overload public function visitDeclaration(d : com.sun.mirror.declaration.Declaration) : Void;
	
	
}
