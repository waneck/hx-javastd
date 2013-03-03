package javax.script;
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
extern class CompiledScript
{
	/**
	* Executes the program stored in this <code>CompiledScript</code> object.
	*
	* @param context A <code>ScriptContext</code> that is used in the same way as
	* the <code>ScriptContext</code> passed to the <code>eval</code> methods of
	* <code>ScriptEngine</code>.
	*
	* @return The value returned by the script execution, if any.  Should return <code>null</code>
	* if no value is returned by the script execution.
	*
	* @throws ScriptException if an error occurs.
	* @throws NullPointerException if context is null.
	*/
	@:overload @:public @:abstract public function eval(context : javax.script.ScriptContext) : Dynamic;
	
	/**
	* Executes the program stored in the <code>CompiledScript</code> object using
	* the supplied <code>Bindings</code> of attributes as the <code>ENGINE_SCOPE</code> of the
	* associated <code>ScriptEngine</code> during script execution.  If bindings is null,
	* then the effect of calling this method is same as that of eval(getEngine().getContext()).
	* <p>.
	* The <code>GLOBAL_SCOPE</code> <code>Bindings</code>, <code>Reader</code> and <code>Writer</code>
	* associated with the default <code>ScriptContext</code> of the associated <code>ScriptEngine</code> are used.
	*
	* @param bindings The bindings of attributes used for the <code>ENGINE_SCOPE</code>.
	*
	* @return The return value from the script execution
	*
	* @throws ScriptException if an error occurs.
	*/
	@:overload @:public public function eval(bindings : javax.script.Bindings) : Dynamic;
	
	/**
	* Executes the program stored in the <code>CompiledScript</code> object.  The
	* default <code>ScriptContext</code> of the associated <code>ScriptEngine</code> is used.
	* The effect of calling this method is same as that of eval(getEngine().getContext()).
	*
	* @return The return value from the script execution
	*
	* @throws ScriptException if an error occurs.
	*/
	@:overload @:public public function eval() : Dynamic;
	
	/**
	* Returns the <code>ScriptEngine</code> whose <code>compile</code> method created this <code>CompiledScript</code>.
	* The <code>CompiledScript</code> will execute in this engine.
	*
	* @return The <code>ScriptEngine</code> that created this <code>CompiledScript</code>
	*/
	@:overload @:public @:abstract public function getEngine() : javax.script.ScriptEngine;
	
	
}
