package com.sun.xml.internal.ws.api.config.management;
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
extern class EndpointCreationAttributes
{
	/**
	* Instantiate this data access object.
	*
	* @param processHandlerAnnotation The original processHandlerAnnotation setting.
	* @param invoker The original Invoker instance.
	* @param resolver The original EntityResolver instance.
	* @param isTransportSynchronous The original isTransportSynchronous setting.
	*/
	@:overload @:public public function new(processHandlerAnnotation : Bool, invoker : com.sun.xml.internal.ws.api.server.Invoker, resolver : org.xml.sax.EntityResolver, isTransportSynchronous : Bool) : Void;
	
	/**
	* Return the original processHandlerAnnotation setting.
	*
	* @return The original processHandlerAnnotation setting.
	*/
	@:overload @:public public function isProcessHandlerAnnotation() : Bool;
	
	/**
	* Return the original Invoker instance.
	*
	* @return The original Invoker instance.
	*/
	@:overload @:public public function getInvoker() : com.sun.xml.internal.ws.api.server.Invoker;
	
	/**
	* Return the original EntityResolver instance.
	*
	* @return The original EntityResolver instance.
	*/
	@:overload @:public public function getEntityResolver() : org.xml.sax.EntityResolver;
	
	/**
	* Return the original isTransportSynchronous setting.
	*
	* @return The original isTransportSynchronous setting.
	*/
	@:overload @:public public function isTransportSynchronous() : Bool;
	
	
}
