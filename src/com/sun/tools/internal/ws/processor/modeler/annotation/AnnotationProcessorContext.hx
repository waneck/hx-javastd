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
extern class AnnotationProcessorContext
{
	/** Creates a new instance of AnnotationProcessorContext */
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function addSEIContext(seiName : String, seiContext : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext) : Void;
	
	@:overload @:public public function getSEIContext(seiName : String) : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext;
	
	@:overload @:public public function getSEIContext(d : com.sun.mirror.declaration.TypeDeclaration) : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext;
	
	@:overload @:public public function getSEIContexts() : java.util.Collection<com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext>;
	
	@:overload @:public public function getRound() : Int;
	
	@:overload @:public public function incrementRound() : Void;
	
	@:overload @:public @:static public static function isEncoded(model : com.sun.tools.internal.ws.processor.model.Model) : Bool;
	
	@:overload @:public public function setModelCompleted(modelCompleted : Bool) : Void;
	
	@:overload @:public public function isModelCompleted() : Bool;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$AnnotationProcessorContext$SEIContext') extern class AnnotationProcessorContext_SEIContext
{
	@:overload @:public public function new(seiName : String) : Void;
	
	@:overload @:public public function setImplementsSEI(implementsSEI : Bool) : Void;
	
	@:overload @:public public function getImplementsSEI() : Bool;
	
	@:overload @:public public function setNamespaceURI(namespaceURI : String) : Void;
	
	@:overload @:public public function getNamespaceURI() : String;
	
	@:overload @:public public function getSEIImplName() : String;
	
	@:overload @:public public function setSEIImplName(implName : String) : Void;
	
	@:overload @:public public function setReqWrapperOperation(method : com.sun.mirror.declaration.MethodDeclaration, wrapperInfo : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo) : Void;
	
	@:overload @:public public function getReqOperationWrapper(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo;
	
	@:overload @:public public function setResWrapperOperation(method : com.sun.mirror.declaration.MethodDeclaration, wrapperInfo : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo) : Void;
	
	@:overload @:public public function getResOperationWrapper(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo;
	
	@:overload @:public public function methodToString(method : com.sun.mirror.declaration.MethodDeclaration) : String;
	
	@:overload @:public public function clearExceptionMap() : Void;
	
	@:overload @:public public function addExceptionBeanEntry(exception : String, faultInfo : com.sun.tools.internal.ws.processor.modeler.annotation.FaultInfo, builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder) : Void;
	
	@:overload @:public public function getExceptionBeanName(exception : String) : com.sun.tools.internal.ws.processor.modeler.annotation.FaultInfo;
	
	
}
