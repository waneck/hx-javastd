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
/**
* This class generates the request/response and Exception Beans
* used by the JAX-WS runtime.
*
* @author  WS Development Team
*/
extern class WebServiceWrapperGenerator extends com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceVisitor
{
	@:overload @:public public function new(builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder, context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext) : Void;
	
	@:overload @:protected override private function processWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload @:protected override private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload @:protected override private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload @:protected private function doPostProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload @:protected override private function processMethod(method : com.sun.mirror.declaration.MethodDeclaration, webMethod : javax.jws.WebMethod) : Void;
	
	@:overload @:protected private function getCMClass(className : String, type : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:protected private function isWSDLException(members : java.util.Collection<com.sun.tools.internal.ws.processor.modeler.annotation.MemberInfo>, thrownDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$WebServiceWrapperGenerator$APTWrapperBeanGenerator') @:internal extern class WebServiceWrapperGenerator_APTWrapperBeanGenerator extends com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator<com.sun.mirror.type.TypeMirror, com.sun.mirror.declaration.TypeDeclaration, com.sun.mirror.declaration.MethodDeclaration, com.sun.tools.internal.ws.processor.modeler.annotation.MemberInfo>
{
	@:overload @:protected private function new(annReader : com.sun.xml.internal.bind.v2.model.annotation.AnnotationReader<com.sun.mirror.type.TypeMirror, com.sun.mirror.declaration.TypeDeclaration, Dynamic, com.sun.mirror.declaration.MethodDeclaration>, nav : com.sun.xml.internal.bind.v2.model.nav.Navigator<com.sun.mirror.type.TypeMirror, com.sun.mirror.declaration.TypeDeclaration, Dynamic, com.sun.mirror.declaration.MethodDeclaration>, beanMemberFactory : com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator.AbstractWrapperBeanGenerator_BeanMemberFactory<com.sun.mirror.type.TypeMirror, com.sun.tools.internal.ws.processor.modeler.annotation.MemberInfo>) : Void;
	
	@:overload @:protected private function getSafeType(type : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function getHolderValueType(paramType : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:protected private function isVoidType(type : com.sun.mirror.type.TypeMirror) : Bool;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$WebServiceWrapperGenerator$FieldFactory') @:internal extern class WebServiceWrapperGenerator_FieldFactory implements com.sun.xml.internal.ws.model.AbstractWrapperBeanGenerator.AbstractWrapperBeanGenerator_BeanMemberFactory<com.sun.mirror.type.TypeMirror, com.sun.tools.internal.ws.processor.modeler.annotation.MemberInfo>
{
	@:overload @:public public function createWrapperBeanMember(paramType : com.sun.mirror.type.TypeMirror, paramName : String, jaxb : java.util.List<java.lang.annotation.Annotation>) : com.sun.tools.internal.ws.processor.modeler.annotation.MemberInfo;
	
	
}
