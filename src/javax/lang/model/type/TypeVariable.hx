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
extern interface TypeVariable extends javax.lang.model.type.ReferenceType
{
	/**
	* Returns the element corresponding to this type variable.
	*
	* @return the element corresponding to this type variable
	*/
	@:overload public function asElement() : javax.lang.model.element.Element;
	
	/**
	* Returns the upper bound of this type variable.
	*
	* <p> If this type variable was declared with no explicit
	* upper bounds, the result is {@code java.lang.Object}.
	* If it was declared with multiple upper bounds,
	* the result is an intersection type (modeled as a
	* {@link DeclaredType}).
	* Individual bounds can be found by examining the result's
	* {@linkplain Types#directSupertypes(TypeMirror) supertypes}.
	*
	* @return the upper bound of this type variable
	*/
	@:overload public function getUpperBound() : javax.lang.model.type.TypeMirror;
	
	/**
	* Returns the lower bound of this type variable.  While a type
	* parameter cannot include an explicit lower bound declaration,
	* capture conversion can produce a type variable with a
	* non-trivial lower bound.  Type variables otherwise have a
	* lower bound of {@link NullType}.
	*
	* @return the lower bound of this type variable
	*/
	@:overload public function getLowerBound() : javax.lang.model.type.TypeMirror;
	
	
}
