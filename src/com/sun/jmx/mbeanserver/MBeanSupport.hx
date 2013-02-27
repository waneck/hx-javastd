package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class MBeanSupport<M> implements com.sun.jmx.mbeanserver.DynamicMBean2 implements javax.management.MBeanRegistration
{
	@:overload @:final public function isMXBean() : Bool;
	
	@:overload @:abstract public function register(mbs : javax.management.MBeanServer, name : javax.management.ObjectName) : Void;
	
	@:overload @:abstract public function unregister() : Void;
	
	@:overload @:final public function preRegister(server : javax.management.MBeanServer, name : javax.management.ObjectName) : javax.management.ObjectName;
	
	@:overload @:final public function preRegister2(server : javax.management.MBeanServer, name : javax.management.ObjectName) : Void;
	
	@:overload @:final public function registerFailed() : Void;
	
	@:overload @:final public function postRegister(registrationDone : Null<Bool>) : Void;
	
	@:overload @:final public function preDeregister() : Void;
	
	@:overload @:final public function postDeregister() : Void;
	
	@:overload @:final public function getAttribute(attribute : String) : Dynamic;
	
	@:overload @:final public function getAttributes(attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload @:final public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	@:overload @:final public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload @:final public function invoke(operation : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload public function getMBeanInfo() : javax.management.MBeanInfo;
	
	@:overload @:final public function getClassName() : String;
	
	@:overload @:final public function getResource() : Dynamic;
	
	@:overload @:final public function getMBeanInterface() : Class<Dynamic>;
	
	
}
