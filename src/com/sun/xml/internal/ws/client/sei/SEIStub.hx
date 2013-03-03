package com.sun.xml.internal.ws.client.sei;
/*
* Copyright (c) 1997, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class SEIStub extends com.sun.xml.internal.ws.client.Stub implements java.lang.reflect.InvocationHandler
{
	/**
	* {@link Stub} that handles method invocations
	* through a strongly-typed endpoint interface.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function new(owner : com.sun.xml.internal.ws.client.WSServiceDelegate, binding : com.sun.xml.internal.ws.binding.BindingImpl, seiModel : com.sun.xml.internal.ws.model.SOAPSEIModel, master : com.sun.xml.internal.ws.api.pipe.Tube, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload @:public public function new(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.binding.BindingImpl, seiModel : com.sun.xml.internal.ws.model.SOAPSEIModel, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:public @:final public var seiModel(default, null) : com.sun.xml.internal.ws.model.SOAPSEIModel;
	
	@:public @:final public var soapVersion(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	/**
	* Nullable when there is no associated WSDL Model
	* @return
	*/
	@:overload @:public override public function getOperationDispatcher() : com.sun.xml.internal.ws.wsdl.OperationDispatcher;
	
	@:overload @:public public function invoke(proxy : Dynamic, method : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	@:overload @:public @:final public function doProcess(request : com.sun.xml.internal.ws.api.message.Packet, rc : com.sun.xml.internal.ws.client.RequestContext, receiver : com.sun.xml.internal.ws.client.ResponseContextReceiver) : com.sun.xml.internal.ws.api.message.Packet;
	
	@:overload @:public @:final public function doProcessAsync(request : com.sun.xml.internal.ws.api.message.Packet, rc : com.sun.xml.internal.ws.client.RequestContext, _callback : com.sun.xml.internal.ws.api.pipe.Fiber.Fiber_CompletionCallback) : Void;
	
	@:overload @:protected @:final override private function getPortName() : javax.xml.namespace.QName;
	
	@:overload @:public override public function setOutboundHeaders(headers : java.NativeArray<Dynamic>) : Void;
	
	
}
