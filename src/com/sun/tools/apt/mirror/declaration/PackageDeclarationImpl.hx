package com.sun.tools.apt.mirror.declaration;
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
* Implementation of PackageDeclaration.
*/
extern class PackageDeclarationImpl extends com.sun.tools.apt.mirror.declaration.DeclarationImpl implements com.sun.mirror.declaration.PackageDeclaration
{
	@:overload @:public public function new(env : com.sun.tools.apt.mirror.AptEnv, sym : PackageSymbol) : Void;
	
	/**
	* Returns the qualified name.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getQualifiedName() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getClasses() : java.util.Collection<com.sun.mirror.declaration.ClassDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getEnums() : java.util.Collection<com.sun.mirror.declaration.EnumDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getInterfaces() : java.util.Collection<com.sun.mirror.declaration.InterfaceDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getAnnotationTypes() : java.util.Collection<com.sun.mirror.declaration.AnnotationTypeDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public override public function accept(v : com.sun.mirror.util.DeclarationVisitor) : Void;
	
	
}
