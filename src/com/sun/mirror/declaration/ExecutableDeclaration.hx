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
extern interface ExecutableDeclaration extends com.sun.mirror.declaration.MemberDeclaration
{
	/**
	* Returns <tt>true</tt> if this method or constructor accepts a variable
	* number of arguments.
	*
	* @return <tt>true</tt> if this method or constructor accepts a variable
	* number of arguments
	*/
	@:overload public function isVarArgs() : Bool;
	
	/**
	* Returns the formal type parameters of this method or constructor.
	* They are returned in declaration order.
	*
	* @return the formal type parameters of this method or constructor,
	* or an empty collection if there are none
	*/
	@:overload public function getFormalTypeParameters() : java.util.Collection<com.sun.mirror.declaration.TypeParameterDeclaration>;
	
	/**
	* Returns the formal parameters of this method or constructor.
	* They are returned in declaration order.
	*
	* @return the formal parameters of this method or constructor,
	* or an empty collection if there are none
	*/
	@:overload public function getParameters() : java.util.Collection<com.sun.mirror.declaration.ParameterDeclaration>;
	
	/**
	* Returns the exceptions and other throwables listed in this
	* method or constructor's <tt>throws</tt> clause.
	*
	* @return the exceptions and other throwables listed in the
	* <tt>throws</tt> clause, or an empty collection if there are none
	*/
	@:overload public function getThrownTypes() : java.util.Collection<com.sun.mirror.type.ReferenceType>;
	
	
}
