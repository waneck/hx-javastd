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
extern interface ScriptEngineFactory
{
	/**
	* Returns the full  name of the <code>ScriptEngine</code>.  For
	* instance an implementation based on the Mozilla Rhino Javascript engine
	* might return <i>Rhino Mozilla Javascript Engine</i>.
	* @return The name of the engine implementation.
	*/
	@:overload @:public public function getEngineName() : String;
	
	/**
	* Returns the version of the <code>ScriptEngine</code>.
	* @return The <code>ScriptEngine</code> implementation version.
	*/
	@:overload @:public public function getEngineVersion() : String;
	
	/**
	* Returns an immutable list of filename extensions, which generally identify scripts
	* written in the language supported by this <code>ScriptEngine</code>.
	* The array is used by the <code>ScriptEngineManager</code> to implement its
	* <code>getEngineByExtension</code> method.
	* @return The list of extensions.
	*/
	@:overload @:public @:public public function getExtensions() : java.util.List<String>;
	
	/**
	* Returns an immutable list of mimetypes, associated with scripts that
	* can be executed by the engine.  The list is used by the
	* <code>ScriptEngineManager</code> class to implement its
	* <code>getEngineByMimetype</code> method.
	* @return The list of mime types.
	*/
	@:overload @:public @:public public function getMimeTypes() : java.util.List<String>;
	
	/**
	* Returns an immutable list of  short names for the <code>ScriptEngine</code>, which may be used to
	* identify the <code>ScriptEngine</code> by the <code>ScriptEngineManager</code>.
	* For instance, an implementation based on the Mozilla Rhino Javascript engine might
	* return list containing {&quot;javascript&quot;, &quot;rhino&quot;}.
	*/
	@:overload @:public @:public public function getNames() : java.util.List<String>;
	
	/**
	* Returns the name of the scripting langauge supported by this
	* <code>ScriptEngine</code>.
	* @return The name of the supported language.
	*/
	@:overload @:public public function getLanguageName() : String;
	
	/**
	* Returns the version of the scripting language supported by this
	* <code>ScriptEngine</code>.
	* @return The version of the supported language.
	*/
	@:overload @:public public function getLanguageVersion() : String;
	
	/**
	* Returns the value of an attribute whose meaning may be implementation-specific.
	* Keys for which the value is defined in all implementations are:
	* <ul>
	* <li>ScriptEngine.ENGINE</li>
	* <li>ScriptEngine.ENGINE_VERSION</li>
	* <li>ScriptEngine.NAME</li>
	* <li>ScriptEngine.LANGUAGE</li>
	* <li>ScriptEngine.LANGUAGE_VERSION</li>
	* </ul>
	* <p>
	* The values for these keys are the Strings returned by <code>getEngineName</code>,
	* <code>getEngineVersion</code>, <code>getName</code>, <code>getLanguageName</code> and
	* <code>getLanguageVersion</code> respectively.<br><br>
	* A reserved key, <code><b>THREADING</b></code>, whose value describes the behavior of the engine
	* with respect to concurrent execution of scripts and maintenance of state is also defined.
	* These values for the <code><b>THREADING</b></code> key are:<br><br>
	* <ul>
	* <li><code>null</code> - The engine implementation is not thread safe, and cannot
	* be used to execute scripts concurrently on multiple threads.
	* <li><code>&quot;MULTITHREADED&quot;</code> - The engine implementation is internally
	* thread-safe and scripts may execute concurrently although effects of script execution
	* on one thread may be visible to scripts on other threads.
	* <li><code>&quot;THREAD-ISOLATED&quot;</code> - The implementation satisfies the requirements
	* of &quot;MULTITHREADED&quot;, and also, the engine maintains independent values
	* for symbols in scripts executing on different threads.
	* <li><code>&quot;STATELESS&quot;</code> - The implementation satisfies the requirements of
	* <li><code>&quot;THREAD-ISOLATED&quot;</code>.  In addition, script executions do not alter the
	* mappings in the <code>Bindings</code> which is the engine scope of the
	* <code>ScriptEngine</code>.  In particular, the keys in the <code>Bindings</code>
	* and their associated values are the same before and after the execution of the script.
	* </ul>
	* <br><br>
	* Implementations may define implementation-specific keys.
	*
	* @param key The name of the parameter
	* @return The value for the given parameter. Returns <code>null</code> if no
	* value is assigned to the key.
	*
	*/
	@:overload @:public @:public public function getParameter(key : String) : Dynamic;
	
	/**
	* Returns a String which can be used to invoke a method of a  Java object using the syntax
	* of the supported scripting language.  For instance, an implementaton for a Javascript
	* engine might be;
	* <p>
	* <pre>
	* <code>
	* public String getMethodCallSyntax(String obj,
	*                                   String m, String... args) {
	*      String ret = obj;
	*      ret += "." + m + "(";
	*      for (int i = 0; i < args.length; i++) {
	*          ret += args[i];
	*          if (i < args.length - 1) {
	*              ret += ",";
	*          }
	*      }
	*      ret += ")";
	*      return ret;
	* }
	*</code>
	*</pre>
	* <p>
	*
	* @param obj The name representing the object whose method is to be invoked. The
	* name is the one used to create bindings using the <code>put</code> method of
	* <code>ScriptEngine</code>, the <code>put</code> method of an <code>ENGINE_SCOPE</code>
	* <code>Bindings</code>,or the <code>setAttribute</code> method
	* of <code>ScriptContext</code>.  The identifier used in scripts may be a decorated form of the
	* specified one.
	*
	* @param m The name of the method to invoke.
	* @param args names of the arguments in the method call.
	*
	* @return The String used to invoke the method in the syntax of the scripting language.
	*/
	@:overload @:public @:public public function getMethodCallSyntax(obj : String, m : String, args : java.NativeArray<String>) : String;
	
	/**
	* Returns a String that can be used as a statement to display the specified String  using
	* the syntax of the supported scripting language.  For instance, the implementaton for a Perl
	* engine might be;
	* <p>
	* <pre><code>
	* public String getOutputStatement(String toDisplay) {
	*      return "print(" + toDisplay + ")";
	* }
	* </code></pre>
	*
	* @param toDisplay The String to be displayed by the returned statement.
	* @return The string used to display the String in the syntax of the scripting language.
	*
	*
	*/
	@:overload @:public @:public public function getOutputStatement(toDisplay : String) : String;
	
	/**
	* Returns A valid scripting language executable progam with given statements.
	* For instance an implementation for a PHP engine might be:
	* <p>
	* <pre><code>
	* public String getProgram(String... statements) {
	*      $retval = "&lt;?\n";
	*      int len = statements.length;
	*      for (int i = 0; i < len; i++) {
	*          $retval += statements[i] + ";\n";
	*      }
	*      $retval += "?&gt;";
	*
	* }
	* </code></pre>
	*
	*  @param statements The statements to be executed.  May be return values of
	*  calls to the <code>getMethodCallSyntax</code> and <code>getOutputStatement</code> methods.
	*  @return The Program
	*/
	@:overload @:public @:public public function getProgram(statements : java.NativeArray<String>) : String;
	
	/**
	* Returns an instance of the <code>ScriptEngine</code> associated with this
	* <code>ScriptEngineFactory</code>. A new ScriptEngine is generally
	* returned, but implementations may pool, share or reuse engines.
	*
	* @return A new <code>ScriptEngine</code> instance.
	*/
	@:overload @:public @:public public function getScriptEngine() : javax.script.ScriptEngine;
	
	
}
