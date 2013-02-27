package com.sun.pept.presentation;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
/** Java interface "MessageStruct.java" generated from Poseidon for UML.
*  Poseidon for UML is developed by <A HREF="http://www.gentleware.com">Gentleware</A>.
*  Generated with <A HREF="http://jakarta.apache.org/velocity/">velocity</A> template engine.
*/
extern interface MessageStruct
{
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @param data ...
	* </p><p>
	*
	* </p>
	*/
	@:overload public function setData(data : java.NativeArray<Dynamic>) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Object[] with ...
	* </p>
	*/
	@:overload public function getData() : java.NativeArray<Dynamic>;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param name ...
	* </p><p>
	* @param value ...
	* </p>
	*/
	@:overload public function setMetaData(name : Dynamic, value : Dynamic) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Object with ...
	* </p><p>
	* @param name ...
	* </p>
	*/
	@:overload public function getMetaData(name : Dynamic) : Dynamic;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param messageExchangePattern ...
	* </p>
	*/
	@:overload public function setMEP(messageExchangePattern : Int) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a int with ...
	* </p>
	*/
	@:overload public function getMEP() : Int;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a int with ...
	* </p>
	*/
	@:overload public function getResponseType() : Int;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param responseType ...
	* </p>
	*/
	@:overload public function setResponseType(responseType : Int) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Object with ...
	* </p>
	*/
	@:overload public function getResponse() : Dynamic;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param response ...
	* </p>
	*/
	@:overload public function setResponse(response : Dynamic) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* </p><p>
	*
	* @param method ...
	* </p>
	*/
	@:overload public function setMethod(method : java.lang.reflect.Method) : Void;
	
	/**
	* <p>
	* Does ...
	* </p><p>
	*
	* @return a Method with ...
	* </p>
	*/
	@:overload public function getMethod() : java.lang.reflect.Method;
	
	
}
