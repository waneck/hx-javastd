package com.sun.javadoc;
/*
* Copyright (c) 2003, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Represents a value of an annotation type element.
*
* @author Scott Seligman
* @since 1.5
*/
@:require(java5) extern interface AnnotationValue
{
	/**
	* Returns the value.
	* The type of the returned object is one of the following:
	* <ul><li> a wrapper class for a primitive type
	*     <li> <code>String</code>
	*     <li> <code>Type</code> (representing a class literal)
	*     <li> <code>FieldDoc</code> (representing an enum constant)
	*     <li> <code>AnnotationDesc</code>
	*     <li> <code>AnnotationValue[]</code>
	* </ul>
	*
	* @return the value.
	*/
	@:overload public function value() : Dynamic;
	
	
}
