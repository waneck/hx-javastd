package com.sun.mirror.type;
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
* Represents an interface type.
* Note that an {@linkplain AnnotationType annotation type} is
* a kind of interface.
*
* <p> While an {@link InterfaceDeclaration} represents the
* <i>declaration</i> of an interface, an <tt>InterfaceType</tt>
* represents an interface <i>type</i>.
* See {@link TypeDeclaration} for more on this distinction.
*
* @deprecated All components of this API have been superseded by the
* standardized annotation processing API.  The replacement for the
* functionality of this interface is included in {@link
* javax.lang.model.type.DeclaredType}.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface InterfaceType extends com.sun.mirror.type.DeclaredType
{
	/**
	* {@inheritDoc}
	*/
	@:overload public function getDeclaration() : com.sun.mirror.declaration.InterfaceDeclaration;
	
	
}
