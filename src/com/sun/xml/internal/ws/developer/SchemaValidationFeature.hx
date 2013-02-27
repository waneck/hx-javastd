package com.sun.xml.internal.ws.developer;
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
extern class SchemaValidationFeature extends javax.xml.ws.WebServiceFeature
{
	/**
	* Constant value identifying the SchemaValidationFeature
	*/
	public static var ID(default, null) : String;
	
	@:overload public function new() : Void;
	
	/**
	* Create an <code>SchemaValidationFeature</code>.
	* The instance created will be enabled.
	*/
	@:overload public function new(clazz : Class<com.sun.xml.internal.ws.developer.ValidationErrorHandler>) : Void;
	
	/**
	* @since JAX-WS RI 2.2.2
	*/
	@:require(java2) @:overload public function new(inbound : Bool, outbound : Bool) : Void;
	
	/**
	* @since JAX-WS RI 2.2.2
	*/
	@:require(java2) @:overload public function new(inbound : Bool, outbound : Bool, clazz : Class<com.sun.xml.internal.ws.developer.ValidationErrorHandler>) : Void;
	
	@:overload override public function getID() : String;
	
	/**
	* Invalid schema instances are rejected, a SOAP fault message is created
	* for any invalid request and response message. If it is set to false, schema
	* validation messages are just logged.
	*/
	@:overload public function getErrorHandler() : Class<com.sun.xml.internal.ws.developer.ValidationErrorHandler>;
	
	/**
	* Turns validation on/off for inbound messages
	*
	* @since JAX-WS RI 2.2.2
	*/
	@:require(java2) @:overload public function isInbound() : Bool;
	
	/**
	* Turns validation on/off for outbound messages
	*
	* @since JAX-WS RI 2.2.2
	*/
	@:require(java2) @:overload public function isOutbound() : Bool;
	
	
}
