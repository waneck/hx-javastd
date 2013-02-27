package javax.lang.model.type;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern interface ExecutableType extends javax.lang.model.type.TypeMirror
{
	/**
	* Returns the type variables declared by the formal type parameters
	* of this executable.
	*
	* @return the type variables declared by the formal type parameters,
	*          or an empty list if there are none
	*/
	@:overload public function getTypeVariables() : java.util.List<javax.lang.model.type.TypeVariable>;
	
	/**
	* Returns the return type of this executable.
	* Returns a {@link NoType} with kind {@link TypeKind#VOID VOID}
	* if this executable is not a method, or is a method that does not
	* return a value.
	*
	* @return the return type of this executable
	*/
	@:overload public function getReturnType() : javax.lang.model.type.TypeMirror;
	
	/**
	* Returns the types of this executable's formal parameters.
	*
	* @return the types of this executable's formal parameters,
	*          or an empty list if there are none
	*/
	@:overload public function getParameterTypes() : java.util.List<javax.lang.model.type.TypeMirror>;
	
	/**
	* Returns the exceptions and other throwables listed in this
	* executable's {@code throws} clause.
	*
	* @return the exceptions and other throwables listed in this
	*          executable's {@code throws} clause,
	*          or an empty list if there are none.
	*/
	@:overload public function getThrownTypes() : java.util.List<javax.lang.model.type.TypeMirror>;
	
	
}
