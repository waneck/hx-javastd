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
extern class SimpleAnnotationValueVisitor6<R, P> extends javax.lang.model.util.AbstractAnnotationValueVisitor6<R, P>
{
	/**
	* Default value to be returned; {@link #defaultAction
	* defaultAction} returns this value unless the method is
	* overridden.
	*/
	private var DEFAULT_VALUE(default, null) : R;
	
	/**
	* Constructor for concrete subclasses; uses {@code null} for the
	* default value.
	*/
	@:overload private function new() : Void;
	
	/**
	* Constructor for concrete subclasses; uses the argument for the
	* default value.
	*
	* @param defaultValue the value to assign to {@link #DEFAULT_VALUE}
	*/
	@:overload private function new(defaultValue : R) : Void;
	
	/**
	* The default action for visit methods.  The implementation in
	* this class just returns {@link #DEFAULT_VALUE}; subclasses will
	* commonly override this method.
	*
	* @param o the value of the annotation
	* @param p a visitor-specified parameter
	* @return {@code DEFAULT_VALUE} unless overridden
	*/
	@:overload private function defaultAction(o : Dynamic, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param b {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitBoolean(b : Bool, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param b {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitByte(b : java.StdTypes.Int8, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param c {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitChar(c : java.StdTypes.Char16, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param d {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitDouble(d : Float, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param f {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitFloat(f : Single, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param i {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitInt(i : Int, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param i {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitLong(i : haxe.Int64, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param s {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitShort(s : java.StdTypes.Int16, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param s {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitString(s : String, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param t {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitType(t : javax.lang.model.type.TypeMirror, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param c {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitEnumConstant(c : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param a {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitAnnotation(a : javax.lang.model.element.AnnotationMirror, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param vals {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload public function visitArray(vals : java.util.List<javax.lang.model.element.AnnotationValue>, p : P) : R;
	
	
}
