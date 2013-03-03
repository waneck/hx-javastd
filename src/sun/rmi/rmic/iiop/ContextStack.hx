package sun.rmi.rmic.iiop;
/*
* Copyright (c) 1998, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*
* Licensed Materials - Property of IBM
* RMI-IIOP v1.0
* Copyright IBM Corp. 1998 1999  All Rights Reserved
*
*/
extern class ContextStack
{
	/**
	* ContextStack provides a mechanism to record parsing state.
	*
	* @author      Bryan Atsatt
	*/
	@:public @:static @:final public static var TOP(default, null) : Int;
	
	@:public @:static @:final public static var METHOD(default, null) : Int;
	
	@:public @:static @:final public static var METHOD_RETURN(default, null) : Int;
	
	@:public @:static @:final public static var METHOD_ARGUMENT(default, null) : Int;
	
	@:public @:static @:final public static var METHOD_EXCEPTION(default, null) : Int;
	
	@:public @:static @:final public static var MEMBER(default, null) : Int;
	
	@:public @:static @:final public static var MEMBER_CONSTANT(default, null) : Int;
	
	@:public @:static @:final public static var MEMBER_STATIC(default, null) : Int;
	
	@:public @:static @:final public static var MEMBER_TRANSIENT(default, null) : Int;
	
	@:public @:static @:final public static var IMPLEMENTS(default, null) : Int;
	
	@:public @:static @:final public static var EXTENDS(default, null) : Int;
	
	/**
	* Constructor.
	*/
	@:overload @:public public function new(env : sun.rmi.rmic.iiop.BatchEnvironment) : Void;
	
	/**
	* Return true if env.nerrors > 0.
	*/
	@:overload @:public public function anyErrors() : Bool;
	
	/**
	* Enable/disable tracing.
	*/
	@:overload @:public public function setTrace(_trace : Bool) : Void;
	
	/**
	* Check trace flag.
	*/
	@:overload @:public public function isTraceOn() : Bool;
	
	/**
	* Get the environment.
	*/
	@:overload @:public public function getEnv() : sun.rmi.rmic.iiop.BatchEnvironment;
	
	/**
	* Set the new context.
	*/
	@:overload @:public public function setNewContextCode(code : Int) : Void;
	
	/**
	* Get the current context code.
	*/
	@:overload @:public public function getCurrentContextCode() : Int;
	
	@:overload @:public @:final @:static public static function dumpCallStack() : Void;
	
	/**
	* Push a new element on the stack.
	* @return the new element.
	*/
	@:overload @:public public function push(element : sun.rmi.rmic.iiop.ContextElement) : sun.rmi.rmic.iiop.ContextStack.TypeContext;
	
	/**
	* Pop an element from the stack.
	* @return the new current element or null if top.
	*/
	@:overload @:public public function pop(wasValid : Bool) : sun.rmi.rmic.iiop.ContextStack.TypeContext;
	
	/**
	* Get the current size.
	*/
	@:overload @:public public function size() : Int;
	
	/**
	* Get a specific context.
	*/
	@:overload @:public public function getContext(index : Int) : sun.rmi.rmic.iiop.ContextStack.TypeContext;
	
	/**
	* Get the current top context.
	*/
	@:overload @:public public function getContext() : sun.rmi.rmic.iiop.ContextStack.TypeContext;
	
	/**
	* Is parent context a value type?
	*/
	@:overload @:public public function isParentAValue() : Bool;
	
	/**
	* Get parent context. Null if none.
	*/
	@:overload @:public public function getParentContext() : sun.rmi.rmic.iiop.ContextStack.TypeContext;
	
	/**
	* Get a string for the context name...
	*/
	@:overload @:public public function getContextCodeString() : String;
	
	/**
	* Get a string for the given context code...
	*/
	@:native('getContextCodeString') @:overload @:public @:static public static function _getContextCodeString(contextCode : Int) : String;
	
	@:overload @:public public function clear() : Void;
	
	
}
@:internal extern class TypeContext
{
	@:overload @:public public function set(code : Int, element : sun.rmi.rmic.iiop.ContextElement) : Void;
	
	@:overload @:public public function getCode() : Int;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getCandidateType() : sun.rmi.rmic.iiop.Type;
	
	@:overload @:public public function getTypeDescription() : String;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function isValue() : Bool;
	
	@:overload @:public public function isConstant() : Bool;
	
	@:overload @:public public function destroy() : Void;
	
	
}
