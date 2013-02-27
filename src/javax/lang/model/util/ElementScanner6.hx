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
* A scanning visitor of program elements with default behavior
* appropriate for the {@link SourceVersion#RELEASE_6 RELEASE_6}
* source version.  The <tt>visit<i>XYZ</i></tt> methods in this
* class scan their component elements by calling {@code scan} on
* their {@linkplain Element#getEnclosedElements enclosed elements},
* {@linkplain ExecutableElement#getParameters parameters}, etc., as
* indicated in the individual method specifications.  A subclass can
* control the order elements are visited by overriding the
* <tt>visit<i>XYZ</i></tt> methods.  Note that clients of a scanner
* may get the desired behavior be invoking {@code v.scan(e, p)} rather
* than {@code v.visit(e, p)} on the root objects of interest.
*
* <p>When a subclass overrides a <tt>visit<i>XYZ</i></tt> method, the
* new method can cause the enclosed elements to be scanned in the
* default way by calling <tt>super.visit<i>XYZ</i></tt>.  In this
* fashion, the concrete visitor can control the ordering of traversal
* over the component elements with respect to the additional
* processing; for example, consistently calling
* <tt>super.visit<i>XYZ</i></tt> at the start of the overridden
* methods will yield a preorder traversal, etc.  If the component
* elements should be traversed in some other order, instead of
* calling <tt>super.visit<i>XYZ</i></tt>, an overriding visit method
* should call {@code scan} with the elements in the desired order.
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
* #visitUnknown visitUnknown} method.  A new element scanner visitor
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
* @see ElementScanner7
* @since 1.6
*/
@:require(java6) extern class ElementScanner6<R, P> extends javax.lang.model.util.AbstractElementVisitor6<R, P>
{
	/**
	* The specified default value.
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
	*/
	@:overload private function new(defaultValue : R) : Void;
	
	/**
	* Iterates over the given elements and calls {@link
	* #scan(Element, Object) scan(Element, P)} on each one.  Returns
	* the result of the last call to {@code scan} or {@code
	* DEFAULT_VALUE} for an empty iterable.
	*
	* @param iterable the elements to scan
	* @param  p additional parameter
	* @return the scan of the last element or {@code DEFAULT_VALUE} if no elements
	*/
	@:overload @:final public function scan(iterable : java.lang.Iterable<javax.lang.model.element.Element>, p : P) : R;
	
	/**
	* Processes an element by calling {@code e.accept(this, p)};
	* this method may be overridden by subclasses.
	* @return the result of visiting {@code e}.
	*/
	@:overload public function scan(e : javax.lang.model.element.Element, p : P) : R;
	
	/**
	* Convenience method equivalent to {@code v.scan(e, null)}.
	* @return the result of scanning {@code e}.
	*/
	@:overload @:final public function scan(e : javax.lang.model.element.Element) : R;
	
	/**
	* {@inheritDoc} This implementation scans the enclosed elements.
	*
	* @param e  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of scanning
	*/
	@:overload override public function visitPackage(e : javax.lang.model.element.PackageElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation scans the enclosed elements.
	*
	* @param e  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of scanning
	*/
	@:overload override public function visitType(e : javax.lang.model.element.TypeElement, p : P) : R;
	
	/**
	* {@inheritDoc}
	*
	* This implementation scans the enclosed elements, unless the
	* element is a {@code RESOURCE_VARIABLE} in which case {@code
	* visitUnknown} is called.
	*
	* @param e  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of scanning
	*/
	@:overload override public function visitVariable(e : javax.lang.model.element.VariableElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation scans the parameters.
	*
	* @param e  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of scanning
	*/
	@:overload override public function visitExecutable(e : javax.lang.model.element.ExecutableElement, p : P) : R;
	
	/**
	* {@inheritDoc} This implementation scans the enclosed elements.
	*
	* @param e  {@inheritDoc}
	* @param p  {@inheritDoc}
	* @return the result of scanning
	*/
	@:overload override public function visitTypeParameter(e : javax.lang.model.element.TypeParameterElement, p : P) : R;
	
	
}
