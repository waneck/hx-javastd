package com.sun.org.glassfish.external.amx;
/*
* Copyright (c) 2009, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AMXUtil
{
	/**
	Make a new ObjectName (unchecked exception).
	*/
	@:overload @:public @:static public static function newObjectName(s : String) : javax.management.ObjectName;
	
	/**
	Make a new ObjectName (unchecked exception).
	@param domain
	@param props
	*/
	@:overload @:public @:static public static function newObjectName(domain : String, props : String) : javax.management.ObjectName;
	
	/**
	Get the ObjectName of the MBeanServerDelegateObjectName.
	*/
	@:overload @:public @:static public static function getMBeanServerDelegateObjectName() : javax.management.ObjectName;
	
	@:overload @:public @:static public static function prop(key : String, value : String) : String;
	
	
}
