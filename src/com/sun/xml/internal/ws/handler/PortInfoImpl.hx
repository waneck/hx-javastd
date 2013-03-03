package com.sun.xml.internal.ws.handler;
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
extern class PortInfoImpl implements javax.xml.ws.handler.PortInfo
{
	/**
	* The class is constructed with the information needed to identify
	* a port. This information cannot be changed later.
	*
	* @param bindingId The binding ID string.
	* @param portName The QName of the port.
	* @param serviceName The QName of the service.
	*/
	@:overload @:public public function new(bindingId : com.sun.xml.internal.ws.api.BindingID, portName : javax.xml.namespace.QName, serviceName : javax.xml.namespace.QName) : Void;
	
	@:overload @:public public function getBindingID() : String;
	
	@:overload @:public public function getPortName() : javax.xml.namespace.QName;
	
	@:overload @:public public function getServiceName() : javax.xml.namespace.QName;
	
	/**
	* Object.equals is overridden here so that PortInfo objects
	* can be compared when using them as keys in the map in
	* HandlerResolverImpl. This method relies on the equals()
	* methods of java.lang.String and javax.xml.namespace.QName.
	*
	* @param obj The PortInfo object to test for equality.
	* @return True if they match, and false if they do not or
	* if the object passed in is not a PortInfo.
	*/
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	/**
	* Needed so PortInfoImpl can be used as a key in a map. This
	* method just delegates to the hashCode method of java.lang.String.
	*/
	@:overload @:public public function hashCode() : Int;
	
	
}
