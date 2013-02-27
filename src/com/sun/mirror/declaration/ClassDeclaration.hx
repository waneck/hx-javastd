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
extern interface ClassDeclaration extends com.sun.mirror.declaration.TypeDeclaration
{
	/**
	* Returns the class type directly extended by this class.
	* The only class with no superclass is <tt>java.lang.Object</tt>,
	* for which this method returns null.
	*
	* @return the class type directly extended by this class, or null
	* if there is none
	*/
	@:overload public function getSuperclass() : com.sun.mirror.type.ClassType;
	
	/**
	* Returns the constructors of this class.
	* This includes the default constructor if this class has
	* no constructors explicitly declared.
	*
	* @return the constructors of this class
	*
	* @see com.sun.mirror.util.DeclarationFilter
	*/
	@:overload public function getConstructors() : java.util.Collection<com.sun.mirror.declaration.ConstructorDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload public function getMethods() : java.util.Collection<com.sun.mirror.declaration.MethodDeclaration>;
	
	
}
