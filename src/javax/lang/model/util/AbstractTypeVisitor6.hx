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
* A skeletal visitor of types with default behavior appropriate for
* the {@link javax.lang.model.SourceVersion#RELEASE_6 RELEASE_6}
* source version.
*
* <p> <b>WARNING:</b> The {@code TypeVisitor} interface implemented
* by this class may have methods added to it in the future to
* accommodate new, currently unknown, language structures added to
* future versions of the Java&trade; programming language.
* Therefore, methods whose names begin with {@code "visit"} may be
* added to this class in the future; to avoid incompatibilities,
* classes which extend this class should not declare any instance
* methods with names beginning with {@code "visit"}.
*
* <p>When such a new visit method is added, the default
* implementation in this class will be to call the {@link
* #visitUnknown visitUnknown} method.  A new abstract type visitor
* class will also be introduced to correspond to the new language
* level; this visitor will have different default behavior for the
* visit method in question.  When the new visitor is introduced, all
* or portions of this visitor may be deprecated.
*
* @param <R> the return type of this visitor's methods.  Use {@link
*            Void} for visitors that do not need to return results.
* @param <P> the type of the additional parameter to this visitor's
*            methods.  Use {@code Void} for visitors that do not need an
*            additional parameter.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @author Peter von der Ah&eacute;
*
* @see AbstractTypeVisitor7
* @since 1.6
*/
@:require(java6) extern class AbstractTypeVisitor6<R, P> implements javax.lang.model.type.TypeVisitor<R, P>
{
	/**
	* Constructor for concrete subclasses to call.
	*/
	@:overload private function new() : Void;
	
	/**
	* Visits any type mirror as if by passing itself to that type
	* mirror's {@link TypeMirror#accept accept} method.  The
	* invocation {@code v.visit(t, p)} is equivalent to {@code
	* t.accept(v, p)}.
	*
	* @param t  the type to visit
	* @param p  a visitor-specified parameter
	* @return a visitor-specified result
	*/
	@:overload @:final public function visit(t : javax.lang.model.type.TypeMirror, p : P) : R;
	
	/**
	* Visits any type mirror as if by passing itself to that type
	* mirror's {@link TypeMirror#accept accept} method and passing
	* {@code null} for the additional parameter.  The invocation
	* {@code v.visit(t)} is equivalent to {@code t.accept(v, null)}.
	*
	* @param t  the type to visit
	* @return a visitor-specified result
	*/
	@:overload @:final public function visit(t : javax.lang.model.type.TypeMirror) : R;
	
	/**
	* Visits a {@code UnionType} element by calling {@code
	* visitUnknown}.

	* @param t  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of {@code visitUnknown}
	*
	* @since 1.7
	*/
	@:require(java7) @:overload public function visitUnion(t : javax.lang.model.type.UnionType, p : P) : R;
	
	/**
	* {@inheritDoc}
	*
	* <p> The default implementation of this method in {@code
	* AbstractTypeVisitor6} will always throw {@code
	* UnknownTypeException}.  This behavior is not required of a
	* subclass.
	*
	* @param t  the type to visit
	* @return a visitor-specified result
	* @throws UnknownTypeException
	*  a visitor implementation may optionally throw this exception
	*/
	@:overload public function visitUnknown(t : javax.lang.model.type.TypeMirror, p : P) : R;
	
	/**
	* Visits the null type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitNull(t : javax.lang.model.type.NullType, p : P) : R;
	
	/**
	* Visits a type variable.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitTypeVariable(t : javax.lang.model.type.TypeVariable, p : P) : R;
	
	/**
	* Visits an error type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitError(t : javax.lang.model.type.ErrorType, p : P) : R;
	
	/**
	* Visits an executable type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitExecutable(t : javax.lang.model.type.ExecutableType, p : P) : R;
	
	/**
	* Visits a {@link NoType} instance.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitNoType(t : javax.lang.model.type.NoType, p : P) : R;
	
	/**
	* Visits a primitive type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitPrimitive(t : javax.lang.model.type.PrimitiveType, p : P) : R;
	
	/**
	* Visits a declared type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitDeclared(t : javax.lang.model.type.DeclaredType, p : P) : R;
	
	/**
	* Visits an array type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitArray(t : javax.lang.model.type.ArrayType, p : P) : R;
	
	/**
	* Visits a wildcard type.
	* @param t the type to visit
	* @param p a visitor-specified parameter
	* @return  a visitor-specified result
	*/
	@:overload public function visitWildcard(t : javax.lang.model.type.WildcardType, p : P) : R;
	
	
}
