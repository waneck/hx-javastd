package javax.script;
/*
* Copyright (c) 2005, 2006, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractScriptEngine implements javax.script.ScriptEngine
{
	/**
	* The default <code>ScriptContext</code> of this <code>AbstractScriptEngine</code>.
	*/
	@:protected private var context : javax.script.ScriptContext;
	
	/**
	* Creates a new instance of AbstractScriptEngine using a <code>SimpleScriptContext</code>
	* as its default <code>ScriptContext</code>.
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* Creates a new instance using the specified <code>Bindings</code> as the
	* <code>ENGINE_SCOPE</code> <code>Bindings</code> in the protected <code>context</code> field.
	*
	* @param n The specified <code>Bindings</code>.
	* @throws NullPointerException if n is null.
	*/
	@:overload @:public public function new(n : javax.script.Bindings) : Void;
	
	/**
	* Sets the value of the protected <code>context</code> field to the specified
	* <code>ScriptContext</code>.
	*
	* @param ctxt The specified <code>ScriptContext</code>.
	* @throws NullPointerException if ctxt is null.
	*/
	@:overload @:public public function setContext(ctxt : javax.script.ScriptContext) : Void;
	
	/**
	* Returns the value of the protected <code>context</code> field.
	*
	* @return The value of the protected <code>context</code> field.
	*/
	@:overload @:public public function getContext() : javax.script.ScriptContext;
	
	/**
	* Returns the <code>Bindings</code> with the specified scope value in
	* the protected <code>context</code> field.
	*
	* @param scope The specified scope
	*
	* @return The corresponding <code>Bindings</code>.
	*
	* @throws IllegalArgumentException if the value of scope is
	* invalid for the type the protected <code>context</code> field.
	*/
	@:overload @:public public function getBindings(scope : Int) : javax.script.Bindings;
	
	/**
	* Sets the <code>Bindings</code> with the corresponding scope value in the
	* <code>context</code> field.
	*
	* @param bindings The specified <code>Bindings</code>.
	* @param scope The specified scope.
	*
	* @throws IllegalArgumentException if the value of scope is
	* invalid for the type the <code>context</code> field.
	* @throws NullPointerException if the bindings is null and the scope is
	* <code>ScriptContext.ENGINE_SCOPE</code>
	*/
	@:overload @:public public function setBindings(bindings : javax.script.Bindings, scope : Int) : Void;
	
	/**
	* Sets the specified value with the specified key in the <code>ENGINE_SCOPE</code>
	* <code>Bindings</code> of the protected <code>context</code> field.
	*
	* @param key The specified key.
	* @param value The specified value.
	*
	* @throws NullPointerException if key is null.
	* @throws IllegalArgumentException if key is empty.
	*/
	@:overload @:public public function put(key : String, value : Dynamic) : Void;
	
	/**
	* Gets the value for the specified key in the <code>ENGINE_SCOPE</code> of the
	* protected <code>context</code> field.
	*
	* @return The value for the specified key.
	*
	* @throws NullPointerException if key is null.
	* @throws IllegalArgumentException if key is empty.
	*/
	@:overload @:public public function get(key : String) : Dynamic;
	
	/**
	* <code>eval(Reader, Bindings)</code> calls the abstract
	* <code>eval(Reader, ScriptContext)</code> method, passing it a <code>ScriptContext</code>
	* whose Reader, Writers and Bindings for scopes other that <code>ENGINE_SCOPE</code>
	* are identical to those members of the protected <code>context</code> field.  The specified
	* <code>Bindings</code> is used instead of the <code>ENGINE_SCOPE</code>
	*
	* <code>Bindings</code> of the <code>context</code> field.
	*
	* @param reader A <code>Reader</code> containing the source of the script.
	* @param bindings A <code>Bindings</code> to use for the <code>ENGINE_SCOPE</code>
	* while the script executes.
	*
	* @return The return value from <code>eval(Reader, ScriptContext)</code>
	* @throws ScriptException if an error occurs in script.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function eval(reader : java.io.Reader, bindings : javax.script.Bindings) : Dynamic;
	
	/**
	* Same as <code>eval(Reader, Bindings)</code> except that the abstract
	* <code>eval(String, ScriptContext)</code> is used.
	*
	* @param script A <code>String</code> containing the source of the script.
	*
	* @param bindings A <code>Bindings</code> to use as the <code>ENGINE_SCOPE</code>
	* while the script executes.
	*
	* @return The return value from <code>eval(String, ScriptContext)</code>
	* @throws ScriptException if an error occurs in script.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function eval(script : String, bindings : javax.script.Bindings) : Dynamic;
	
	/**
	* <code>eval(Reader)</code> calls the abstract
	* <code>eval(Reader, ScriptContext)</code> passing the value of the <code>context</code>
	* field.
	*
	* @param reader A <code>Reader</code> containing the source of the script.
	* @return The return value from <code>eval(Reader, ScriptContext)</code>
	* @throws ScriptException if an error occurs in script.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function eval(reader : java.io.Reader) : Dynamic;
	
	/**
	* Same as <code>eval(Reader)</code> except that the abstract
	* <code>eval(String, ScriptContext)</code> is used.
	*
	* @param script A <code>String</code> containing the source of the script.
	* @return The return value from <code>eval(String, ScriptContext)</code>
	* @throws ScriptException if an error occurrs in script.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function eval(script : String) : Dynamic;
	
	/**
	* Returns a <code>SimpleScriptContext</code>.  The <code>SimpleScriptContext</code>:
	*<br><br>
	* <ul>
	* <li>Uses the specified <code>Bindings</code> for its <code>ENGINE_SCOPE</code>
	* </li>
	* <li>Uses the <code>Bindings</code> returned by the abstract <code>getGlobalScope</code>
	* method as its <code>GLOBAL_SCOPE</code>
	* </li>
	* <li>Uses the Reader and Writer in the default <code>ScriptContext</code> of this
	* <code>ScriptEngine</code>
	* </li>
	* </ul>
	* <br><br>
	* A <code>SimpleScriptContext</code> returned by this method is used to implement eval methods
	* using the abstract <code>eval(Reader,Bindings)</code> and <code>eval(String,Bindings)</code>
	* versions.
	*
	* @param nn Bindings to use for the <code>ENGINE_SCOPE</code>
	* @return The <code>SimpleScriptContext</code>
	*/
	@:overload @:protected private function getScriptContext(nn : javax.script.Bindings) : javax.script.ScriptContext;
	
	/**
	* Returns a <code>ScriptEngineFactory</code> for the class to which this <code>ScriptEngine</code> belongs.
	*
	* @return The <code>ScriptEngineFactory</code>
	*/
	@:overload @:public public function getFactory() : javax.script.ScriptEngineFactory;
	
	/**
	* Causes the immediate execution of the script whose source is the String
	* passed as the first argument.  The script may be reparsed or recompiled before
	* execution.  State left in the engine from previous executions, including
	* variable values and compiled procedures may be visible during this execution.
	*
	* @param script The script to be executed by the script engine.
	*
	* @param context A <code>ScriptContext</code> exposing sets of attributes in
	* different scopes.  The meanings of the scopes <code>ScriptContext.GLOBAL_SCOPE</code>,
	* and <code>ScriptContext.ENGINE_SCOPE</code> are defined in the specification.
	* <br><br>
	* The <code>ENGINE_SCOPE</code> <code>Bindings</code> of the <code>ScriptContext</code> contains the
	* bindings of scripting variables to application objects to be used during this
	* script execution.
	*
	*
	* @return The value returned from the execution of the script.
	*
	* @throws ScriptException if an error occurrs in script. ScriptEngines should create and throw
	* <code>ScriptException</code> wrappers for checked Exceptions thrown by underlying scripting
	* implementations.
	* @throws NullPointerException if either argument is null.
	*/
	@:overload @:public public function eval(script : String, context : javax.script.ScriptContext) : Dynamic;
	
	/**
	* Same as <code>eval(String, ScriptContext)</code> where the source of the script
	* is read from a <code>Reader</code>.
	*
	* @param reader The source of the script to be executed by the script engine.
	*
	* @param context The <code>ScriptContext</code> passed to the script engine.
	*
	* @return The value returned from the execution of the script.
	*
	* @throws ScriptException if an error occurrs in script.
	* @throws NullPointerException if either argument is null.
	*/
	@:overload @:public public function eval(reader : java.io.Reader, context : javax.script.ScriptContext) : Dynamic;
	
	/**
	* Returns an uninitialized <code>Bindings</code>.
	*
	* @return A <code>Bindings</code> that can be used to replace the state of this <code>ScriptEngine</code>.
	**/
	@:overload @:public public function createBindings() : javax.script.Bindings;
	
	
}
