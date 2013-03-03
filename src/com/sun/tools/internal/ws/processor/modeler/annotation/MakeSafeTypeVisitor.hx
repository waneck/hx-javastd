package com.sun.tools.internal.ws.processor.modeler.annotation;
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
extern class MakeSafeTypeVisitor extends com.sun.istack.internal.tools.APTTypeVisitor<com.sun.mirror.type.TypeMirror, com.sun.mirror.util.Types> implements com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceConstants
{
	/**
	* Creates a new instance of MakeSafeTypeVisitor
	*/
	@:overload @:public public function new(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : Void;
	
	@:overload @:protected private function onArrayType(type : com.sun.mirror.type.ArrayType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onPrimitiveType(type : com.sun.mirror.type.PrimitiveType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onClassType(type : com.sun.mirror.type.ClassType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onInterfaceType(type : com.sun.mirror.type.InterfaceType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onTypeVariable(type : com.sun.mirror.type.TypeVariable, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onVoidType(type : com.sun.mirror.type.VoidType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function onWildcard(type : com.sun.mirror.type.WildcardType, apTypes : com.sun.mirror.util.Types) : com.sun.mirror.type.TypeMirror;
	
	
}
