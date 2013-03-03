package com.sun.tools.apt.mirror.declaration;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class AnnotationMirrorImpl implements com.sun.mirror.declaration.AnnotationMirror
{
	/**
	* Implementation of AnnotationMirror
	*/
	@:protected @:final private var env(default, null) : com.sun.tools.apt.mirror.AptEnv;
	
	@:protected @:final private var anno(default, null) : com.sun.tools.javac.code.Attribute.Attribute_Compound;
	
	@:protected @:final private var decl(default, null) : com.sun.mirror.declaration.Declaration;
	
	/**
	* Returns a string representation of this annotation.
	* String is of one of the forms:
	*     @com.example.foo(name1=val1, name2=val2)
	*     @com.example.foo(val)
	*     @com.example.foo
	* Omit parens for marker annotations, and omit "value=" when allowed.
	*/
	@:overload @:public public function toString() : String;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getAnnotationType() : com.sun.mirror.type.AnnotationType;
	
	/**
	* {@inheritDoc}
	*/
	@:overload @:public public function getElementValues() : java.util.Map<com.sun.mirror.declaration.AnnotationTypeElementDeclaration, com.sun.mirror.declaration.AnnotationValue>;
	
	@:overload @:public public function getPosition() : com.sun.mirror.util.SourcePosition;
	
	@:overload @:public public function getDeclaration() : com.sun.mirror.declaration.Declaration;
	
	
}
