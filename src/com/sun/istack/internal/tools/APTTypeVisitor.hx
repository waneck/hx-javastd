package com.sun.istack.internal.tools;
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
extern class APTTypeVisitor<T, P>
{
	/**
	* Visitor that works on APT {@link TypeMirror} and computes a value.
	*
	* <p>
	* This visitor takes a parameter 'P' so that visitor code can be made stateless.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public @:final public function apply(type : com.sun.mirror.type.TypeMirror, param : P) : T;
	
	@:overload @:protected @:abstract private function onPrimitiveType(type : com.sun.mirror.type.PrimitiveType, param : P) : T;
	
	@:overload @:protected @:abstract private function onArrayType(type : com.sun.mirror.type.ArrayType, param : P) : T;
	
	@:overload @:protected @:abstract private function onClassType(type : com.sun.mirror.type.ClassType, param : P) : T;
	
	@:overload @:protected @:abstract private function onInterfaceType(type : com.sun.mirror.type.InterfaceType, param : P) : T;
	
	@:overload @:protected @:abstract private function onTypeVariable(type : com.sun.mirror.type.TypeVariable, param : P) : T;
	
	@:overload @:protected @:abstract private function onVoidType(type : com.sun.mirror.type.VoidType, param : P) : T;
	
	@:overload @:protected @:abstract private function onWildcard(type : com.sun.mirror.type.WildcardType, param : P) : T;
	
	
}
