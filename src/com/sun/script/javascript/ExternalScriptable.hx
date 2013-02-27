package com.sun.script.javascript;
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
* ExternalScriptable is an implementation of Scriptable
* backed by a JSR 223 ScriptContext instance.
*
* @author Mike Grogan
* @author A. Sundararajan
* @since 1.6
*/
@:require(java6) @:internal extern class ExternalScriptable implements Scriptable
{
	/**
	* Return the name of the class.
	*/
	@:overload public function getClassName() : String;
	
	/**
	* Returns the value of the named property or NOT_FOUND.
	*
	* If the property was created using defineProperty, the
	* appropriate getter method is called.
	*
	* @param name the name of the property
	* @param start the object in which the lookup began
	* @return the value of the property (may be null), or NOT_FOUND
	*/
	@:overload @:synchronized public function get(name : String, start : Scriptable) : Dynamic;
	
	/**
	* Returns the value of the indexed property or NOT_FOUND.
	*
	* @param index the numeric index for the property
	* @param start the object in which the lookup began
	* @return the value of the property (may be null), or NOT_FOUND
	*/
	@:overload @:synchronized public function get(index : Int, start : Scriptable) : Dynamic;
	
	/**
	* Returns true if the named property is defined.
	*
	* @param name the name of the property
	* @param start the object in which the lookup began
	* @return true if and only if the property was found in the object
	*/
	@:overload @:synchronized public function has(name : String, start : Scriptable) : Bool;
	
	/**
	* Returns true if the property index is defined.
	*
	* @param index the numeric index for the property
	* @param start the object in which the lookup began
	* @return true if and only if the property was found in the object
	*/
	@:overload @:synchronized public function has(index : Int, start : Scriptable) : Bool;
	
	/**
	* Sets the value of the named property, creating it if need be.
	*
	* @param name the name of the property
	* @param start the object whose property is being set
	* @param value value to set the property to
	*/
	@:overload public function put(name : String, start : Scriptable, value : Dynamic) : Void;
	
	/**
	* Sets the value of the indexed property, creating it if need be.
	*
	* @param index the numeric index for the property
	* @param start the object whose property is being set
	* @param value value to set the property to
	*/
	@:overload public function put(index : Int, start : Scriptable, value : Dynamic) : Void;
	
	/**
	* Removes a named property from the object.
	*
	* If the property is not found, no action is taken.
	*
	* @param name the name of the property
	*/
	@:overload @:synchronized public function delete(name : String) : Void;
	
	/**
	* Removes the indexed property from the object.
	*
	* If the property is not found, no action is taken.
	*
	* @param index the numeric index for the property
	*/
	@:overload public function delete(index : Int) : Void;
	
	/**
	* Get the prototype of the object.
	* @return the prototype
	*/
	@:overload public function getPrototype() : Scriptable;
	
	/**
	* Set the prototype of the object.
	* @param prototype the prototype to set
	*/
	@:overload public function setPrototype(prototype : Scriptable) : Void;
	
	/**
	* Get the parent scope of the object.
	* @return the parent scope
	*/
	@:overload public function getParentScope() : Scriptable;
	
	/**
	* Set the parent scope of the object.
	* @param parent the parent scope to set
	*/
	@:overload public function setParentScope(parent : Scriptable) : Void;
	
	/**
	* Get an array of property ids.
	*
	* Not all property ids need be returned. Those properties
	* whose ids are not returned are considered non-enumerable.
	*
	* @return an array of Objects. Each entry in the array is either
	*         a java.lang.String or a java.lang.Number
	*/
	@:overload @:synchronized public function getIds() : java.NativeArray<Dynamic>;
	
	/**
	* Get the default value of the object with a given hint.
	* The hints are String.class for type String, Number.class for type
	* Number, Scriptable.class for type Object, and Boolean.class for
	* type Boolean. <p>
	*
	* A <code>hint</code> of null means "no hint".
	*
	* See ECMA 8.6.2.6.
	*
	* @param hint the type hint
	* @return the default value
	*/
	@:overload public function getDefaultValue(typeHint : Class<Dynamic>) : Dynamic;
	
	/**
	* Implements the instanceof operator.
	*
	* @param instance The value that appeared on the LHS of the instanceof
	*              operator
	* @return true if "this" appears in value's prototype chain
	*
	*/
	@:overload public function hasInstance(instance : Scriptable) : Bool;
	
	
}
