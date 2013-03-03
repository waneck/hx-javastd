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
extern interface AMXMBeanInterface
{
	/** Get all metadata about this MBean.
	* @return The descriptor, which will be a ModelMBeanInfoSupport instance.
	*/
	@:overload @:public public function getMeta() : java.util.Map<String, Dynamic>;
	
	/** Usually the same as the ObjectName 'name' property, but can differ
	if the actual name contains characters that must be escaped for an ObjectName and/or
	if the MBean has a mutable name attribute.
	The type property can be obtained from the ObjectName */
	@:overload @:public public function getName() : String;
	
	/** "go up one level": the MBean containing this one, can be null for root
	* @return The container of this MBean (null if already at root).
	*/
	@:overload @:public public function getParent() : com.sun.org.glassfish.gmbal.AMXMBeanInterface;
	
	/** Containment hierarchy:
	Get all AMXMBeanInterface contained by this one, in no particular order.
	Valid only if isContainer().
	* Note that using an array sidesteps Map/Set/OpenType issues
	* @return All children of this AMXMBeanInterface MBean.
	*/
	@:overload @:public public function getChildren() : java.NativeArray<com.sun.org.glassfish.gmbal.AMXMBeanInterface>;
	
	
}
