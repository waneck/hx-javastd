package com.sun.tools.internal.ws.processor.generator;
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
extern class GeneratorBase implements com.sun.tools.internal.ws.processor.generator.GeneratorConstants implements com.sun.tools.internal.ws.processor.model.ModelVisitor
{
	@:protected private var donotOverride : Bool;
	
	@:protected private var cm : com.sun.codemodel.internal.JCodeModel;
	
	@:protected @:final private var model(default, null) : com.sun.tools.internal.ws.processor.model.Model;
	
	@:protected @:final private var wsdlLocation(default, null) : String;
	
	@:protected @:final private var receiver(default, null) : com.sun.tools.internal.ws.wscompile.ErrorReceiver;
	
	@:protected @:final private var options(default, null) : com.sun.tools.internal.ws.wscompile.WsimportOptions;
	
	@:overload @:protected private function new(model : com.sun.tools.internal.ws.processor.model.Model, options : com.sun.tools.internal.ws.wscompile.WsimportOptions, receiver : com.sun.tools.internal.ws.wscompile.ErrorReceiver) : Void;
	
	@:overload @:protected private function doGeneration() : Void;
	
	@:overload @:public public function visit(model : com.sun.tools.internal.ws.processor.model.Model) : Void;
	
	@:overload @:public public function visit(service : com.sun.tools.internal.ws.processor.model.Service) : Void;
	
	@:overload @:public public function visit(port : com.sun.tools.internal.ws.processor.model.Port) : Void;
	
	@:overload @:public public function visit(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload @:public public function visit(param : com.sun.tools.internal.ws.processor.model.Parameter) : Void;
	
	@:overload @:public public function visit(block : com.sun.tools.internal.ws.processor.model.Block) : Void;
	
	@:overload @:public public function visit(response : com.sun.tools.internal.ws.processor.model.Response) : Void;
	
	@:overload @:public public function visit(request : com.sun.tools.internal.ws.processor.model.Request) : Void;
	
	@:overload @:public public function visit(fault : com.sun.tools.internal.ws.processor.model.Fault) : Void;
	
	@:overload @:public public function getJAXWSClassComment() : java.util.List<String>;
	
	@:native('getJAXWSClassComment') @:overload @:public @:static public static function _getJAXWSClassComment(targetVersion : String) : java.util.List<String>;
	
	@:overload @:protected private function getClass(className : String, type : com.sun.codemodel.internal.ClassType) : com.sun.codemodel.internal.JDefinedClass;
	
	@:overload @:protected private function log(msg : String) : Void;
	
	@:overload @:protected private function writeHandlerConfig(className : String, cls : com.sun.codemodel.internal.JDefinedClass, options : com.sun.tools.internal.ws.wscompile.WsimportOptions) : Void;
	
	
}
