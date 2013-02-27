package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class AbstractTypeImpl implements com.sun.javadoc.Type
{
	/**
	* Abstract implementation of <code>Type</code>, with useful
	* defaults for the methods in <code>Type</code> (and a couple from
	* <code>ProgramElementDoc</code>).
	*
	* @author Scott Seligman
	* @since 1.5
	*/
	@:require(java5) private var env(default, null) : com.sun.tools.javadoc.DocEnv;
	
	private var type(default, null) : com.sun.tools.javac.code.Type;
	
	@:overload private function new(env : com.sun.tools.javadoc.DocEnv, type : com.sun.tools.javac.code.Type) : Void;
	
	@:overload public function typeName() : String;
	
	@:overload public function qualifiedTypeName() : String;
	
	@:overload public function simpleTypeName() : String;
	
	@:overload public function name() : String;
	
	@:overload public function qualifiedName() : String;
	
	@:overload public function toString() : String;
	
	@:overload public function dimension() : String;
	
	@:overload public function isPrimitive() : Bool;
	
	@:overload public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	@:overload public function asTypeVariable() : com.sun.javadoc.TypeVariable;
	
	@:overload public function asWildcardType() : com.sun.javadoc.WildcardType;
	
	@:overload public function asParameterizedType() : com.sun.javadoc.ParameterizedType;
	
	@:overload public function asAnnotationTypeDoc() : com.sun.javadoc.AnnotationTypeDoc;
	
	
}
