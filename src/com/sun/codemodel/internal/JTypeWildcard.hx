package com.sun.codemodel.internal;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class JTypeWildcard extends com.sun.codemodel.internal.JClass
{
	@:overload public function name() : String;
	
	@:overload public function fullName() : String;
	
	@:overload public function _package() : com.sun.codemodel.internal.JPackage;
	
	/**
	* Returns the class bound of this variable.
	*
	* <p>
	* If no bound is given, this method returns {@link Object}.
	*/
	@:overload public function _extends() : com.sun.codemodel.internal.JClass;
	
	/**
	* Returns the interface bounds of this variable.
	*/
	@:overload public function _implements() : java.util.Iterator<com.sun.codemodel.internal.JClass>;
	
	@:overload public function isInterface() : Bool;
	
	@:overload public function isAbstract() : Bool;
	
	@:overload private function substituteParams(variables : java.NativeArray<com.sun.codemodel.internal.JTypeVar>, bindings : java.util.List<com.sun.codemodel.internal.JClass>) : com.sun.codemodel.internal.JClass;
	
	@:overload override public function generate(f : com.sun.codemodel.internal.JFormatter) : Void;
	
	
}
