package com.sun.corba.se.impl.monitoring;
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
extern class MonitoredObjectImpl implements com.sun.corba.se.spi.monitoring.MonitoredObject
{
	@:overload public function getChild(name : String) : com.sun.corba.se.spi.monitoring.MonitoredObject;
	
	@:overload public function getChildren() : java.util.Collection<Dynamic>;
	
	@:overload public function addChild(m : com.sun.corba.se.spi.monitoring.MonitoredObject) : Void;
	
	@:overload public function removeChild(name : String) : Void;
	
	@:overload @:synchronized public function getParent() : com.sun.corba.se.spi.monitoring.MonitoredObject;
	
	@:overload @:synchronized public function setParent(p : com.sun.corba.se.spi.monitoring.MonitoredObject) : Void;
	
	@:overload public function getAttribute(name : String) : com.sun.corba.se.spi.monitoring.MonitoredAttribute;
	
	@:overload public function getAttributes() : java.util.Collection<Dynamic>;
	
	@:overload public function addAttribute(value : com.sun.corba.se.spi.monitoring.MonitoredAttribute) : Void;
	
	@:overload public function removeAttribute(name : String) : Void;
	
	/**
	* calls clearState() on all the registered children MonitoredObjects and
	* MonitoredAttributes.
	*/
	@:overload public function clearState() : Void;
	
	@:overload public function getName() : String;
	
	@:overload public function getDescription() : String;
	
	
}