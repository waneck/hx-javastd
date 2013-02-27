package sun.reflect.generics.tree;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class MethodTypeSignature implements sun.reflect.generics.tree.Signature
{
	@:overload public static function make(ftps : java.NativeArray<sun.reflect.generics.tree.FormalTypeParameter>, pts : java.NativeArray<sun.reflect.generics.tree.TypeSignature>, rt : sun.reflect.generics.tree.ReturnType, ets : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>) : MethodTypeSignature;
	
	@:overload public function getFormalTypeParameters() : java.NativeArray<sun.reflect.generics.tree.FormalTypeParameter>;
	
	@:overload public function getParameterTypes() : java.NativeArray<sun.reflect.generics.tree.TypeSignature>;
	
	@:overload public function getReturnType() : sun.reflect.generics.tree.ReturnType;
	
	@:overload public function getExceptionTypes() : java.NativeArray<sun.reflect.generics.tree.FieldTypeSignature>;
	
	@:overload public function accept(v : sun.reflect.generics.visitor.Visitor<Dynamic>) : Void;
	
	
}
