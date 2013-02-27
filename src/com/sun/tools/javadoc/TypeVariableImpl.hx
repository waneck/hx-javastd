package com.sun.tools.javadoc;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class TypeVariableImpl extends com.sun.tools.javadoc.AbstractTypeImpl implements com.sun.javadoc.TypeVariable
{
	/**
	* Return the bounds of this type variable.
	*/
	@:overload public function bounds() : java.NativeArray<com.sun.javadoc.Type>;
	
	/**
	* Return the class, interface, method, or constructor within
	* which this type variable is declared.
	*/
	@:overload public function owner() : com.sun.javadoc.ProgramElementDoc;
	
	/**
	* Return the ClassDoc of the erasure of this type variable.
	*/
	@:overload override public function asClassDoc() : com.sun.javadoc.ClassDoc;
	
	@:overload override public function asTypeVariable() : com.sun.javadoc.TypeVariable;
	
	@:overload override public function toString() : String;
	
	
}
