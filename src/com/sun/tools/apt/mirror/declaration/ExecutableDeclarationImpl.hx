package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of ExecutableDeclaration
*/
extern class ExecutableDeclarationImpl extends com.sun.tools.apt.mirror.declaration.MemberDeclarationImpl implements com.sun.mirror.declaration.ExecutableDeclaration
{
	@:public public var sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol;
	
	@:overload @:protected private function new(env : com.sun.tools.apt.mirror.AptEnv, sym : com.sun.tools.javac.code.Symbol.Symbol_MethodSymbol) : Void;
	
	/**
	* Returns type parameters (if any), method name, and signature
	* (value parameter types).
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function isVarArgs() : Bool;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getParameters() : java.util.Collection<com.sun.mirror.declaration.ParameterDeclaration>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getThrownTypes() : java.util.Collection<com.sun.mirror.type.ReferenceType>;
	
	/**
	* Returns the simple (unqualified) name of this declaration.
	* The name of a generic type does not include any reference
	* to its formal type parameters.
	* For example, the simple name of the interface declaration
	* {@code java.util.Set<E>} is <tt>"Set"</tt>.
	* If this declaration represents the empty package, an empty
	* string is returned.
	* If it represents a constructor, the simple name of its
	* declaring class is returned.
	*
	* @return the simple name of this declaration
	*/
	@:overload @:public override public function getSimpleName() : String;
	
	/**
	* Returns the formal type parameters of this method or constructor.
	* They are returned in declaration order.
	*
	* @return the formal type parameters of this method or constructor,
	* or an empty collection if there are none
	*/
	@:overload @:public override public function getFormalTypeParameters() : java.util.Collection<com.sun.mirror.declaration.TypeParameterDeclaration>;
	
	/**
	* Returns the annotation of this declaration having the specified
	* type.  The annotation may be either inherited or directly
	* present on this declaration.
	*
	* <p> The annotation returned by this method could contain an element
	* whose value is of type <tt>Class</tt>.
	* This value cannot be returned directly:  information necessary to
	* locate and load a class (such as the class loader to use) is
	* not available, and the class might not be loadable at all.
	* Attempting to read a <tt>Class</tt> object by invoking the relevant
	* method on the returned annotation
	* will result in a {@link MirroredTypeException},
	* from which the corresponding {@link TypeMirror} may be extracted.
	* Similarly, attempting to read a <tt>Class[]</tt>-valued element
	* will result in a {@link MirroredTypesException}.
	*
	* <blockquote>
	* <i>Note:</i> This method is unlike
	* others in this and related interfaces.  It operates on run-time
	* reflective information -- representations of annotation types
	* currently loaded into the VM -- rather than on the mirrored
	* representations defined by and used throughout these
	* interfaces.  It is intended for callers that are written to
	* operate on a known, fixed set of annotation types.
	* </blockquote>
	*
	* @param <A>  the annotation type
	* @param annotationType  the <tt>Class</tt> object corresponding to
	*          the annotation type
	* @return the annotation of this declaration having the specified type
	*
	* @see #getAnnotationMirrors()
	*/
	@:overload @:public override public function getAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	/**
	* Returns the source position of the beginning of this declaration.
	* Returns <tt>null</tt> if the position is unknown or not applicable.
	*
	* <p> This source position is intended for use in providing
	* diagnostics, and indicates only approximately where a declaration
	* begins.
	*
	* @return the source position of the beginning of this declaration,
	*          or null if the position is unknown or not applicable
	*/
	@:overload @:public override public function getPosition() : com.sun.mirror.util.SourcePosition;
	
	/**
	* Returns the text of the documentation ("javadoc") comment of
	* this declaration.
	*
	* @return the documentation comment of this declaration, or <tt>null</tt>
	*          if there is none
	*/
	@:overload @:public override public function getDocComment() : String;
	
	/**
	* Returns the annotations that are directly present on this declaration.
	*
	* @return the annotations directly present on this declaration;
	*          an empty collection if there are none
	*/
	@:overload @:public override public function getAnnotationMirrors() : java.util.Collection<com.sun.mirror.declaration.AnnotationMirror>;
	
	/**
	* Returns the modifiers of this declaration, excluding annotations.
	* Implicit modifiers, such as the <tt>public</tt> and <tt>static</tt>
	* modifiers of interface members, are included.
	*
	* @return the modifiers of this declaration in undefined order;
	*          an empty collection if there are none
	*/
	@:overload @:public override public function getModifiers() : java.util.Collection<com.sun.mirror.declaration.Modifier>;
	
	/**
	* Applies a visitor to this declaration.
	*
	* @param v the visitor operating on this declaration
	*/
	@:overload @:public override public function accept(v : com.sun.mirror.util.DeclarationVisitor) : Void;
	
	/**
	* Returns the type declaration within which this member or constructor
	* is declared.
	* If this is the declaration of a top-level type (a non-nested class
	* or interface), returns null.
	*
	* @return the type declaration within which this member or constructor
	* is declared, or null if there is none
	*/
	@:overload @:public override public function getDeclaringType() : com.sun.mirror.declaration.TypeDeclaration;
	
	
}
