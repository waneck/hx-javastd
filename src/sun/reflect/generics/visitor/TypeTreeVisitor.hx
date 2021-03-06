package sun.reflect.generics.visitor;
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
/**
* Visit a TypeTree and produce a result of type T.
*/
extern interface TypeTreeVisitor<T>
{
	/**
	* Returns the result of the visit.
	* @return the result of the visit
	*/
	@:overload public function getResult() : T;
	
	@:overload public function visitFormalTypeParameter(ftp : sun.reflect.generics.tree.FormalTypeParameter) : Void;
	
	@:overload public function visitClassTypeSignature(ct : sun.reflect.generics.tree.ClassTypeSignature) : Void;
	
	@:overload public function visitArrayTypeSignature(a : sun.reflect.generics.tree.ArrayTypeSignature) : Void;
	
	@:overload public function visitTypeVariableSignature(tv : sun.reflect.generics.tree.TypeVariableSignature) : Void;
	
	@:overload public function visitWildcard(w : sun.reflect.generics.tree.Wildcard) : Void;
	
	@:overload public function visitSimpleClassTypeSignature(sct : sun.reflect.generics.tree.SimpleClassTypeSignature) : Void;
	
	@:overload public function visitBottomSignature(b : sun.reflect.generics.tree.BottomSignature) : Void;
	
	@:overload public function visitByteSignature(b : sun.reflect.generics.tree.ByteSignature) : Void;
	
	@:overload public function visitBooleanSignature(b : sun.reflect.generics.tree.BooleanSignature) : Void;
	
	@:overload public function visitShortSignature(s : sun.reflect.generics.tree.ShortSignature) : Void;
	
	@:overload public function visitCharSignature(c : sun.reflect.generics.tree.CharSignature) : Void;
	
	@:overload public function visitIntSignature(i : sun.reflect.generics.tree.IntSignature) : Void;
	
	@:overload public function visitLongSignature(l : sun.reflect.generics.tree.LongSignature) : Void;
	
	@:overload public function visitFloatSignature(f : sun.reflect.generics.tree.FloatSignature) : Void;
	
	@:overload public function visitDoubleSignature(d : sun.reflect.generics.tree.DoubleSignature) : Void;
	
	@:overload public function visitVoidDescriptor(v : sun.reflect.generics.tree.VoidDescriptor) : Void;
	
	
}
