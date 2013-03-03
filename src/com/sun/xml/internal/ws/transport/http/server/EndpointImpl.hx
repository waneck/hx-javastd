package com.sun.xml.internal.ws.transport.http.server;
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
extern class EndpointImpl extends javax.xml.ws.Endpoint
{
	@:overload @:public public function new(bindingId : com.sun.xml.internal.ws.api.BindingID, impl : Dynamic, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	@:overload @:public public function new(bindingId : com.sun.xml.internal.ws.api.BindingID, implClass : Class<Dynamic>, invoker : javax.xml.ws.spi.Invoker, features : java.NativeArray<javax.xml.ws.WebServiceFeature>) : Void;
	
	/**
	* Wraps an already created {@link WSEndpoint} into an {@link EndpointImpl},
	* and immediately publishes it with the given context.
	*
	* @param wse created endpoint
	* @param serverContext supported http context
	* @deprecated This is a backdoor method. Don't use it unless you know what you are doing.
	*/
	@:overload @:public public function new(wse : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, serverContext : Dynamic) : Void;
	
	@:overload @:public override public function getBinding() : javax.xml.ws.Binding;
	
	@:overload @:public override public function getImplementor() : Dynamic;
	
	@:overload @:public override public function publish(address : String) : Void;
	
	@:overload @:public override public function publish(serverContext : Dynamic) : Void;
	
	@:overload @:public override public function publish(serverContext : javax.xml.ws.spi.http.HttpContext) : Void;
	
	@:overload @:public override public function stop() : Void;
	
	@:overload @:public override public function isPublished() : Bool;
	
	@:overload @:public override public function getMetadata() : java.util.List<javax.xml.transform.Source>;
	
	@:overload @:public override public function setMetadata(metadata : java.util.List<javax.xml.transform.Source>) : Void;
	
	@:overload @:public override public function getExecutor() : java.util.concurrent.Executor;
	
	@:overload @:public override public function setExecutor(executor : java.util.concurrent.Executor) : Void;
	
	@:overload @:public override public function getProperties() : java.util.Map<String, Dynamic>;
	
	@:overload @:public override public function setProperties(map : java.util.Map<String, Dynamic>) : Void;
	
	@:overload @:public override public function getEndpointReference(referenceParameters : java.NativeArray<org.w3c.dom.Element>) : javax.xml.ws.EndpointReference;
	
	@:overload @:public override public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, referenceParameters : java.NativeArray<org.w3c.dom.Element>) : T;
	
	@:overload @:public override public function setEndpointContext(ctxt : javax.xml.ws.EndpointContext) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$server$EndpointImpl$InvokerImpl') @:internal extern class EndpointImpl_InvokerImpl extends com.sun.xml.internal.ws.api.server.Invoker
{
	@:overload @:public override public function start(wsc : com.sun.xml.internal.ws.api.server.WSWebServiceContext, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	@:overload @:public override public function invoke(p : com.sun.xml.internal.ws.api.message.Packet, m : java.lang.reflect.Method, args : java.NativeArray<Dynamic>) : Dynamic;
	
	
}
