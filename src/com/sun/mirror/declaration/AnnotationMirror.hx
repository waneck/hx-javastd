package com.sun.mirror.declaration;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern interface AnnotationMirror
{
	/**
	* Returns the annotation type of this annotation.
	*
	* @return the annotation type of this annotation
	*/
	@:overload public function getAnnotationType() : com.sun.mirror.type.AnnotationType;
	
	/**
	* Returns the source position of the beginning of this annotation.
	* Returns null if the position is unknown or not applicable.
	*
	* <p>This source position is intended for use in providing diagnostics,
	* and indicates only approximately where an annotation begins.
	*
	* @return  the source position of the beginning of this annotation or
	* null if the position is unknown or not applicable
	*/
	@:overload public function getPosition() : com.sun.mirror.util.SourcePosition;
	
	/**
	* Returns this annotation's elements and their values.
	* This is returned in the form of a map that associates elements
	* with their corresponding values.
	* Only those elements and values explicitly present in the
	* annotation are included, not those that are implicitly assuming
	* their default values.
	* The order of the map matches the order in which the
	* elements appear in the annotation's source.
	*
	* @return this annotation's elements and their values,
	* or an empty map if there are none
	*/
	@:overload public function getElementValues() : java.util.Map<com.sun.mirror.declaration.AnnotationTypeElementDeclaration, com.sun.mirror.declaration.AnnotationValue>;
	
	
}
