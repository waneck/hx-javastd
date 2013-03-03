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
extern class XMLAttributeDecl
{
	/** name */
	@:public @:final public var name(default, null) : com.sun.org.apache.xerces.internal.xni.QName;
	
	/** simpleType */
	@:public @:final public var simpleType(default, null) : com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType;
	
	/** optional */
	@:public public var optional : Bool;
	
	/**
	* setValues
	*
	* @param name
	* @param simpleType
	* @param optional
	*/
	@:overload @:public public function setValues(name : com.sun.org.apache.xerces.internal.xni.QName, simpleType : com.sun.xml.internal.stream.dtd.nonvalidating.XMLSimpleType, optional : Bool) : Void;
	
	/**
	* clear
	*/
	@:overload @:public public function clear() : Void;
	
	
}
