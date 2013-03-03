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
extern class ScriptEngineManager
{
	/**
	* If the thread context ClassLoader can be accessed by the caller,
	* then the effect of calling this constructor is the same as calling
	* <code>ScriptEngineManager(Thread.currentThread().getContextClassLoader())</code>.
	* Otherwise, the effect is the same as calling <code>ScriptEngineManager(null)</code>.
	*
	* @see java.lang.Thread#getContextClassLoader
	*/
	@:overload @:public public function new() : Void;
	
	/**
	* This constructor loads the implementations of
	* <code>ScriptEngineFactory</code> visible to the given
	* <code>ClassLoader</code> using the <a href="../../../technotes/guides/jar/jar.html#Service%20Provider">service provider</a> mechanism.<br><br>
	* If loader is <code>null</code>, the script engine factories that are
	* bundled with the platform and that are in the usual extension
	* directories (installed extensions) are loaded. <br><br>
	*
	* @param loader ClassLoader used to discover script engine factories.
	*/
	@:overload @:public public function new(loader : java.lang.ClassLoader) : Void;
	
	/**
	* <code>setBindings</code> stores the specified <code>Bindings</code>
	* in the <code>globalScope</code> field. ScriptEngineManager sets this
	* <code>Bindings</code> as global bindings for <code>ScriptEngine</code>
	* objects created by it.
	*
	* @param bindings The specified <code>Bindings</code>
	* @throws IllegalArgumentException if bindings is null.
	*/
	@:overload @:public public function setBindings(bindings : javax.script.Bindings) : Void;
	
	/**
	* <code>getBindings</code> returns the value of the <code>globalScope</code> field.
	* ScriptEngineManager sets this <code>Bindings</code> as global bindings for
	* <code>ScriptEngine</code> objects created by it.
	*
	* @return The globalScope field.
	*/
	@:overload @:public public function getBindings() : javax.script.Bindings;
	
	/**
	* Sets the specified key/value pair in the Global Scope.
	* @param key Key to set
	* @param value Value to set.
	* @throws NullPointerException if key is null.
	* @throws IllegalArgumentException if key is empty string.
	*/
	@:overload @:public public function put(key : String, value : Dynamic) : Void;
	
	/**
	* Gets the value for the specified key in the Global Scope
	* @param key The key whose value is to be returned.
	* @return The value for the specified key.
	*/
	@:overload @:public public function get(key : String) : Dynamic;
	
	/**
	* Looks up and creates a <code>ScriptEngine</code> for a given  name.
	* The algorithm first searches for a <code>ScriptEngineFactory</code> that has been
	* registered as a handler for the specified name using the <code>registerEngineName</code>
	* method.
	* <br><br> If one is not found, it searches the set of <code>ScriptEngineFactory</code> instances
	* stored by the constructor for one with the specified name.  If a <code>ScriptEngineFactory</code>
	* is found by either method, it is used to create instance of <code>ScriptEngine</code>.
	* @param shortName The short name of the <code>ScriptEngine</code> implementation.
	* returned by the <code>getNames</code> method of its <code>ScriptEngineFactory</code>.
	* @return A <code>ScriptEngine</code> created by the factory located in the search.  Returns null
	* if no such factory was found.  The <code>ScriptEngineManager</code> sets its own <code>globalScope</code>
	* <code>Bindings</code> as the <code>GLOBAL_SCOPE</code> <code>Bindings</code> of the newly
	* created <code>ScriptEngine</code>.
	* @throws NullPointerException if shortName is null.
	*/
	@:overload @:public public function getEngineByName(shortName : String) : javax.script.ScriptEngine;
	
	/**
	* Look up and create a <code>ScriptEngine</code> for a given extension.  The algorithm
	* used by <code>getEngineByName</code> is used except that the search starts
	* by looking for a <code>ScriptEngineFactory</code> registered to handle the
	* given extension using <code>registerEngineExtension</code>.
	* @param extension The given extension
	* @return The engine to handle scripts with this extension.  Returns <code>null</code>
	* if not found.
	* @throws NullPointerException if extension is null.
	*/
	@:overload @:public public function getEngineByExtension(extension : String) : javax.script.ScriptEngine;
	
	/**
	* Look up and create a <code>ScriptEngine</code> for a given mime type.  The algorithm
	* used by <code>getEngineByName</code> is used except that the search starts
	* by looking for a <code>ScriptEngineFactory</code> registered to handle the
	* given mime type using <code>registerEngineMimeType</code>.
	* @param mimeType The given mime type
	* @return The engine to handle scripts with this mime type.  Returns <code>null</code>
	* if not found.
	* @throws NullPointerException if mimeType is null.
	*/
	@:overload @:public public function getEngineByMimeType(mimeType : String) : javax.script.ScriptEngine;
	
	/**
	* Returns a list whose elements are instances of all the <code>ScriptEngineFactory</code> classes
	* found by the discovery mechanism.
	* @return List of all discovered <code>ScriptEngineFactory</code>s.
	*/
	@:overload @:public public function getEngineFactories() : java.util.List<javax.script.ScriptEngineFactory>;
	
	/**
	* Registers a <code>ScriptEngineFactory</code> to handle a language
	* name.  Overrides any such association found using the Discovery mechanism.
	* @param name The name to be associated with the <code>ScriptEngineFactory</code>.
	* @param factory The class to associate with the given name.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function registerEngineName(name : String, factory : javax.script.ScriptEngineFactory) : Void;
	
	/**
	* Registers a <code>ScriptEngineFactory</code> to handle a mime type.
	* Overrides any such association found using the Discovery mechanism.
	*
	* @param type The mime type  to be associated with the
	* <code>ScriptEngineFactory</code>.
	*
	* @param factory The class to associate with the given mime type.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function registerEngineMimeType(type : String, factory : javax.script.ScriptEngineFactory) : Void;
	
	/**
	* Registers a <code>ScriptEngineFactory</code> to handle an extension.
	* Overrides any such association found using the Discovery mechanism.
	*
	* @param extension The extension type  to be associated with the
	* <code>ScriptEngineFactory</code>.
	* @param factory The class to associate with the given extension.
	* @throws NullPointerException if any of the parameters is null.
	*/
	@:overload @:public public function registerEngineExtension(extension : String, factory : javax.script.ScriptEngineFactory) : Void;
	
	
}
