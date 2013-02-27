package javax.lang.model.util;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeKindVisitor6<R, P> extends javax.lang.model.util.SimpleTypeVisitor6<R, P>
{
	/**
	* Constructor for concrete subclasses to call; uses {@code null}
	* for the default value.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructor for concrete subclasses to call; uses the argument
	* for the default value.
	*
	* @param defaultValue the value to assign to {@link #DEFAULT_VALUE}
	*/
	@:overload private function new(defaultValue : R) : Void;
	
	/**
	* Visits a primitive type, dispatching to the visit method for
	* the specific {@linkplain TypeKind kind} of primitive type:
	* {@code BOOLEAN}, {@code BYTE}, etc.
	*
	* @param t {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of the kind-specific visit method
	*/
	@:overload override public function visitPrimitive(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code BOOLEAN} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsBoolean(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code BYTE} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsByte(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code SHORT} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsShort(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits an {@code INT} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsInt(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code LONG} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsLong(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code CHAR} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsChar(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code FLOAT} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsFloat(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@code DOUBLE} primitive type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitPrimitiveAsDouble(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a {@link NoType} instance, dispatching to the visit method for
	* the specific {@linkplain TypeKind kind} of pseudo-type:
	* {@code VOID}, {@code PACKAGE}, or {@code NONE}.
	*
	* @param t {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of the kind-specific visit method
	*/
	@:overload override public function visitNoType(t : javax.lang.model.type.NoType, p : P) : R;
	
	/**
	* Visits a {@link TypeKind#VOID VOID} pseudo-type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitNoTypeAsVoid(t : javax.lang.model.type.NoType, p : P) : R;
	
	/**
	* Visits a {@link TypeKind#PACKAGE PACKAGE} pseudo-type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitNoTypeAsPackage(t : javax.lang.model.type.NoType, p : P) : R;
	
	/**
	* Visits a {@link TypeKind#NONE NONE} pseudo-type by calling
	* {@code defaultAction}.
	*
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitNoTypeAsNone(t : javax.lang.model.type.NoType, p : P) : R;
	
	
}
