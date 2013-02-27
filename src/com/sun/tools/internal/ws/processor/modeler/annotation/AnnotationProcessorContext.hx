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
	@:overload public function new() : Void;
	
	@:overload public function addSEIContext(seiName : String, seiContext : AnnotationProcessorContext_SEIContext) : Void;
	
	@:overload public function getSEIContext(seiName : String) : AnnotationProcessorContext_SEIContext;
	
	@:overload public function getSEIContext(d : com.sun.mirror.declaration.TypeDeclaration) : AnnotationProcessorContext_SEIContext;
	
	@:overload public function getSEIContexts() : java.util.Collection<AnnotationProcessorContext_SEIContext>;
	
	@:overload public function getRound() : Int;
	
	@:overload public function incrementRound() : Void;
	
	@:overload public static function isEncoded(model : com.sun.tools.internal.ws.processor.model.Model) : Bool;
	
	@:overload public function setModelCompleted(modelCompleted : Bool) : Void;
	
	@:overload public function isModelCompleted() : Bool;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$AnnotationProcessorContext$SEIContext') extern class AnnotationProcessorContext_SEIContext
{
	@:overload public function new(seiName : String) : Void;
	
	@:overload public function setImplementsSEI(implementsSEI : Bool) : Void;
	
	@:overload public function getImplementsSEI() : Bool;
	
	@:overload public function setNamespaceURI(namespaceURI : String) : Void;
	
	@:overload public function getNamespaceURI() : String;
	
	@:overload public function getSEIImplName() : String;
	
	@:overload public function setSEIImplName(implName : String) : Void;
	
	@:overload public function setReqWrapperOperation(method : com.sun.mirror.declaration.MethodDeclaration, wrapperInfo : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo) : Void;
	
	@:overload public function getReqOperationWrapper(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo;
	
	@:overload public function setResWrapperOperation(method : com.sun.mirror.declaration.MethodDeclaration, wrapperInfo : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo) : Void;
	
	@:overload public function getResOperationWrapper(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.tools.internal.ws.processor.modeler.annotation.WrapperInfo;
	
	@:overload public function methodToString(method : com.sun.mirror.declaration.MethodDeclaration) : String;
	
	@:overload public function clearExceptionMap() : Void;
	
	@:overload public function addExceptionBeanEntry(exception : String, faultInfo : com.sun.tools.internal.ws.processor.modeler.annotation.FaultInfo, builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder) : Void;
	
	@:overload public function getExceptionBeanName(exception : String) : com.sun.tools.internal.ws.processor.modeler.annotation.FaultInfo;
	
	
}
