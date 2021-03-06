package javax.annotation.processing;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
extern interface RoundEnvironment
{
	/**
	* Returns {@code true} if types generated by this round will not
	* be subject to a subsequent round of annotation processing;
	* returns {@code false} otherwise.
	*
	* @return {@code true} if types generated by this round will not
	* be subject to a subsequent round of annotation processing;
	* returns {@code false} otherwise
	*/
	@:overload public function processingOver() : Bool;
	
	/**
	* Returns {@code true} if an error was raised in the prior round
	* of processing; returns {@code false} otherwise.
	*
	* @return {@code true} if an error was raised in the prior round
	* of processing; returns {@code false} otherwise
	*/
	@:overload public function errorRaised() : Bool;
	
	/**
	* Returns the root elements for annotation processing generated
	* by the prior round.
	*
	* @return the root elements for annotation processing generated
	* by the prior round, or an empty set if there were none
	*/
	@:overload public function getRootElements() : java.util.Set<javax.lang.model.element.Element>;
	
	/**
	* Returns the elements annotated with the given annotation type.
	* The annotation may appear directly or be inherited.  Only
	* package elements and type elements <i>included</i> in this
	* round of annotation processing, or declarations of members,
	* constructors, parameters, or type parameters declared within
	* those, are returned.  Included type elements are {@linkplain
	* #getRootElements root types} and any member types nested within
	* them.  Elements in a package are not considered included simply
	* because a {@code package-info} file for that package was
	* created.
	*
	* @param a  annotation type being requested
	* @return the elements annotated with the given annotation type,
	* or an empty set if there are none
	* @throws IllegalArgumentException if the argument does not
	* represent an annotation type
	*/
	@:overload public function getElementsAnnotatedWith(a : javax.lang.model.element.TypeElement) : java.util.Set<javax.lang.model.element.Element>;
	
	/**
	* Returns the elements annotated with the given annotation type.
	* The annotation may appear directly or be inherited.  Only
	* package elements and type elements <i>included</i> in this
	* round of annotation processing, or declarations of members,
	* constructors, parameters, or type parameters declared within
	* those, are returned.  Included type elements are {@linkplain
	* #getRootElements root types} and any member types nested within
	* them.  Elements in a package are not considered included simply
	* because a {@code package-info} file for that package was
	* created.
	*
	* @param a  annotation type being requested
	* @return the elements annotated with the given annotation type,
	* or an empty set if there are none
	* @throws IllegalArgumentException if the argument does not
	* represent an annotation type
	*/
	@:overload public function getElementsAnnotatedWith(a : Class<java.lang.annotation.Annotation>) : java.util.Set<javax.lang.model.element.Element>;
	
	
}
