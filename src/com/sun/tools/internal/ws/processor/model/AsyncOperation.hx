package com.sun.tools.internal.ws.processor.model;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AsyncOperation extends com.sun.tools.internal.ws.processor.model.Operation
{
	/**
	*
	*/
	@:overload public function new(entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	/**
	* @param operation
	*/
	@:overload public function new(operation : com.sun.tools.internal.ws.processor.model.Operation, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	/**
	* @param name
	*/
	@:overload public function new(name : javax.xml.namespace.QName, entity : com.sun.tools.internal.ws.wsdl.framework.Entity) : Void;
	
	/**
	* @return Returns the async.
	*/
	@:overload public function isAsync() : Bool;
	
	@:overload public function setAsyncType(type : com.sun.tools.internal.ws.processor.model.AsyncOperationType) : Void;
	
	@:overload public function getAsyncType() : com.sun.tools.internal.ws.processor.model.AsyncOperationType;
	
	@:overload public function setResponseBean(type : com.sun.tools.internal.ws.processor.model.AbstractType) : Void;
	
	@:overload public function getResponseBeanType() : com.sun.tools.internal.ws.processor.model.AbstractType;
	
	@:overload public function getResponseBeanJavaType() : com.sun.tools.internal.ws.processor.model.java.JavaType;
	
	@:overload public function getCallBackType() : com.sun.tools.internal.ws.processor.model.java.JavaType;
	
	@:overload public function getNormalOperation() : com.sun.tools.internal.ws.processor.model.Operation;
	
	@:overload public function setNormalOperation(operation : com.sun.tools.internal.ws.processor.model.Operation) : Void;
	
	@:overload override public function getJavaMethodName() : String;
	
	
}
