package com.sun.corba.se.spi.monitoring;
/*
* Copyright (c) 2003, Oracle and/or its affiliates. All rights reserved.
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
* <p>
*
* @author Hemanth Puttaswamy
* </p>
* <p>
*  A Convenient class provided to help users extend and implement only
*  getValue(), if there is no need to clear the state and the attribute is not
*  writable.
*
* </p>
*/
extern class MonitoredAttributeBase implements com.sun.corba.se.spi.monitoring.MonitoredAttribute
{
	/**
	* Constructor.
	*/
	@:overload @:public public function new(name : String, info : com.sun.corba.se.spi.monitoring.MonitoredAttributeInfo) : Void;
	
	/**
	*  If the concrete class decides not to provide the implementation of this
	*  method, then it's OK. Some of the  examples where we may decide to not
	*  provide the implementation is the connection state. Irrespective of
	*  the call to clearState, the connection state will be showing the
	*  currect state of the connection.
	*  NOTE: This method is only used to clear the Monitored Attribute state,
	*  not the real state of the system itself.
	*/
	@:overload @:public public function clearState() : Void;
	
	/**
	*  This method should be implemented by the concrete class.
	*/
	@:overload @:public @:abstract public function getValue() : Dynamic;
	
	/**
	*  This method should be implemented by the concrete class only if the
	*  attribute is writable. If the attribute is not writable and if this
	*  method called, it will result in an IllegalStateException.
	*/
	@:overload @:public public function setValue(value : Dynamic) : Void;
	
	/**
	*  Gets the MonitoredAttributeInfo for the attribute.
	*/
	@:overload @:public public function getAttributeInfo() : com.sun.corba.se.spi.monitoring.MonitoredAttributeInfo;
	
	/**
	* Gets the name of the attribute.
	*/
	@:overload @:public public function getName() : String;
	
	
}
