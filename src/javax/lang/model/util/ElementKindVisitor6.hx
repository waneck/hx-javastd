package javax.lang.model.util;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ElementKindVisitor6<R, P> extends javax.lang.model.util.SimpleElementVisitor6<R, P>
{
	/**
	* Constructor for concrete subclasses; uses {@code null} for the
	* default value.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Constructor for concrete subclasses; uses the argument for the
	* default value.
	*
	* @param defaultValue the value to assign to {@link #DEFAULT_VALUE}
	*/
	@:overload @:protected private function new(defaultValue : R) : Void;
	
	/**
	* {@inheritDoc}
	*
	* The element argument has kind {@code PACKAGE}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  {@inheritDoc}
	*/
	@:overload @:public override public function visitPackage(e : javax.lang.model.element.PackageElement, p : P) : R;
	
	/**
	* Visits a type element, dispatching to the visit method for the
	* specific {@linkplain ElementKind kind} of type, {@code
	* ANNOTATION_TYPE}, {@code CLASS}, {@code ENUM}, or {@code
	* INTERFACE}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of the kind-specific visit method
	*/
	@:overload @:public override public function visitType(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* Visits an {@code ANNOTATION_TYPE} type element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitTypeAsAnnotationType(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* Visits a {@code CLASS} type element by calling {@code
	* defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitTypeAsClass(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* Visits an {@code ENUM} type element by calling {@code
	* defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitTypeAsEnum(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* Visits an {@code INTERFACE} type element by calling {@code
	* defaultAction}.
	*.
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitTypeAsInterface(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* Visits a variable element, dispatching to the visit method for
	* the specific {@linkplain ElementKind kind} of variable, {@code
	* ENUM_CONSTANT}, {@code EXCEPTION_PARAMETER}, {@code FIELD},
	* {@code LOCAL_VARIABLE}, {@code PARAMETER}, or {@code RESOURCE_VARIABLE}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of the kind-specific visit method
	*/
	@:overload @:public override public function visitVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits an {@code ENUM_CONSTANT} variable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitVariableAsEnumConstant(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits an {@code EXCEPTION_PARAMETER} variable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitVariableAsExceptionParameter(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits a {@code FIELD} variable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitVariableAsField(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits a {@code LOCAL_VARIABLE} variable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitVariableAsLocalVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits a {@code PARAMETER} variable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitVariableAsParameter(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits a {@code RESOURCE_VARIABLE} variable element by calling
	* {@code visitUnknown}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code visitUnknown}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload @:public public function visitVariableAsResourceVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits an executable element, dispatching to the visit method
	* for the specific {@linkplain ElementKind kind} of executable,
	* {@code CONSTRUCTOR}, {@code INSTANCE_INIT}, {@code METHOD}, or
	* {@code STATIC_INIT}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of the kind-specific visit method
	*/
	@:overload @:public override public function visitExecutable(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* Visits a {@code CONSTRUCTOR} executable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitExecutableAsConstructor(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* Visits an {@code INSTANCE_INIT} executable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitExecutableAsInstanceInit(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* Visits a {@code METHOD} executable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitExecutableAsMethod(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* Visits a {@code STATIC_INIT} executable element by calling
	* {@code defaultAction}.
	*
	* @param e the element to visit
	* @param p a visitor-specified parameter
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public public function visitExecutableAsStaticInit(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* {@inheritDoc}
	*
	* The element argument has kind {@code TYPE_PARAMETER}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  {@inheritDoc}
	*/
	@:overload @:public override public function visitTypeParameter(e : javax.lang.model.element.TypeParameterElement, p : P) : R;
	
	
}
