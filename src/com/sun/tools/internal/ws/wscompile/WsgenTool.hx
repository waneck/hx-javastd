package com.sun.tools.internal.ws.wscompile;
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
extern class WsgenTool implements com.sun.mirror.apt.AnnotationProcessorFactory
{
	@:overload @:public public function new(out : java.io.OutputStream, container : com.sun.xml.internal.ws.api.server.Container) : Void;
	
	@:overload @:public public function new(out : java.io.OutputStream) : Void;
	
	@:overload @:public public function run(args : java.NativeArray<String>) : Bool;
	
	@:overload @:public public function buildModel(endpoint : String, listener : com.sun.tools.internal.ws.wscompile.WsgenTool.WsgenTool_Listener) : Bool;
	
	@:overload @:protected private function usage(options : com.sun.tools.internal.ws.wscompile.WsgenOptions) : Void;
	
	@:overload @:public public function supportedOptions() : java.util.Collection<String>;
	
	@:overload @:public public function supportedAnnotationTypes() : java.util.Collection<String>;
	
	@:overload @:public public function getProcessorFor(set : java.util.Set<com.sun.mirror.declaration.AnnotationTypeDeclaration>, apEnv : com.sun.mirror.apt.AnnotationProcessorEnvironment) : com.sun.mirror.apt.AnnotationProcessor;
	
	
}
/**
* "Namespace" for code needed to generate the report file.
*/
@:native('com$sun$tools$internal$ws$wscompile$WsgenTool$ReportOutput') @:internal extern class WsgenTool_ReportOutput
{
	
}
@:native('com$sun$tools$internal$ws$wscompile$WsgenTool$ReportOutput$Report') @:internal extern interface WsgenTool_ReportOutput_Report extends com.sun.xml.internal.txw2.TypedXmlWriter
{
	@:overload public function wsdl(file : String) : Void;
	
	@:overload public function portType() : com.sun.tools.internal.ws.wscompile.WsgenTool.WsgenTool_ReportOutput_QualifiedName;
	
	@:overload public function service() : com.sun.tools.internal.ws.wscompile.WsgenTool.WsgenTool_ReportOutput_QualifiedName;
	
	@:overload public function port() : com.sun.tools.internal.ws.wscompile.WsgenTool.WsgenTool_ReportOutput_QualifiedName;
	
	/**
	* Name of the class that has {@link javax.jws.WebService}.
	*/
	@:overload public function implClass(name : String) : Void;
	
	@:overload public function schema() : com.sun.tools.internal.ws.wscompile.WsgenTool.WsgenTool_ReportOutput_Schema;
	
	
}
@:native('com$sun$tools$internal$ws$wscompile$WsgenTool$ReportOutput$QualifiedName') @:internal extern interface WsgenTool_ReportOutput_QualifiedName extends com.sun.xml.internal.txw2.TypedXmlWriter
{
	@:overload public function uri(ns : String) : Void;
	
	@:overload public function localName(localName : String) : Void;
	
	
}
@:native('com$sun$tools$internal$ws$wscompile$WsgenTool$ReportOutput$Schema') @:internal extern interface WsgenTool_ReportOutput_Schema extends com.sun.xml.internal.txw2.TypedXmlWriter
{
	@:overload public function ns(ns : String) : Void;
	
	@:overload public function location(filePath : String) : Void;
	
	
}
@:native('com$sun$tools$internal$ws$wscompile$WsgenTool$Listener') @:internal extern class WsgenTool_Listener extends com.sun.tools.internal.ws.wscompile.WsimportListener
{
	@:overload @:public override public function generatedFile(fileName : String) : Void;
	
	@:overload @:public override public function message(msg : String) : Void;
	
	@:overload @:public override public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function info(exception : org.xml.sax.SAXParseException) : Void;
	
	
}
