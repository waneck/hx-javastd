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
extern class StandardMBeanSupport extends com.sun.jmx.mbeanserver.MBeanSupport<java.lang.reflect.Method>
{
	/**
	* <p>Construct a Standard MBean that wraps the given resource using the
	* given Standard MBean interface.</p>
	*
	* @param resource the underlying resource for the new MBean.
	* @param mbeanInterfaceType the class or interface to be used to determine
	*       the MBean's management interface.  An interface if this is a
	*       classic Standard MBean; a class if this is a {@code @ManagedResource}.
	* @param <T> a type parameter that allows the compiler to check
	*       that {@code resource} implements {@code mbeanInterfaceType},
	*       provided that {@code mbeanInterfaceType} is a class constant like
	*       {@code SomeMBean.class}.
	* @throws IllegalArgumentException if {@code resource} is null or
	*       if it does not implement the class {@code mbeanInterfaceType} or if
	*       that class is not a valid Standard MBean interface.
	*/
	@:overload public function new<T>(resource : T, mbeanInterfaceType : Class<T>) : Void;
	
	@:overload override public function register(mbs : javax.management.MBeanServer, name : javax.management.ObjectName) : Void;
	
	@:overload override public function unregister() : Void;
	
	/* Standard MBeans that are NotificationBroadcasters can return a different
	* MBeanNotificationInfo[] every time getMBeanInfo() is called, so we have
	* to reconstruct this MBeanInfo if necessary.
	*/
	@:overload override public function getMBeanInfo() : javax.management.MBeanInfo;
	
	
}
