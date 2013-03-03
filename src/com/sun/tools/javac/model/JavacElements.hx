package com.sun.tools.javac.model;
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
extern class JavacElements implements javax.lang.model.util.Elements
{
	@:overload @:public @:static public static function instance(context : com.sun.tools.javac.util.Context) : com.sun.tools.javac.model.JavacElements;
	
	/**
	* Public for use only by JavacProcessingEnvironment
	*/
	@:overload @:protected private function new(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* Use a new context.  May be called from outside to update
	* internal state for a new annotation-processing round.
	*/
	@:overload @:public public function setContext(context : com.sun.tools.javac.util.Context) : Void;
	
	/**
	* An internal-use utility that creates a reified annotation.
	*/
	@:overload @:public @:static public static function getAnnotation<A : java.lang.annotation.Annotation>(annotated : com.sun.tools.javac.code.Symbol, annoType : Class<A>) : A;
	
	/**
	* An internal-use utility that creates a reified annotation.
	* This overloaded version take annotation inheritance into account.
	*/
	@:overload @:public @:static public static function getAnnotation<A : java.lang.annotation.Annotation>(annotated : ClassSymbol, annoType : Class<A>) : A;
	
	@:overload @:public public function getPackageElement(name : java.lang.CharSequence) : PackageSymbol;
	
	@:overload @:public public function getTypeElement(name : java.lang.CharSequence) : ClassSymbol;
	
	@:overload @:public public function getSourcePosition(e : javax.lang.model.element.Element) : com.sun.tools.javac.model.JavacSourcePosition;
	
	@:overload @:public public function getSourcePosition(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror) : com.sun.tools.javac.model.JavacSourcePosition;
	
	@:overload @:public public function getSourcePosition(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.tools.javac.model.JavacSourcePosition;
	
	/**
	* Returns the tree node corresponding to this element, or null
	* if none can be found.
	*/
	@:overload @:public public function getTree(e : javax.lang.model.element.Element) : com.sun.tools.javac.tree.JCTree;
	
	@:overload @:public public function getDocComment(e : javax.lang.model.element.Element) : String;
	
	@:overload @:public public function getPackageOf(e : javax.lang.model.element.Element) : javax.lang.model.element.PackageElement;
	
	@:overload @:public public function isDeprecated(e : javax.lang.model.element.Element) : Bool;
	
	@:overload @:public public function getBinaryName(type : javax.lang.model.element.TypeElement) : com.sun.tools.javac.util.Name;
	
	@:overload @:public public function getElementValuesWithDefaults(a : javax.lang.model.element.AnnotationMirror) : java.util.Map<MethodSymbol, com.sun.tools.javac.code.Attribute>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getAllMembers(element : javax.lang.model.element.TypeElement) : com.sun.tools.javac.model.FilteredMemberList;
	
	/**
	* Returns all annotations of an element, whether
	* inherited or directly present.
	*
	* @param e  the element being examined
	* @return all annotations of the element
	*/
	@:overload @:public public function getAllAnnotationMirrors(e : javax.lang.model.element.Element) : com.sun.tools.javac.util.List<com.sun.tools.javac.code.Attribute.Attribute_Compound>;
	
	@:overload @:public public function hides(hiderEl : javax.lang.model.element.Element, hideeEl : javax.lang.model.element.Element) : Bool;
	
	@:overload @:public public function overrides(riderEl : javax.lang.model.element.ExecutableElement, rideeEl : javax.lang.model.element.ExecutableElement, typeEl : javax.lang.model.element.TypeElement) : Bool;
	
	@:overload @:public public function getConstantExpression(value : Dynamic) : String;
	
	/**
	* Print a representation of the elements to the given writer in
	* the specified order.  The main purpose of this method is for
	* diagnostics.  The exact format of the output is <em>not</em>
	* specified and is subject to change.
	*
	* @param w the writer to print the output to
	* @param elements the elements to print
	*/
	@:overload @:public public function printElements(w : java.io.Writer, elements : java.NativeArray<javax.lang.model.element.Element>) : Void;
	
	@:overload @:public public function getName(cs : java.lang.CharSequence) : com.sun.tools.javac.util.Name;
	
	/**
	* Returns the best approximation for the tree node and compilation unit
	* corresponding to the given element, annotation and value.
	* If the element is null, null is returned.
	* If the annotation is null or cannot be found, the tree node and
	* compilation unit for the element is returned.
	* If the annotation value is null or cannot be found, the tree node and
	* compilation unit for the annotation is returned.
	*/
	@:overload @:public public function getTreeAndTopLevel(e : javax.lang.model.element.Element, a : javax.lang.model.element.AnnotationMirror, v : javax.lang.model.element.AnnotationValue) : com.sun.tools.javac.util.Pair<com.sun.tools.javac.tree.JCTree, JCCompilationUnit>;
	
	
}
