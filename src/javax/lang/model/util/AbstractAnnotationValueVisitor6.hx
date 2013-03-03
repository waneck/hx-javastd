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
extern class AbstractAnnotationValueVisitor6<R, P> implements javax.lang.model.element.AnnotationValueVisitor<R, P>
{
	/**
	* Constructor for concrete subclasses to call.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Visits an annotation value as if by passing itself to that
	* value's {@link AnnotationValue#accept accept}.  The invocation
	* {@code v.visit(av)} is equivalent to {@code av.accept(v, p)}.
	* @param av {@inheritDoc}
	* @param p  {@inheritDoc}
	*/
	@:overload @:public @:final public function visit(av : javax.lang.model.element.AnnotationValue, p : P) : R;
	
	/**
	* Visits an annotation value as if by passing itself to that
	* value's {@link AnnotationValue#accept accept} method passing
	* {@code null} for the additional parameter.  The invocation
	* {@code v.visit(av)} is equivalent to {@code av.accept(v,
	* null)}.
	* @param av {@inheritDoc}
	*/
	@:overload @:public @:final public function visit(av : javax.lang.model.element.AnnotationValue) : R;
	
	/**
	* {@inheritDoc}
	*
	* <p>The default implementation of this method in {@code
	* AbstractAnnotationValueVisitor6} will always throw {@code
	* UnknownAnnotationValueException}.  This behavior is not
	* required of a subclass.
	*
	* @param av {@inheritDoc}
	* @param p  {@inheritDoc}
	*/
	@:overload @:public public function visitUnknown(av : javax.lang.model.element.AnnotationValue, p : P) : R;
	
	/**
	* Visits a {@code double} value in an annotation.
	* @param  d the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitDouble(d : Float, p : P) : R;
	
	/**
	* Visits a {@code long} value in an annotation.
	* @param  i the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitLong(i : haxe.Int64, p : P) : R;
	
	/**
	* Visits an annotation value in an annotation.
	* @param  a the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitAnnotation(a : javax.lang.model.element.AnnotationMirror, p : P) : R;
	
	/**
	* Visits an array value in an annotation.
	* @param  vals the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitArray(vals : java.util.List<javax.lang.model.element.AnnotationValue>, p : P) : R;
	
	/**
	* Visits a {@code char} value in an annotation.
	* @param  c the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitChar(c : java.StdTypes.Char16, p : P) : R;
	
	/**
	* Visits a {@code byte} value in an annotation.
	* @param  b the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitByte(b : java.StdTypes.Int8, p : P) : R;
	
	/**
	* Visits a {@code short} value in an annotation.
	* @param  s the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitShort(s : java.StdTypes.Int16, p : P) : R;
	
	/**
	* Visits a {@code boolean} value in an annotation.
	* @param b the value being visited
	* @param p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitBoolean(b : Bool, p : P) : R;
	
	/**
	* Visits a {@code float} value in an annotation.
	* @param  f the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitFloat(f : Single, p : P) : R;
	
	/**
	* Visits an {@code enum} value in an annotation.
	* @param  c the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitEnumConstant(c : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits an {@code int} value in an annotation.
	* @param  i the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitInt(i : Int, p : P) : R;
	
	/**
	* Visits a string value in an annotation.
	* @param  s the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitString(s : String, p : P) : R;
	
	/**
	* Visits a type value in an annotation.
	* @param  t the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitType(t : javax.lang.model.type.TypeMirror, p : P) : R;
	
	
}
