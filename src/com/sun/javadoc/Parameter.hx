package com.sun.javadoc;
/*
* Copyright (c) 1998, 2004, Oracle and/or its affiliates. All rights reserved.
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
* Parameter information.
* This includes a parameter type and parameter name.
*
* @author Robert Field
*/
extern interface Parameter
{
	/**
	* Get the type of this parameter.
	*/
	@:overload public function type() : com.sun.javadoc.Type;
	
	/**
	* Get local name of this parameter.
	* For example if parameter is the short 'index', returns "index".
	*/
	@:overload public function name() : String;
	
	/**
	* Get type name of this parameter.
	* For example if parameter is the short 'index', returns "short".
	* <p>
	* This method returns a complete string
	* representation of the type, including the dimensions of arrays and
	* the type arguments of parameterized types.  Names are qualified.
	*/
	@:overload public function typeName() : String;
	
	/**
	* Get the annotations of this parameter.
	* Return an empty array if there are none.
	*
	* @return the annotations of this parameter.
	* @since 1.5
	*/
	@:require(java5) @:overload public function annotations() : java.NativeArray<com.sun.javadoc.AnnotationDesc>;
	
	
}
