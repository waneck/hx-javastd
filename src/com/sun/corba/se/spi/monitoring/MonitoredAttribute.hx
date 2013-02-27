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
* Monitored Attribute is the interface to represent a Monitorable
* Attribute. Using this interface, one can get the value of the attribute
* and set the value if it is a writeable attribute.
* </p>
*/
extern interface MonitoredAttribute
{
	/**
	* <p>
	* Gets the Monitored Attribute Info for the attribute.
	* </p>
	* <p>
	*
	* @param monitoredAttributeInfo for this Monitored Attribute.
	* </p>
	*/
	@:overload public function getAttributeInfo() : com.sun.corba.se.spi.monitoring.MonitoredAttributeInfo;
	
	/**
	* <p>
	* Sets the value for the Monitored Attribute if isWritable() is false, the
	* method will throw ILLEGAL Operation exception.
	*
	* Also, the type of 'value' should be same as specified in the
	* MonitoredAttributeInfo for a particular instance.
	* </p>
	* <p>
	*
	* @param value should be any one of the Basic Java Type Objects which are
	* Long, Double, Float, String, Integer, Short, Character, Byte.
	* </p>
	*/
	@:overload public function setValue(value : Dynamic) : Void;
	
	/**
	* <p>
	* Gets the value of the Monitored Attribute. The value can be obtained
	* from different parts of the module. User may choose to delegate the call
	* to getValue() to other variables.
	*
	* NOTE: It is important to make sure that the type of Object returned in
	* getvalue is same as the one specified in MonitoredAttributeInfo for this
	* attribute.
	* </p>
	* <p>
	*
	* </p>
	* <p>
	*
	* @param value is the current value for this MonitoredAttribute
	* </p>
	*/
	@:overload public function getValue() : Dynamic;
	
	/**
	* <p>
	* Gets the name of the Monitored Attribute.
	* </p>
	* <p>
	*
	* @param name of this Attribute
	* </p>
	*/
	@:overload public function getName() : String;
	
	/**
	* <p>
	* If this attribute needs to be cleared, the user needs to implement this
	* method to reset the state to initial state. If the Monitored Attribute
	* doesn't change like for example (ConnectionManager High Water Mark),
	* then clearState() is a No Op.
	* </p>
	*
	*/
	@:overload public function clearState() : Void;
	
	
}