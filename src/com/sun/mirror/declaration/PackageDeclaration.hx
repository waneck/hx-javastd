package com.sun.mirror.declaration;
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
extern interface PackageDeclaration extends com.sun.mirror.declaration.Declaration
{
	/**
	* Returns the fully qualified name of this package.
	* This is also known as the package's <i>canonical</i> name.
	*
	* @return the fully qualified name of this package, or the
	* empty string if this is the unnamed package
	*/
	@:overload public function getQualifiedName() : String;
	
	/**
	* Returns the declarations of the top-level classes in this package.
	* Interfaces are not included, but enum types are.
	*
	* @return the declarations of the top-level classes in this package
	*
	* @see com.sun.mirror.util.DeclarationFilter
	*/
	@:overload public function getClasses() : java.util.Collection<com.sun.mirror.declaration.ClassDeclaration>;
	
	/**
	* Returns the declarations of the top-level enum types in this package.
	*
	* @return the declarations of the top-level enum types in this package
	*
	* @see com.sun.mirror.util.DeclarationFilter
	*/
	@:overload public function getEnums() : java.util.Collection<com.sun.mirror.declaration.EnumDeclaration>;
	
	/**
	* Returns the declarations of the top-level interfaces in this package.
	* Annotation types are included.
	*
	* @return the declarations of the top-level interfaces in this package
	*
	* @see com.sun.mirror.util.DeclarationFilter
	*/
	@:overload public function getInterfaces() : java.util.Collection<com.sun.mirror.declaration.InterfaceDeclaration>;
	
	/**
	* Returns the declarations of the top-level annotation types in this
	* package.
	*
	* @return the declarations of the top-level annotation types in this
	* package
	*
	* @see com.sun.mirror.util.DeclarationFilter
	*/
	@:overload public function getAnnotationTypes() : java.util.Collection<com.sun.mirror.declaration.AnnotationTypeDeclaration>;
	
	
}
