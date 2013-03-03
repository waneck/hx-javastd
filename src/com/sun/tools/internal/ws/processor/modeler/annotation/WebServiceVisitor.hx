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
extern class WebServiceVisitor extends com.sun.mirror.util.SimpleDeclarationVisitor implements com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceConstants
{
	/**
	*
	* @author  WS Development Team
	*/
	@:protected private var builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder;
	
	@:protected private var wsdlNamespace : String;
	
	@:protected private var typeNamespace : String;
	
	@:protected private var soapBindingStack : java.util.Stack<javax.jws.soap.SOAPBinding>;
	
	@:protected private var typeDeclSOAPBinding : javax.jws.soap.SOAPBinding;
	
	@:protected private var soapUse : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse;
	
	@:protected private var soapStyle : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle;
	
	@:protected private var wrapped : Bool;
	
	@:protected private var hChain : javax.jws.HandlerChain;
	
	@:protected private var port : com.sun.tools.internal.ws.processor.model.Port;
	
	@:protected private var serviceImplName : String;
	
	@:protected private var endpointInterfaceName : String;
	
	@:protected private var context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext;
	
	@:protected private var seiContext : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext;
	
	@:protected private var processingSEI : Bool;
	
	@:protected private var serviceName : String;
	
	@:protected private var packageName : String;
	
	@:protected private var portName : String;
	
	@:protected private var endpointReferencesInterface : Bool;
	
	@:protected private var simpleTypeCreator : com.sun.tools.internal.ws.processor.modeler.JavaSimpleTypeCreator;
	
	@:protected private var typeDecl : com.sun.mirror.declaration.TypeDeclaration;
	
	@:protected private var processedMethods : java.util.Set<String>;
	
	@:protected private var pushedSOAPBinding : Bool;
	
	@:protected @:static @:final private static var ANNOTATION_ELEMENT_ERROR(default, null) : String;
	
	@:overload @:public public function new(builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder, context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext) : Void;
	
	@:overload @:public override public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload @:public override public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload @:protected private function verifySEIAnnotations(webService : javax.jws.WebService, d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload @:protected private function verifyImplAnnotations(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload @:protected private function checkForInvalidSEIAnnotation(d : com.sun.mirror.declaration.InterfaceDeclaration, annotationClass : Class<Dynamic>) : Void;
	
	@:overload @:protected private function checkForInvalidImplAnnotation(d : com.sun.mirror.declaration.Declaration, annotationClass : Class<Dynamic>) : Void;
	
	@:overload @:protected private function annotationError(pos : com.sun.mirror.util.SourcePosition, message : com.sun.xml.internal.ws.util.localization.Localizable) : Void;
	
	@:overload @:protected private function preProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload @:public @:static public static function sameStyle(style : SOAPBinding.Style, soapStyle : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle) : Bool;
	
	@:overload @:protected private function pushSOAPBinding(soapBinding : javax.jws.soap.SOAPBinding, bindingDecl : com.sun.mirror.declaration.Declaration, classDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:protected private function popSOAPBinding() : javax.jws.soap.SOAPBinding;
	
	@:overload @:protected private function getNamespace(packageDecl : com.sun.mirror.declaration.PackageDeclaration) : String;
	
	@:overload @:protected private function shouldProcessWebService(webService : javax.jws.WebService, intf : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload @:protected private function shouldProcessWebService(webService : javax.jws.WebService, classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload @:abstract @:protected private function processWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload @:protected private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload @:protected private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload @:protected private function hasWebMethods(d : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload @:protected private function processMethods(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload @:protected private function processMethods(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload @:public override public function visitMethodDeclaration(method : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	@:overload @:protected private function processedMethod(method : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:protected private function shouldProcessMethod(method : com.sun.mirror.declaration.MethodDeclaration, webMethod : javax.jws.WebMethod) : Bool;
	
	@:overload @:abstract @:protected private function processMethod(method : com.sun.mirror.declaration.MethodDeclaration, webMethod : javax.jws.WebMethod) : Void;
	
	@:overload @:protected private function isLegalImplementation(webService : javax.jws.WebService, classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload @:protected private function classImplementsSEI(classDecl : com.sun.mirror.declaration.ClassDeclaration, intfDecl : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload @:protected private function sameMethod(method1 : com.sun.mirror.declaration.MethodDeclaration, method2 : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload @:protected private function isLegalSEI(intf : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload @:protected private function methodsAreLegal(intfDecl : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload @:protected private function methodsAreLegal(classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload @:protected private function isLegalMethod(method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:protected private function isLegalParameter(param : com.sun.mirror.declaration.ParameterDeclaration, method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration, paramIndex : Int) : Bool;
	
	@:overload @:protected private function isDocLitWrapped() : Bool;
	
	@:overload @:protected private function isValidOnewayMethod(method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:protected private function getModeParameterCount(method : com.sun.mirror.declaration.MethodDeclaration, mode : WebParam.Mode) : Int;
	
	@:overload @:protected private function isEquivalentModes(mode1 : WebParam.Mode, mode2 : WebParam.Mode) : Bool;
	
	@:overload @:protected private function isHolder(param : com.sun.mirror.declaration.ParameterDeclaration) : Bool;
	
	@:overload @:protected private function isLegalType(type : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload @:protected private function getOutParameter(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.mirror.declaration.ParameterDeclaration;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$WebServiceVisitor$MySOAPBinding') extern class WebServiceVisitor_MySOAPBinding implements javax.jws.soap.SOAPBinding
{
	@:overload @:public public function style() : Style;
	
	@:overload @:public public function use() : Use;
	
	@:overload @:public public function parameterStyle() : ParameterStyle;
	
	@:overload @:public public function annotationType() : Class<java.lang.annotation.Annotation>;
	
	
}
