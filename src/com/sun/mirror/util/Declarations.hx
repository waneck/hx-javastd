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
* Utility methods for operating on declarations.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is {@link
* javax.lang.model.util.Elements}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface Declarations
{
	/**
	* Tests whether one type, method, or field declaration hides another.
	*
	* @param sub the first member
	* @param sup the second member
	* @return <tt>true</tt> if and only if the first member hides
	*          the second
	*/
	@:overload public function hides(sub : com.sun.mirror.declaration.MemberDeclaration, sup : com.sun.mirror.declaration.MemberDeclaration) : Bool;
	
	/**
	* Tests whether one method overrides another.  When a
	* non-abstract method overrides an abstract one, the
	* former is also said to <i>implement</i> the latter.
	*
	* @param sub the first method
	* @param sup the second method
	* @return <tt>true</tt> if and only if the first method overrides
	*          the second
	*/
	@:overload public function overrides(sub : com.sun.mirror.declaration.MethodDeclaration, sup : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	
}
