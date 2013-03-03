package com.sun.org.glassfish.gmbal;
/*
* Copyright (c) 2007, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AMXClient implements com.sun.org.glassfish.gmbal.AMXMBeanInterface
{
	/** Special object name used to represent a NULL objectName result.
	*/
	@:public @:static @:final public static var NULL_OBJECTNAME(default, null) : javax.management.ObjectName;
	
	@:overload @:public public function equals(obj : Dynamic) : Bool;
	
	@:overload @:public public function hashCode() : Int;
	
	@:overload @:public public function toString() : String;
	
	@:overload @:public public function new(server : javax.management.MBeanServerConnection, oname : javax.management.ObjectName) : Void;
	
	@:overload @:public public function getName() : String;
	
	@:overload @:public public function getMeta() : java.util.Map<String, Dynamic>;
	
	@:overload @:public public function getParent() : com.sun.org.glassfish.gmbal.AMXClient;
	
	@:overload @:public public function getChildren() : java.NativeArray<com.sun.org.glassfish.gmbal.AMXClient>;
	
	@:overload @:public public function getAttribute(attribute : String) : Dynamic;
	
	@:overload @:public public function setAttribute(name : String, value : Dynamic) : Void;
	
	@:overload @:public public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	@:overload @:public public function getAttributes(attributes : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload @:public public function setAttributes(attributes : javax.management.AttributeList) : javax.management.AttributeList;
	
	@:overload @:public public function invoke(actionName : String, params : java.NativeArray<Dynamic>, signature : java.NativeArray<String>) : Dynamic;
	
	@:overload @:public public function getMBeanInfo() : javax.management.MBeanInfo;
	
	@:overload @:public public function objectName() : javax.management.ObjectName;
	
	
}
