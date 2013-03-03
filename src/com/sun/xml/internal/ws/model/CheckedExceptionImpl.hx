package com.sun.xml.internal.ws.model;
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
extern class CheckedExceptionImpl implements com.sun.xml.internal.ws.api.model.CheckedException
{
	/**
	* @param jm {@link JavaMethodImpl} that throws this exception
	* @param exceptionClass
	*            Userdefined or WSDL exception class that extends
	*            java.lang.Exception.
	* @param detail
	*            detail or exception bean's TypeReference
	* @param exceptionType
	*            either ExceptionType.UserDefined or
	*/
	@:overload @:public public function new(jm : com.sun.xml.internal.ws.model.JavaMethodImpl, exceptionClass : Class<Dynamic>, detail : com.sun.xml.internal.bind.api.TypeReference, exceptionType : com.sun.xml.internal.ws.api.model.ExceptionType) : Void;
	
	@:overload @:public public function getOwner() : com.sun.xml.internal.ws.model.AbstractSEIModelImpl;
	
	@:overload @:public public function getParent() : com.sun.xml.internal.ws.api.model.JavaMethod;
	
	/**
	* @return the <code>Class</clode> for this object
	*
	*/
	@:overload @:public public function getExceptionClass() : Class<Dynamic>;
	
	@:overload @:public public function getDetailBean() : Class<Dynamic>;
	
	@:overload @:public public function getBridge() : com.sun.xml.internal.bind.api.Bridge<Dynamic>;
	
	@:overload @:public public function getDetailType() : com.sun.xml.internal.bind.api.TypeReference;
	
	@:overload @:public public function getExceptionType() : com.sun.xml.internal.ws.api.model.ExceptionType;
	
	@:overload @:public public function getMessageName() : String;
	
	@:overload @:public public function setMessageName(messageName : String) : Void;
	
	@:overload @:public public function getFaultAction() : String;
	
	@:overload @:public public function setFaultAction(faultAction : String) : Void;
	
	@:overload @:public public function getDefaultFaultAction() : String;
	
	
}
