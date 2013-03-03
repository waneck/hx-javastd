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
/**
* Simple implementation of ScriptContext.
*
* @author Mike Grogan
* @since 1.6
*/
@:require(java6) extern class SimpleScriptContext implements javax.script.ScriptContext
{
	/**
	* This is the writer to be used to output from scripts.
	* By default, a <code>PrintWriter</code> based on <code>System.out</code>
	* is used. Accessor methods getWriter, setWriter are used to manage
	* this field.
	* @see java.lang.System#out
	* @see java.io.PrintWriter
	*/
	@:protected private var writer : java.io.Writer;
	
	/**
	* This is the writer to be used to output errors from scripts.
	* By default, a <code>PrintWriter</code> based on <code>System.err</code> is
	* used. Accessor methods getErrorWriter, setErrorWriter are used to manage
	* this field.
	* @see java.lang.System#err
	* @see java.io.PrintWriter
	*/
	@:protected private var errorWriter : java.io.Writer;
	
	/**
	* This is the reader to be used for input from scripts.
	* By default, a <code>InputStreamReader</code> based on <code>System.in</code>
	* is used and default charset is used by this reader. Accessor methods
	* getReader, setReader are used to manage this field.
	* @see java.lang.System#in
	* @see java.io.InputStreamReader
	*/
	@:protected private var reader : java.io.Reader;
	
	/**
	* This is the engine scope bindings.
	* By default, a <code>SimpleBindings</code> is used. Accessor
	* methods setBindings, getBindings are used to manage this field.
	* @see SimpleBindings
	*/
	@:protected private var engineScope : javax.script.Bindings;
	
	/**
	* This is the global scope bindings.
	* By default, a null value (which means no global scope) is used. Accessor
	* methods setBindings, getBindings are used to manage this field.
	*/
	@:protected private var globalScope : javax.script.Bindings;
	
	@:overload @:public public function new() : Void;
	
	/**
	* Sets a <code>Bindings</code> of attributes for the given scope.  If the value
	* of scope is <code>ENGINE_SCOPE</code> the given <code>Bindings</code> replaces the
	* <code>engineScope</code> field.  If the value
	* of scope is <code>GLOBAL_SCOPE</code> the given <code>Bindings</code> replaces the
	* <code>globalScope</code> field.
	*
	* @param bindings The <code>Bindings</code> of attributes to set.
	* @param scope The value of the scope in which the attributes are set.
	*
	* @throws IllegalArgumentException if scope is invalid.
	* @throws NullPointerException if the value of scope is <code>ENGINE_SCOPE</code> and
	* the specified <code>Bindings</code> is null.
	*/
	@:overload @:public public function setBindings(bindings : javax.script.Bindings, scope : Int) : Void;
	
	/**
	* Retrieves the value of the attribute with the given name in
	* the scope occurring earliest in the search order.  The order
	* is determined by the numeric value of the scope parameter (lowest
	* scope values first.)
	*
	* @param name The name of the the attribute to retrieve.
	* @return The value of the attribute in the lowest scope for
	* which an attribute with the given name is defined.  Returns
	* null if no attribute with the name exists in any scope.
	* @throws NullPointerException if the name is null.
	* @throws IllegalArgumentException if the name is empty.
	*/
	@:overload @:public public function getAttribute(name : String) : Dynamic;
	
	/**
	* Gets the value of an attribute in a given scope.
	*
	* @param name The name of the attribute to retrieve.
	* @param scope The scope in which to retrieve the attribute.
	* @return The value of the attribute. Returns <code>null</code> is the name
	* does not exist in the given scope.
	*
	* @throws IllegalArgumentException
	*         if the name is empty or if the value of scope is invalid.
	* @throws NullPointerException if the name is null.
	*/
	@:overload @:public public function getAttribute(name : String, scope : Int) : Dynamic;
	
	/**
	* Remove an attribute in a given scope.
	*
	* @param name The name of the attribute to remove
	* @param scope The scope in which to remove the attribute
	*
	* @return The removed value.
	* @throws IllegalArgumentException
	*         if the name is empty or if the scope is invalid.
	* @throws NullPointerException if the name is null.
	*/
	@:overload @:public public function removeAttribute(name : String, scope : Int) : Dynamic;
	
	/**
	* Sets the value of an attribute in a given scope.
	*
	* @param name The name of the attribute to set
	* @param value The value of the attribute
	* @param scope The scope in which to set the attribute
	*
	* @throws IllegalArgumentException
	*         if the name is empty or if the scope is invalid.
	* @throws NullPointerException if the name is null.
	*/
	@:overload @:public public function setAttribute(name : String, value : Dynamic, scope : Int) : Void;
	
	/** {@inheritDoc} */
	@:overload @:public public function getWriter() : java.io.Writer;
	
	/** {@inheritDoc} */
	@:overload @:public public function getReader() : java.io.Reader;
	
	/** {@inheritDoc} */
	@:overload @:public public function setReader(reader : java.io.Reader) : Void;
	
	/** {@inheritDoc} */
	@:overload @:public public function setWriter(writer : java.io.Writer) : Void;
	
	/** {@inheritDoc} */
	@:overload @:public public function getErrorWriter() : java.io.Writer;
	
	/** {@inheritDoc} */
	@:overload @:public public function setErrorWriter(writer : java.io.Writer) : Void;
	
	/**
	* Get the lowest scope in which an attribute is defined.
	* @param name Name of the attribute
	* .
	* @return The lowest scope.  Returns -1 if no attribute with the given
	* name is defined in any scope.
	* @throws NullPointerException if name is null.
	* @throws IllegalArgumentException if name is empty.
	*/
	@:overload @:public public function getAttributesScope(name : String) : Int;
	
	/**
	* Returns the value of the <code>engineScope</code> field if specified scope is
	* <code>ENGINE_SCOPE</code>.  Returns the value of the <code>globalScope</code> field if the specified scope is
	* <code>GLOBAL_SCOPE</code>.
	*
	* @param scope The specified scope
	* @return The value of either the  <code>engineScope</code> or <code>globalScope</code> field.
	* @throws IllegalArgumentException if the value of scope is invalid.
	*/
	@:overload @:public public function getBindings(scope : Int) : javax.script.Bindings;
	
	/** {@inheritDoc} */
	@:overload @:public public function getScopes() : java.util.List<Null<Int>>;
	
	
}
