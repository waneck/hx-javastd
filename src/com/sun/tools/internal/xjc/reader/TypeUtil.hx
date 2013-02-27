package com.sun.tools.internal.xjc.reader;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeUtil
{
	/**
	* Computes the common base type of two types.
	*
	* @param types
	*      set of {@link JType} objects.
	*/
	@:overload public static function getCommonBaseType(codeModel : com.sun.codemodel.internal.JCodeModel, types : java.util.Collection<com.sun.codemodel.internal.JType>) : com.sun.codemodel.internal.JType;
	
	/**
	* Computes the common base type of types.
	*
	* TODO: this is a very interesting problem. Since one type has possibly
	* multiple base types, it's not an easy problem.
	* The current implementation is very naive.
	*
	* To make the result deterministic across differente JVMs, we have to
	* use a Set whose ordering is deterministic.
	*/
	@:overload public static function getCommonBaseType(codeModel : com.sun.codemodel.internal.JCodeModel, t : java.NativeArray<com.sun.codemodel.internal.JType>) : com.sun.codemodel.internal.JType;
	
	/**
	* Obtains a {@link JType} object for the string representation
	* of a type.
	*/
	@:overload public static function getType(codeModel : com.sun.codemodel.internal.JCodeModel, typeName : String, errorHandler : com.sun.tools.internal.xjc.ErrorReceiver, errorSource : org.xml.sax.Locator) : com.sun.codemodel.internal.JType;
	
	
}
