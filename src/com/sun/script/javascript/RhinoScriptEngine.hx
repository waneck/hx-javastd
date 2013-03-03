package com.sun.script.javascript;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
* Implementation of <code>ScriptEngine</code> using the Mozilla Rhino
* interpreter.
*
* @author Mike Grogan
* @author A. Sundararajan
* @since 1.6
*/
@:require(java6) extern class RhinoScriptEngine extends javax.script.AbstractScriptEngine implements javax.script.Invocable implements javax.script.Compilable
{
	/**
	* Creates a new instance of RhinoScriptEngine
	*/
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function eval(reader : java.io.Reader, ctxt : javax.script.ScriptContext) : Dynamic;
	
	@:overload @:public override public function eval(script : String, ctxt : javax.script.ScriptContext) : Dynamic;
	
	@:overload @:public override public function getFactory() : javax.script.ScriptEngineFactory;
	
	@:overload @:public override public function createBindings() : javax.script.Bindings;
	
	@:overload @:public public function invokeFunction(name : String, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public public function invokeMethod(thiz : Dynamic, name : String, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public public function getInterface<T>(clasz : Class<T>) : T;
	
	@:overload @:public public function getInterface<T>(thiz : Dynamic, clasz : Class<T>) : T;
	
	@:overload @:public public function compile(script : String) : javax.script.CompiledScript;
	
	@:overload @:public public function compile(script : java.io.Reader) : javax.script.CompiledScript;
	
	
}
