package com.sun.script.javascript;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
* Factory to create RhinoScriptEngine
*
* @author Mike Grogan
* @since 1.6
*/
@:require(java6) extern class RhinoScriptEngineFactory extends com.sun.script.util.ScriptEngineFactoryBase
{
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function getExtensions() : java.util.List<String>;
	
	@:overload @:public override public function getMimeTypes() : java.util.List<String>;
	
	@:overload @:public override public function getNames() : java.util.List<String>;
	
	@:overload @:public override public function getParameter(key : String) : Dynamic;
	
	@:overload @:public override public function getScriptEngine() : javax.script.ScriptEngine;
	
	@:overload @:public override public function getMethodCallSyntax(obj : String, method : String, args : java.NativeArray<String>) : String;
	
	@:overload @:public override public function getOutputStatement(toDisplay : String) : String;
	
	@:overload @:public override public function getProgram(statements : java.NativeArray<String>) : String;
	
	
}
