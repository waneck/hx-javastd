package javax.lang.model.element;
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
extern interface AnnotationValueVisitor<R, P>
{
	/**
	* Visits an annotation value.
	* @param av the value to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visit(av : javax.lang.model.element.AnnotationValue, p : P) : R;
	
	/**
	* A convenience method equivalent to {@code v.visit(av, null)}.
	* @param av the value to visit
	* @return  a visitor-specified result
	*/
	@:overload public function visit(av : javax.lang.model.element.AnnotationValue) : R;
	
	/**
	* Visits a {@code boolean} value in an annotation.
	* @param b the value being visited
	* @param p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitBoolean(b : Bool, p : P) : R;
	
	/**
	* Visits a {@code byte} value in an annotation.
	* @param  b the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitByte(b : java.StdTypes.Int8, p : P) : R;
	
	/**
	* Visits a {@code char} value in an annotation.
	* @param  c the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitChar(c : java.StdTypes.Char16, p : P) : R;
	
	/**
	* Visits a {@code double} value in an annotation.
	* @param  d the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitDouble(d : Float, p : P) : R;
	
	/**
	* Visits a {@code float} value in an annotation.
	* @param  f the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitFloat(f : Single, p : P) : R;
	
	/**
	* Visits an {@code int} value in an annotation.
	* @param  i the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitInt(i : Int, p : P) : R;
	
	/**
	* Visits a {@code long} value in an annotation.
	* @param  i the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitLong(i : haxe.Int64, p : P) : R;
	
	/**
	* Visits a {@code short} value in an annotation.
	* @param  s the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitShort(s : java.StdTypes.Int16, p : P) : R;
	
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
	
	/**
	* Visits an {@code enum} value in an annotation.
	* @param  c the value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	*/
	@:overload @:public public function visitEnumConstant(c : javax.lang.model.element.VariableElement, p : P) : R;
	
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
	* Visits an unknown kind of annotation value.
	* This can occur if the language evolves and new kinds
	* of value can be stored in an annotation.
	* @param  av the unknown value being visited
	* @param  p a visitor-specified parameter
	* @return the result of the visit
	* @throws UnknownAnnotationValueException
	*  a visitor implementation may optionally throw this exception
	*/
	@:overload public function visitUnknown(av : javax.lang.model.element.AnnotationValue, p : P) : R;
	
	
}
