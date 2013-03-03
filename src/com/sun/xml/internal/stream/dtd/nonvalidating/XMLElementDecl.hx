package com.sun.xml.internal.stream.dtd.nonvalidating;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
*/
/*
* Copyright 2005 The Apache Software Foundation.
*
* Licensed under the Apache License, Version 2.0 (the "License");
* you may not use this file except in compliance with the License.
* You may obtain a copy of the License at
*
*      http://www.apache.org/licenses/LICENSE-2.0
*
* Unless required by applicable law or agreed to in writing, software
* distributed under the License is distributed on an "AS IS" BASIS,
* WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
* See the License for the specific language governing permissions and
* limitations under the License.
*/
extern class XMLElementDecl
{
	/** TYPE_ANY */
	@:public @:static @:final public static var TYPE_ANY(default, null) : java.StdTypes.Int16;
	
	/** TYPE_EMPTY */
	@:public @:static @:final public static var TYPE_EMPTY(default, null) : java.StdTypes.Int16;
	
	/** TYPE_MIXED */
	@:public @:static @:final public static var TYPE_MIXED(default, null) : java.StdTypes.Int16;
	
	/** TYPE_CHILDREN */
	@:public @:static @:final public static var TYPE_CHILDREN(default, null) : java.StdTypes.Int16;
	
	/** TYPE_SIMPLE */
	@:public @:static @:final public static var TYPE_SIMPLE(default, null) : java.StdTypes.Int16;
	
	/** name */
	@:public @:final public var name(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** scope */
	@:public public var scope : Int;
	
	/** type */
	@:public public var type : java.StdTypes.Int16;
	
	/** simpleType */
	@:public @:final public var simpleType(default, null) : com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType;
	
	/**
	* setValues
	*
	* @param name
	* @param scope
	* @param type
	* @param contentModelValidator
	* @param simpleType
	*/
	@:overload @:public public function setValues(name : com.sun.org.apache.xerces.internal.xni.QName, scope : Int, type : java.StdTypes.Int16, simpleType : com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType) : Void;
	
	/**
	* clear
	*/
	@:overload @:public public function clear() : Void;
	
	
}
