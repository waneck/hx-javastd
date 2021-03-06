package com.sun.tools.apt.mirror.type;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class DeclaredTypeImpl extends com.sun.tools.apt.mirror.type.TypeMirrorImpl implements com.sun.mirror.type.DeclaredType
{
	/**
	* Implementation of DeclaredType
	*/
	@:protected private var type : com.sun.tools.javac.code.Type.Type_ClassType;
	
	@:overload @:protected private function new(env : com.sun.tools.apt.mirror.AptEnv, type : com.sun.tools.javac.code.Type.Type_ClassType) : Void;
	
	/**
	* Returns a string representation of this declared type.
	* This includes the type's name and any actual type arguments.
	* Type names are qualified.
	*/
	@:overload @:public override public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getDeclaration() : com.sun.mirror.declaration.TypeDeclaration;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getContainingType() : com.sun.mirror.type.DeclaredType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getActualTypeArguments() : java.util.Collection<com.sun.mirror.type.TypeMirror>;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getSuperinterfaces() : java.util.Collection<com.sun.mirror.type.InterfaceType>;
	
	/**
	* Applies a visitor to this type.
	*
	* @param v the visitor operating on this type
	*/
	@:overload @:public override public function accept(v : com.sun.mirror.util.TypeVisitor) : Void;
	
	
}
