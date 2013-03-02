package com.sun.xml.internal.ws.server;
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
extern class WSEndpointImpl<T> extends com.sun.xml.internal.ws.api.server.WSEndpoint<T>
{
	@:overload public function getEndpointReferenceExtensions() : java.util.Collection<com.sun.xml.internal.ws.api.addressing.WSEndpointReference.WSEndpointReference_EPRExtension>;
	
	/**
	* Nullable when there is no associated WSDL Model
	* @return
	*/
	@:overload public function getOperationDispatcher() : com.sun.xml.internal.ws.wsdl.OperationDispatcher;
	
	@:overload override public function getPolicyMap() : com.sun.xml.internal.ws.policy.PolicyMap;
	
	@:overload override public function getImplementationClass() : Class<T>;
	
	@:overload override public function getBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload override public function getContainer() : com.sun.xml.internal.ws.api.server.Container;
	
	@:overload override public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	@:overload override public function getSEIModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	@:overload override public function setExecutor(exec : java.util.concurrent.Executor) : Void;
	
	@:overload override public function schedule(request : com.sun.xml.internal.ws.api.message.Packet, _callback : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_CompletionCallback, interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Void;
	
	@:overload override public function process(request : com.sun.xml.internal.ws.api.message.Packet, _callback : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_CompletionCallback, interceptor : com.sun.xml.internal.ws.api.pipe.FiberContextSwitchInterceptor) : Void;
	
	@:overload override public function createPipeHead() : com.sun.xml.internal.ws.api.server.WSEndpoint.WSEndpoint_PipeHead;
	
	@:overload @:synchronized override public function dispose() : Void;
	
	@:overload override public function getServiceDefinition() : com.sun.xml.internal.ws.server.ServiceDefinitionImpl;
	
	@:overload override public function getComponentRegistry() : java.util.Set<com.sun.xml.internal.ws.api.server.EndpointComponent>;
	
	@:overload public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, address : String, wsdlAddress : String, referenceParameters : java.NativeArray<org.w3c.dom.Element>) : T;
	
	@:overload public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, address : String, wsdlAddress : String, metadata : java.util.List<org.w3c.dom.Element>, referenceParameters : java.util.List<org.w3c.dom.Element>) : T;
	
	@:overload override public function getPortName() : javax.xml.namespace.QName;
	
	@:overload override public function createCodec() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	@:overload override public function getServiceName() : javax.xml.namespace.QName;
	
	@:overload override public function getManagedObjectManager() : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	@:overload override public function closeManagedObjectManager() : Void;
	
	@:overload override public function getAssemblerContext() : com.sun.xml.internal.ws.api.pipe.ServerTubeAssemblerContext;
	
	
}
