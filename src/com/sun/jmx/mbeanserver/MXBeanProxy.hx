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
extern class MXBeanProxy
{
	/**
	<p>Helper class for an {@link InvocationHandler} that forwards methods from an
	MXBean interface to a named
	MXBean in an MBean Server and handles translation between the
	arbitrary Java types in the interface and the Open Types used
	by the MXBean.</p>

	@since 1.6
*/
	@:require(java6) @:overload @:public public function new(mxbeanInterface : Class<Dynamic>) : Void;
	
	@:overload @:public public function invoke(mbsc : javax.management.MBeanServerConnection, name : javax.management.ObjectName, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
@:native('com$sun$jmx$mbeanserver$MXBeanProxy$Visitor') @:internal extern class MXBeanProxy_Visitor implements com.sun.jmx.mbeanserver.MBeanAnalyzer.MBeanAnalyzer_MBeanVisitor<com.sun.jmx.mbeanserver.ConvertingMethod>
{
	@:overload @:public public function visitAttribute(attributeName : String, getter : com.sun.jmx.mbeanserver.ConvertingMethod, setter : com.sun.jmx.mbeanserver.ConvertingMethod) : Void;
	
	@:overload @:public public function visitOperation(operationName : String, operation : com.sun.jmx.mbeanserver.ConvertingMethod) : Void;
	
	
}
@:native('com$sun$jmx$mbeanserver$MXBeanProxy$Handler') @:internal extern class MXBeanProxy_Handler
{
	
}
@:native('com$sun$jmx$mbeanserver$MXBeanProxy$GetHandler') @:internal extern class MXBeanProxy_GetHandler extends com.sun.jmx.mbeanserver.MXBeanProxy.MXBeanProxy_Handler
{
	
}
@:native('com$sun$jmx$mbeanserver$MXBeanProxy$SetHandler') @:internal extern class MXBeanProxy_SetHandler extends com.sun.jmx.mbeanserver.MXBeanProxy.MXBeanProxy_Handler
{
	
}
@:native('com$sun$jmx$mbeanserver$MXBeanProxy$InvokeHandler') @:internal extern class MXBeanProxy_InvokeHandler extends com.sun.jmx.mbeanserver.MXBeanProxy.MXBeanProxy_Handler
{
	
}
