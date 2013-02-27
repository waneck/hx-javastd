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
	private var builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder;
	
	private var wsdlNamespace : String;
	
	private var typeNamespace : String;
	
	private var soapBindingStack : java.util.Stack<javax.jws.soap.SOAPBinding>;
	
	private var typeDeclSOAPBinding : javax.jws.soap.SOAPBinding;
	
	private var soapUse : com.sun.tools.internal.ws.wsdl.document.soap.SOAPUse;
	
	private var soapStyle : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle;
	
	private var wrapped : Bool;
	
	private var hChain : javax.jws.HandlerChain;
	
	private var port : com.sun.tools.internal.ws.processor.model.Port;
	
	private var serviceImplName : String;
	
	private var endpointInterfaceName : String;
	
	private var context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext;
	
	private var seiContext : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext.AnnotationProcessorContext_SEIContext;
	
	private var processingSEI : Bool;
	
	private var serviceName : String;
	
	private var packageName : String;
	
	private var portName : String;
	
	private var endpointReferencesInterface : Bool;
	
	private var simpleTypeCreator : com.sun.tools.internal.ws.processor.modeler.JavaSimpleTypeCreator;
	
	private var typeDecl : com.sun.mirror.declaration.TypeDeclaration;
	
	private var processedMethods : java.util.Set<String>;
	
	private var pushedSOAPBinding : Bool;
	
	private static var ANNOTATION_ELEMENT_ERROR(default, null) : String;
	
	@:overload public function new(builder : com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder, context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext) : Void;
	
	@:overload override public function visitInterfaceDeclaration(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload override public function visitClassDeclaration(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload private function verifySEIAnnotations(webService : javax.jws.WebService, d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload private function verifyImplAnnotations(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload private function checkForInvalidSEIAnnotation(d : com.sun.mirror.declaration.InterfaceDeclaration, annotationClass : Class<Dynamic>) : Void;
	
	@:overload private function checkForInvalidImplAnnotation(d : com.sun.mirror.declaration.Declaration, annotationClass : Class<Dynamic>) : Void;
	
	@:overload private function annotationError(pos : com.sun.mirror.util.SourcePosition, message : com.sun.xml.internal.ws.util.localization.Localizable) : Void;
	
	@:overload private function preProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload public static function sameStyle(style : SOAPBinding.Style, soapStyle : com.sun.tools.internal.ws.wsdl.document.soap.SOAPStyle) : Bool;
	
	@:overload private function pushSOAPBinding(soapBinding : javax.jws.soap.SOAPBinding, bindingDecl : com.sun.mirror.declaration.Declaration, classDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload private function popSOAPBinding() : javax.jws.soap.SOAPBinding;
	
	@:overload private function getNamespace(packageDecl : com.sun.mirror.declaration.PackageDeclaration) : String;
	
	@:overload private function shouldProcessWebService(webService : javax.jws.WebService, intf : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload private function shouldProcessWebService(webService : javax.jws.WebService, classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload @:abstract private function processWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.TypeDeclaration) : Void;
	
	@:overload private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload private function postProcessWebService(webService : javax.jws.WebService, d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload private function hasWebMethods(d : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload private function processMethods(d : com.sun.mirror.declaration.InterfaceDeclaration) : Void;
	
	@:overload private function processMethods(d : com.sun.mirror.declaration.ClassDeclaration) : Void;
	
	@:overload override public function visitMethodDeclaration(method : com.sun.mirror.declaration.MethodDeclaration) : Void;
	
	@:overload private function processedMethod(method : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload private function shouldProcessMethod(method : com.sun.mirror.declaration.MethodDeclaration, webMethod : javax.jws.WebMethod) : Bool;
	
	@:overload @:abstract private function processMethod(method : com.sun.mirror.declaration.MethodDeclaration, webMethod : javax.jws.WebMethod) : Void;
	
	@:overload private function isLegalImplementation(webService : javax.jws.WebService, classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload private function classImplementsSEI(classDecl : com.sun.mirror.declaration.ClassDeclaration, intfDecl : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload private function sameMethod(method1 : com.sun.mirror.declaration.MethodDeclaration, method2 : com.sun.mirror.declaration.MethodDeclaration) : Bool;
	
	@:overload private function isLegalSEI(intf : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload private function methodsAreLegal(intfDecl : com.sun.mirror.declaration.InterfaceDeclaration) : Bool;
	
	@:overload private function methodsAreLegal(classDecl : com.sun.mirror.declaration.ClassDeclaration) : Bool;
	
	@:overload private function isLegalMethod(method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload private function isLegalParameter(param : com.sun.mirror.declaration.ParameterDeclaration, method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration, paramIndex : Int) : Bool;
	
	@:overload private function isDocLitWrapped() : Bool;
	
	@:overload private function isValidOnewayMethod(method : com.sun.mirror.declaration.MethodDeclaration, typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload private function getModeParameterCount(method : com.sun.mirror.declaration.MethodDeclaration, mode : WebParam.Mode) : Int;
	
	@:overload private function isEquivalentModes(mode1 : WebParam.Mode, mode2 : WebParam.Mode) : Bool;
	
	@:overload private function isHolder(param : com.sun.mirror.declaration.ParameterDeclaration) : Bool;
	
	@:overload private function isLegalType(type : com.sun.mirror.type.TypeMirror) : Bool;
	
	@:overload private function getOutParameter(method : com.sun.mirror.declaration.MethodDeclaration) : com.sun.mirror.declaration.ParameterDeclaration;
	
	
}
@:native('com$sun$tools$internal$ws$processor$modeler$annotation$WebServiceVisitor$MySOAPBinding') extern class WebServiceVisitor_MySOAPBinding implements javax.jws.soap.SOAPBinding
{
	@:overload public function style() : Style;
	
	@:overload public function use() : Use;
	
	@:overload public function parameterStyle() : ParameterStyle;
	
	@:overload public function annotationType() : Class<java.lang.annotation.Annotation>;
	
	
}
