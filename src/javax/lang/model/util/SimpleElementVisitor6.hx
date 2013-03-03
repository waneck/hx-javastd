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
/**
* A simple visitor of program elements with default behavior
* appropriate for the {@link SourceVersion#RELEASE_6 RELEASE_6}
* source version.
*
* Visit methods corresponding to {@code RELEASE_6} language
* constructs call {@link #defaultAction defaultAction}, passing their
* arguments to {@code defaultAction}'s corresponding parameters.
*
* For constructs introduced in {@code RELEASE_7} and later, {@code
* visitUnknown} is called instead.
*
* <p> Methods in this class may be overridden subject to their
* general contract.  Note that annotating methods in concrete
* subclasses with {@link java.lang.Override @Override} will help
* ensure that methods are overridden as intended.
*
* <p> <b>WARNING:</b> The {@code ElementVisitor} interface
* implemented by this class may have methods added to it in the
* future to accommodate new, currently unknown, language structures
* added to future versions of the Java&trade; programming language.
* Therefore, methods whose names begin with {@code "visit"} may be
* added to this class in the future; to avoid incompatibilities,
* classes which extend this class should not declare any instance
* methods with names beginning with {@code "visit"}.
*
* <p>When such a new visit method is added, the default
* implementation in this class will be to call the {@link
* #visitUnknown visitUnknown} method.  A new simple element visitor
* class will also be introduced to correspond to the new language
* level; this visitor will have different default behavior for the
* visit method in question.  When the new visitor is introduced, all
* or portions of this visitor may be deprecated.
*
* @param <R> the return type of this visitor's methods.  Use {@code Void}
*             for visitors that do not need to return results.
* @param <P> the type of the additional parameter to this visitor's methods.  Use {@code Void}
*              for visitors that do not need an additional parameter.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @author Peter von der Ah&eacute;
*
* @see SimpleElementVisitor7
* @since 1.6
*/
@:require(java6) extern class SimpleElementVisitor6<R, P> extends javax.lang.model.util.AbstractElementVisitor6<R, P>
{
	/**
	* Default value to be returned; {@link #defaultAction
	* defaultAction} returns this value unless the method is
	* overridden.
	*/
	@:protected @:final private var DEFAULT_VALUE(default, null) : R;
	
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
	* The default action for visit methods.  The implementation in
	* this class just returns {@link #DEFAULT_VALUE}; subclasses will
	* commonly override this method.
	*
	* @param e the element to process
	* @param p a visitor-specified parameter
	* @return {@code DEFAULT_VALUE} unless overridden
	*/
	@:overload @:protected private function defaultAction(e : javax.lang.model.element.Element, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public override public function visitPackage(e : javax.lang.model.element.PackageElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public override public function visitType(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* {@inheritDoc}
	*
	* This implementation calls {@code defaultAction}, unless the
	* element is a {@code RESOURCE_VARIABLE} in which case {@code
	* visitUnknown} is called.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction} or {@code visitUnknown}
	*/
	@:overload @:public override public function visitVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public override public function visitExecutable(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation calls {@code defaultAction}.
	*
	* @param e {@inheritDoc}
	* @param p {@inheritDoc}
	* @return  the result of {@code defaultAction}
	*/
	@:overload @:public override public function visitTypeParameter(e : javax.lang.model.element.TypeParameterElement, p : P) : R;
	
	
}
