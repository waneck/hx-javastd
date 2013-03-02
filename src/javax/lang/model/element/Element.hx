package javax.lang.model.element;
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
* Represents a program element such as a package, class, or method.
* Each element represents a static, language-level construct
* (and not, for example, a runtime construct of the virtual machine).
*
* <p> Elements should be compared using the {@link #equals(Object)}
* method.  There is no guarantee that any particular element will
* always be represented by the same object.
*
* <p> To implement operations based on the class of an {@code
* Element} object, either use a {@linkplain ElementVisitor visitor} or
* use the result of the {@link #getKind} method.  Using {@code
* instanceof} is <em>not</em> necessarily a reliable idiom for
* determining the effective class of an object in this modeling
* hierarchy since an implementation may choose to have a single object
* implement multiple {@code Element} subinterfaces.
*
* @author Joseph D. Darcy
* @author Scott Seligman
* @author Peter von der Ah&eacute;
* @see Elements
* @see TypeMirror
* @since 1.6
*/
@:require(java6) extern interface Element
{
	/**
	* Returns the type defined by this element.
	*
	* <p> A generic element defines a family of types, not just one.
	* If this is a generic element, a <i>prototypical</i> type is
	* returned.  This is the element's invocation on the
	* type variables corresponding to its own formal type parameters.
	* For example,
	* for the generic class element {@code C<N extends Number>},
	* the parameterized type {@code C<N>} is returned.
	* The {@link Types} utility interface has more general methods
	* for obtaining the full range of types defined by an element.
	*
	* @see Types
	*
	* @return the type defined by this element
	*/
	@:overload public function asType() : javax.lang.model.type.TypeMirror;
	
	/**
	* Returns the {@code kind} of this element.
	*
	* @return the kind of this element
	*/
	@:overload public function getKind() : javax.lang.model.element.ElementKind;
	
	/**
	* Returns the annotations that are directly present on this element.
	*
	* <p> To get inherited annotations as well, use
	* {@link Elements#getAllAnnotationMirrors(Element) getAllAnnotationMirrors}.
	*
	* @see ElementFilter
	*
	* @return the annotations directly present on this element;
	*          an empty list if there are none
	*/
	@:overload public function getAnnotationMirrors() : java.util.List<javax.lang.model.element.AnnotationMirror>;
	
	/**
	* Returns this element's annotation for the specified type if
	* such an annotation is present, else {@code null}.  The
	* annotation may be either inherited or directly present on this
	* element.
	*
	* <p> The annotation returned by this method could contain an element
	* whose value is of type {@code Class}.
	* This value cannot be returned directly:  information necessary to
	* locate and load a class (such as the class loader to use) is
	* not available, and the class might not be loadable at all.
	* Attempting to read a {@code Class} object by invoking the relevant
	* method on the returned annotation
	* will result in a {@link MirroredTypeException},
	* from which the corresponding {@link TypeMirror} may be extracted.
	* Similarly, attempting to read a {@code Class[]}-valued element
	* will result in a {@link MirroredTypesException}.
	*
	* <blockquote>
	* <i>Note:</i> This method is unlike others in this and related
	* interfaces.  It operates on runtime reflective information &mdash;
	* representations of annotation types currently loaded into the
	* VM &mdash; rather than on the representations defined by and used
	* throughout these interfaces.  Consequently, calling methods on
	* the returned annotation object can throw many of the exceptions
	* that can be thrown when calling methods on an annotation object
	* returned by core reflection.  This method is intended for
	* callers that are written to operate on a known, fixed set of
	* annotation types.
	* </blockquote>
	*
	* @param <A>  the annotation type
	* @param annotationType  the {@code Class} object corresponding to
	*          the annotation type
	* @return this element's annotation for the specified annotation
	*         type if present on this element, else {@code null}
	*
	* @see #getAnnotationMirrors()
	* @see java.lang.reflect.AnnotatedElement#getAnnotation
	* @see EnumConstantNotPresentException
	* @see AnnotationTypeMismatchException
	* @see IncompleteAnnotationException
	* @see MirroredTypeException
	* @see MirroredTypesException
	*/
	@:overload public function getAnnotation<A : java.lang.annotation.Annotation>(annotationType : Class<A>) : A;
	
	/**
	* Returns the modifiers of this element, excluding annotations.
	* Implicit modifiers, such as the {@code public} and {@code static}
	* modifiers of interface members, are included.
	*
	* @return the modifiers of this element, or an empty set if there are none
	*/
	@:overload public function getModifiers() : java.util.Set<javax.lang.model.element.Modifier>;
	
	/**
	* Returns the simple (unqualified) name of this element.  The
	* name of a generic type does not include any reference to its
	* formal type parameters.
	*
	* For example, the simple name of the type element {@code
	* java.util.Set<E>} is {@code "Set"}.
	*
	* If this element represents an unnamed {@linkplain
	* PackageElement#getSimpleName package}, an empty name is
	* returned.
	*
	* If it represents a {@linkplain ExecutableElement#getSimpleName
	* constructor}, the name "{@code <init>}" is returned.  If it
	* represents a {@linkplain ExecutableElement#getSimpleName static
	* initializer}, the name "{@code <clinit>}" is returned.
	*
	* If it represents an {@linkplain TypeElement#getSimpleName
	* anonymous class} or {@linkplain ExecutableElement#getSimpleName
	* instance initializer}, an empty name is returned.
	*
	* @return the simple name of this element
	*/
	@:overload public function getSimpleName() : javax.lang.model.element.Name;
	
	/**
	* Returns the innermost element
	* within which this element is, loosely speaking, enclosed.
	* <ul>
	* <li> If this element is one whose declaration is lexically enclosed
	* immediately within the declaration of another element, that other
	* element is returned.
	*
	* <li> If this is a {@linkplain TypeElement#getEnclosingElement
	* top-level type}, its package is returned.
	*
	* <li> If this is a {@linkplain
	* PackageElement#getEnclosingElement package}, {@code null} is
	* returned.
	*
	* <li> If this is a {@linkplain
	* TypeParameterElement#getEnclosingElement type parameter},
	* {@linkplain TypeParameterElement#getGenericElement the
	* generic element} of the type parameter is returned.
	*
	* </ul>
	*
	* @return the enclosing element, or {@code null} if there is none
	* @see Elements#getPackageOf
	*/
	@:overload public function getEnclosingElement() : javax.lang.model.element.Element;
	
	/**
	* Returns the elements that are, loosely speaking, directly
	* enclosed by this element.
	*
	* A class or interface is considered to enclose the fields,
	* methods, constructors, and member types that it directly
	* declares.  This includes any (implicit) default constructor and
	* the implicit {@code values} and {@code valueOf} methods of an
	* enum type.
	*
	* A package encloses the top-level classes and interfaces within
	* it, but is not considered to enclose subpackages.
	*
	* Other kinds of elements are not currently considered to enclose
	* any elements; however, that may change as this API or the
	* programming language evolves.
	*
	* <p>Note that elements of certain kinds can be isolated using
	* methods in {@link ElementFilter}.
	*
	* @return the enclosed elements, or an empty list if none
	* @see Elements#getAllMembers
	* @jls 8.8.9 Default Constructor
	* @jls 8.9 Enums
	*/
	@:overload public function getEnclosedElements() : java.util.List<javax.lang.model.element.Element>;
	
	/**
	* Applies a visitor to this element.
	*
	* @param <R> the return type of the visitor's methods
	* @param <P> the type of the additional parameter to the visitor's methods
	* @param v   the visitor operating on this element
	* @param p   additional parameter to the visitor
	* @return a visitor-specified result
	*/
	@:overload public function accept<R, P>(v : javax.lang.model.element.ElementVisitor<R, P>, p : P) : R;
	
	
}
