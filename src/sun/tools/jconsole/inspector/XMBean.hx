package sun.tools.jconsole.inspector;
/*
* Copyright (c) 2004, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class XMBean
{
	@:overload public function new(objectName : javax.management.ObjectName, mbeansTab : sun.tools.jconsole.MBeansTab) : Void;
	
	@:overload public function isBroadcaster() : Null<Bool>;
	
	@:overload public function invoke(operationName : String) : Dynamic;
	
	@:overload public function invoke(operationName : String, params : java.NativeArray<Dynamic>, sig : java.NativeArray<String>) : Dynamic;
	
	@:overload public function setAttribute(attribute : javax.management.Attribute) : Void;
	
	@:overload public function getAttribute(attributeName : String) : Dynamic;
	
	@:overload public function getAttributes(attributeNames : java.NativeArray<String>) : javax.management.AttributeList;
	
	@:overload public function getAttributes(attributeNames : java.NativeArray<javax.management.MBeanAttributeInfo>) : javax.management.AttributeList;
	
	@:overload public function getObjectName() : javax.management.ObjectName;
	
	@:overload public function getMBeanInfo() : javax.management.MBeanInfo;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function getText() : String;
	
	@:overload public function setText(text : String) : Void;
	
	@:overload public function getIcon() : javax.swing.Icon;
	
	@:overload public function setIcon(icon : javax.swing.Icon) : Void;
	
	@:overload public function toString() : String;
	
	
}
