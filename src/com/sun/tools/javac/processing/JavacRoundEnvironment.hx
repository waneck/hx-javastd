package com.sun.tools.javac.processing;
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
/**
* Object providing state about a prior round of annotation processing.
*
* <p>The methods in this class do not take type annotations into account,
* as target types, not java elements.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b>
*/
extern class JavacRoundEnvironment implements javax.annotation.processing.RoundEnvironment
{
	@:overload public function toString() : String;
	
	@:overload public function processingOver() : Bool;
	
	/**
	* Returns {@code true} if an error was raised in the prior round
	* of processing; returns {@code false} otherwise.
	*
	* @return {@code true} if an error was raised in the prior round
	* of processing; returns {@code false} otherwise.
	*/
	@:overload public function errorRaised() : Bool;
	
	/**
	* Returns the type elements specified by the prior round.
	*
	* @return the types elements specified by the prior round, or an
	* empty set if there were none
	*/
	@:overload public function getRootElements() : java.util.Set<javax.lang.model.element.Element>;
	
	/**
	* Returns the elements annotated with the given annotation type.
	* Only type elements <i>included</i> in this round of annotation
	* processing, or declarations of members, parameters, or type
	* parameters declared within those, are returned.  Included type
	* elements are {@linkplain #getSpecifiedTypeElements specified
	* types} and any types nested within them.
	*
	* @param a  annotation type being requested
	* @return the elements annotated with the given annotation type,
	* or an empty set if there are none
	*/
	@:overload public function getElementsAnnotatedWith(a : javax.lang.model.element.TypeElement) : java.util.Set<javax.lang.model.element.Element>;
	
	/**
	* {@inheritdoc}
	*/
	@:overload public function getElementsAnnotatedWith(a : Class<java.lang.annotation.Annotation>) : java.util.Set<javax.lang.model.element.Element>;
	
	
}
@:native('com$sun$tools$javac$processing$JavacRoundEnvironment$AnnotationSetScanner') @:internal extern class JavacRoundEnvironment_AnnotationSetScanner extends javax.lang.model.util.ElementScanner7<java.util.Set<javax.lang.model.element.Element>, javax.lang.model.type.DeclaredType>
{
	@:overload public function scan(e : javax.lang.model.element.Element, p : javax.lang.model.type.DeclaredType) : java.util.Set<javax.lang.model.element.Element>;
	
	
}
