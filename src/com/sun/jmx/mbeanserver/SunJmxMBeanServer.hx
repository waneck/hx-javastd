package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2000, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern interface SunJmxMBeanServer extends javax.management.MBeanServer
{
	/**
	* Return the MBeanInstantiator associated to this MBeanServer.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	*/
	@:overload public function getMBeanInstantiator() : com.sun.jmx.mbeanserver.MBeanInstantiator;
	
	/**
	* Tell whether {@link MBeanServerInterceptor}s are enabled on this
	* object.
	* @return <code>true</code> if {@link MBeanServerInterceptor}s are
	*         enabled.
	* @see #getMBeanServerInterceptor
	* @see #setMBeanServerInterceptor
	* @see #getMBeanInstantiator
	* @see com.sun.jmx.mbeanserver.JmxMBeanServerBuilder
	**/
	@:overload public function interceptorsEnabled() : Bool;
	
	/**
	* Return the MBeanServerInterceptor.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	**/
	@:overload public function getMBeanServerInterceptor() : javax.management.MBeanServer;
	
	/**
	* Set the MBeanServerInterceptor.
	* @exception UnsupportedOperationException if
	*            {@link MBeanServerInterceptor}s
	*            are not enabled on this object.
	* @see #interceptorsEnabled
	**/
	@:overload public function setMBeanServerInterceptor(interceptor : javax.management.MBeanServer) : Void;
	
	/**
	* <p>Return the MBeanServerDelegate representing the MBeanServer.
	* Notifications can be sent from the MBean server delegate using
	* the method {@link MBeanServerDelegate#sendNotification}
	* in the returned object.</p>
	*
	*/
	@:overload public function getMBeanServerDelegate() : javax.management.MBeanServerDelegate;
	
	
}
