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
extern class WebServiceAP implements com.sun.mirror.apt.AnnotationProcessor implements com.sun.tools.internal.ws.processor.modeler.annotation.ModelBuilder implements com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceConstants
{
	/**
	* WebServiceAP is a APT AnnotationProcessor for processing javax.jws.* and
	* javax.xml.ws.* annotations. This class is used either by the WsGen (CompileTool) tool or
	*    idirectly via the {@link com.sun.istack.internal.ws.AnnotationProcessorFactoryImpl} when invoked by APT.
	*
	* @author WS Development Team
	*/
	@:protected private var apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment;
	
	@:protected private var context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext;
	
	@:protected private var messager : com.sun.mirror.apt.Messager;
	
	@:overload @:public public function run() : Void;
	
	@:overload @:protected private function parseArguments(args : java.NativeArray<String>) : Bool;
	
	@:overload @:public public function new(options : com.sun.tools.internal.ws.wscompile.WsgenOptions, context : com.sun.tools.internal.ws.processor.modeler.annotation.AnnotationProcessorContext, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver, out : java.io.PrintStream) : Void;
	
	@:overload @:public public function init(apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : Void;
	
	@:overload @:public public function getAPEnv() : com.sun.mirror.apt.AnnotationProcessorEnvironment;
	
	@:overload @:public public function getOptions() : com.sun.tools.internal.ws.wscompile.WsgenOptions;
	
	@:overload @:public public function getSourceDir() : java.io.File;
	
	@:overload @:public public function onError(message : String) : Void;
	
	@:overload @:public public function onError(pos : com.sun.mirror.util.SourcePosition, msg : com.sun.xml.internal.ws.util.localization.Localizable) : Void;
	
	@:overload @:public public function onWarning(message : String) : Void;
	
	@:overload @:public public function onInfo(message : String) : Void;
	
	@:overload @:protected private function report(msg : String) : Void;
	
	@:overload @:public public function process() : Void;
	
	@:overload @:public public function checkAndSetProcessed(typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function clearProcessed() : Void;
	
	@:overload @:public public function setService(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload @:public public function setPort(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload @:public public function addOperation(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload @:public public function setWrapperGenerated(wrapperGenerated : Bool) : Void;
	
	@:overload @:public public function getTypeDeclaration(typeName : String) : com.sun.mirror.declaration.TypeDeclaration;
	
	@:overload @:public public function getSourceVersion() : String;
	
	@:overload @:protected private function createWrapperGenerator() : com.sun.tools.internal.ws.processor.modeler.annotation.WebServiceVisitor;
	
	@:overload @:protected private function shouldProcessWebService(webService : javax.jws.WebService) : Bool;
	
	@:overload @:public public function isException(typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isRemoteException(typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isServiceException(typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public public function isRemote(typeDecl : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public @:static public static function isSubtype(env : com.sun.mirror.apt.AnnotationProcessorEnvironment, d1 : com.sun.mirror.declaration.TypeDeclaration, d2 : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public @:static public static function isSubtype(d1 : com.sun.mirror.declaration.TypeDeclaration, d2 : com.sun.mirror.declaration.TypeDeclaration) : Bool;
	
	@:overload @:public @:static public static function getMethodSig(method : com.sun.mirror.declaration.MethodDeclaration) : String;
	
	@:overload @:public public function getOperationName(messageName : String) : String;
	
	@:overload @:public public function getResponseName(operationName : String) : String;
	
	@:overload @:public public function getHolderValueType(type : com.sun.mirror.type.TypeMirror) : com.sun.mirror.type.TypeMirror;
	
	@:overload @:public public function canOverWriteClass(className : String) : Bool;
	
	@:overload @:public public function log(msg : String) : Void;
	
	@:overload @:public public function getXMLName(javaName : String) : String;
	
	
}
