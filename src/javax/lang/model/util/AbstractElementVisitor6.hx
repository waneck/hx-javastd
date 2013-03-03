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
extern class AbstractElementVisitor6<R, P> implements javax.lang.model.element.ElementVisitor<R, P>
{
	/**
	* Constructor for concrete subclasses to call.
	*/
	@:overload @:protected private function new() : Void;
	
	/**
	* Visits any program element as if by passing itself to that
	* element's {@link Element#accept accept} method.  The invocation
	* {@code v.visit(elem)} is equivalent to {@code elem.accept(v,
	* p)}.
	*
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public @:final public function visit(e : javax.lang.model.element.Element, p : P) : R;
	
	/**
	* Visits any program element as if by passing itself to that
	* element's {@link Element#accept accept} method and passing
	* {@code null} for the additional parameter.  The invocation
	* {@code v.visit(elem)} is equivalent to {@code elem.accept(v,
	* null)}.
	*
	* @param e  the element to visit
	* @return a visitor-specified result
	*/
	@:overload @:public @:final public function visit(e : javax.lang.model.element.Element) : R;
	
	/**
	* {@inheritDoc}
	*
	* <p> The default implementation of this method in
	* {@code AbstractElementVisitor6} will always throw
	* {@code UnknownElementException}.
	* This behavior is not required of a subclass.
	*
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	* @throws UnknownElementException
	*          a visitor implementation may optionally throw this exception
	*/
	@:overload @:public public function visitUnknown(e : javax.lang.model.element.Element, p : P) : R;
	
	/**
	* Visits a type parameter element.
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public public function visitTypeParameter(e : javax.lang.model.element.TypeParameterElement, p : P) : R;
	
	/**
	* Visits a package element.
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public public function visitPackage(e : javax.lang.model.element.PackageElement, p : P) : R;
	
	/**
	* Visits a variable element.
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public public function visitVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* Visits an executable element.
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public public function visitExecutable(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* Visits a type element.
	* @param e  the element to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:public public function visitType(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	
}
