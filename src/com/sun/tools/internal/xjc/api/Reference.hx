package com.sun.tools.internal.xjc.api;
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
extern class Reference
{
	/**
	* The JAXB type being referenced. Must not be null.
	*/
	public var type(default, null) : com.sun.mirror.type.TypeMirror;
	
	/**
	* The declaration from which annotations for the {@link #type} is read.
	* Must not be null.
	*/
	public var annotations(default, null) : com.sun.mirror.declaration.Declaration;
	
	/**
	* Creates a reference from the return type of the method
	* and annotations on the method.
	*/
	@:overload public function new(method : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	/**
	* Creates a reference from the parameter type
	* and annotations on the parameter.
	*/
	@:overload public function new(param : com.sun.mirror.declaration.ParameterDeclaration) : Void;
	
	/**
	* Creates a reference from a class declaration and its annotations.
	*/
	@:overload public function new(type : com.sun.mirror.declaration.TypeDeclaration, env : com.sun.mirror.apt.AnnotationProcessorEnvironment) : Void;
	
	/**
	* Creates a reference by providing two values independently.
	*/
	@:overload public function new(type : com.sun.mirror.type.TypeMirror, annotations : com.sun.mirror.declaration.Declaration) : Void;
	
	/**
	* Gets the source location that can be used to report error messages regarding
	* this reference.
	*/
	@:overload public function getPosition() : com.sun.mirror.util.SourcePosition;
	
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
