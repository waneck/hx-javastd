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
extern class TypeMonikerFactory
{
	/**
	*
	* @author  dkohlert
	*/
	@:overload @:public @:static public static function getTypeMoniker(typeMirror : com.sun.mirror.type.TypeMirror) : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker;
	
	@:overload @:public @:static public static function getTypeMoniker(typeName : String) : com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$TypeMonikerFactory$ArrayTypeMoniker') @:internal extern class TypeMonikerFactory_ArrayTypeMoniker implements com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker
{
	@:overload @:public public function new(type : com.sun.mirror.type.ArrayType) : Void;
	
	@:overload @:public public function create(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : com.sun.mirror.type.TypeMirror;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$TypeMonikerFactory$DeclaredTypeMoniker') @:internal extern class TypeMonikerFactory_DeclaredTypeMoniker implements com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker
{
	@:overload @:public public function new(type : com.sun.mirror.type.DeclaredType) : Void;
	
	@:overload @:public public function create(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : com.sun.mirror.type.TypeMirror;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$TypeMonikerFactory$PrimitiveTypeMoniker') @:internal extern class TypeMonikerFactory_PrimitiveTypeMoniker implements com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker
{
	@:overload @:public public function new(type : com.sun.mirror.type.PrimitiveType) : Void;
	
	@:overload @:public public function create(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : com.sun.mirror.type.TypeMirror;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$TypeMonikerFactory$StringMoniker') @:internal extern class TypeMonikerFactory_StringMoniker implements com.sun.tools.internal.ws.processor.modeler.annotation.TypeMoniker
{
	@:overload @:public public function new(typeName : String) : Void;
	
	@:overload @:public public function create(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : com.sun.mirror.type.TypeMirror;
	
	
}
