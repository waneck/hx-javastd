package com.sun.corba.se.impl.presentation.rmi;
/*
* Copyright (c) 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class InvocationHandlerFactoryImpl implements com.sun.corba.se.spi.orbutil.proxy.InvocationHandlerFactory
{
	@:overload public function new(pm : com.sun.corba.se.spi.presentation.rmi.PresentationManager, classData : com.sun.corba.se.spi.presentation.rmi.PresentationManager.PresentationManager_ClassData) : Void;
	
	@:overload public function getInvocationHandler() : java.lang.reflect.InvocationHandler;
	
	@:overload public function getProxyInterfaces() : java.NativeArray<Class<Dynamic>>;
	
	
}
@:native('com$sun$corba$se$impl$presentation$rmi$InvocationHandlerFactoryImpl$CustomCompositeInvocationHandlerImpl') @:internal extern class InvocationHandlerFactoryImpl_CustomCompositeInvocationHandlerImpl extends com.sun.corba.se.spi.orbutil.proxy.CompositeInvocationHandlerImpl implements com.sun.corba.se.spi.orbutil.proxy.LinkedInvocationHandler implements java.io.Serializable
{
	@:overload public function setProxy(proxy : java.lang.reflect.Proxy) : Void;
	
	@:overload public function getProxy() : java.lang.reflect.Proxy;
	
	@:overload public function new(stub : com.sun.corba.se.spi.presentation.rmi.DynamicStub) : Void;
	
	/** Return the stub, which will actually be written to the stream.
	* It will be custom marshalled, with the actual writing done in
	* StubIORImpl.  There is a corresponding readResolve method on
	* DynamicStubImpl which will re-create the full invocation
	* handler on read, and return the invocation handler on the
	* readResolve method.
	*/
	@:overload public function writeReplace() : Dynamic;
	
	
}