package com.sun.xml.internal.ws.client.dispatch;
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
extern class DispatchImpl<T> extends com.sun.xml.internal.ws.client.Stub implements javax.xml.ws.Dispatch<T>
{
	/**
	*
	* @param port    dispatch instance is asssociated with this wsdl port qName
	* @param mode    Service.mode associated with this Dispatch instance - Service.mode.MESSAGE or Service.mode.PAYLOAD
	* @param owner   Service that created the Dispatch
	* @param pipe    Master pipe for the pipeline
	* @param binding Binding of this Dispatch instance, current one of SOAP/HTTP or XML/HTTP
	*/
	@:overload @:protected private function new(port : javax.xml.namespace.QName, mode : javax.xml.ws.Service.Service_Mode, owner : com.sun.xml.internal.ws.client.WSServiceDelegate, pipe : com.sun.xml.internal.ws.api.pipe.Tube, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	/**
	*
	* @param portInfo dispatch instance is asssociated with this portInfo
	* @param mode     Service.mode associated with this Dispatch instance - Service.mode.MESSAGE or Service.mode.PAYLOAD
	* @param binding  Binding of this Dispatch instance, current one of SOAP/HTTP or XML/HTTP
	*/
	@:overload @:protected private function new(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, mode : javax.xml.ws.Service.Service_Mode, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload @:public @:final public function invokeAsync(param : T) : javax.xml.ws.Response<T>;
	
	@:overload @:public @:final public function invokeAsync(param : T, asyncHandler : javax.xml.ws.AsyncHandler<T>) : java.util.concurrent.Future<Dynamic>;
	
	/**
	* Synchronously invokes a service.
	*
	* See {@link #process(Packet, RequestContext, ResponseContextReceiver)} on
	* why it takes a {@link RequestContext} and {@link ResponseContextReceiver} as a parameter.
	*/
	@:overload @:public @:final public function doInvoke(_in : T, rc : com.sun.xml.internal.ws.client.RequestContext, receiver : com.sun.xml.internal.ws.client.ResponseContextReceiver) : T;
	
	@:overload @:public @:final public function invoke(_in : T) : T;
	
	@:overload @:public @:final public function invokeOneWay(_in : T) : Void;
	
	@:overload @:public @:static public static function checkValidSOAPMessageDispatch(binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode) : Void;
	
	@:overload @:public @:static public static function checkValidDataSourceDispatch(binding : com.sun.xml.internal.ws.api.WSBinding, mode : javax.xml.ws.Service.Service_Mode) : Void;
	
	@:overload @:protected @:final override private function getPortName() : javax.xml.namespace.QName;
	
	@:overload @:protected private function resolveURI(endpointURI : java.net.URI, pathInfo : String, queryString : String) : String;
	
	@:overload @:protected private function setOutboundAttachments() : com.sun.xml.internal.ws.api.message.AttachmentSet;
	
	@:overload @:public override public function setOutboundHeaders(headers : java.NativeArray<Dynamic>) : Void;
	
	@:overload @:public @:static public static function createSourceDispatch(port : javax.xml.namespace.QName, mode : javax.xml.ws.Service.Service_Mode, owner : com.sun.xml.internal.ws.client.WSServiceDelegate, pipe : com.sun.xml.internal.ws.api.pipe.Tube, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.transform.Source>;
	
	@:overload @:public @:static public static function createSourceDispatch(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, mode : javax.xml.ws.Service.Service_Mode, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : javax.xml.ws.Dispatch<javax.xml.transform.Source>;
	
	/**
	* Get the context that resulted from processing a response message.
	*
	* The returned context is for the most recently completed synchronous
	* operation. Subsequent synchronous operation invocations overwrite the
	* response context. Asynchronous operations return their response context
	* via the Response interface.
	*
	* @return The context that resulted from processing the latest
	* response messages.
	**/
	@:overload @:public override public function getResponseContext() : java.util.Map<String, Dynamic>;
	
	/**
	* Returns the <code>EndpointReference</code> associated with
	* this <code>BindingProvider</code> instance.
	* <p>
	* If the Binding for this <code>bindingProvider</code> is
	* either SOAP1.1/HTTP or SOAP1.2/HTTP, then a
	* <code>W3CEndpointReference</code> MUST be returned.
	*
	* @return EndpointReference of the target endpoint associated with this
	* <code>BindingProvider</code> instance.
	*
	* @throws java.lang.UnsupportedOperationException If this
	* <code>BindingProvider</code> uses the XML/HTTP binding.
	*
	* @see W3CEndpointReference
	*
	* @since JAX-WS 2.1
	*/
	@:require(java1) @:overload @:public @:public override public function getEndpointReference() : javax.xml.ws.EndpointReference;
	
	/**
	* Get the Binding for this binding provider.
	*
	* @return The Binding for this binding provider.
	**/
	@:overload @:public override public function getBinding() : javax.xml.ws.Binding;
	
	/**
	* Get the context that is used to initialize the message context
	* for request messages.
	*
	* Modifications to the request context do not affect the message context of
	* either synchronous or asynchronous operations that have already been
	* started.
	*
	* @return The context that is used in processing request messages.
	**/
	@:overload @:public override public function getRequestContext() : java.util.Map<String, Dynamic>;
	
	/**
	* Returns the <code>EndpointReference</code> associated with
	* this <code>BindingProvider</code> instance.  The instance
	* returned will be of type <code>clazz</code>.
	*
	* @param clazz Specifies the type of <code>EndpointReference</code>
	* that MUST be returned.

	* @return EndpointReference of the target endpoint associated with this
	* <code>BindingProvider</code> instance. MUST be of type
	* <code>clazz</code>.

	* @throws WebServiceException If the Class <code>clazz</code>
	* is not supported by this implementation.
	* @throws java.lang.UnsupportedOperationException If this
	* <code>BindingProvider</code> uses the XML/HTTP binding.
	*
	* @since JAX-WS 2.1
	*/
	@:require(java1) @:overload @:public @:public override public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>) : T;
	
	
}
/**
* Calls {@link DispatchImpl#doInvoke(Object,RequestContext,ResponseContextReceiver)}.
*/
@:native('com$sun$xml$internal$ws$client$dispatch$DispatchImpl$Invoker') @:internal extern class DispatchImpl_Invoker implements java.util.concurrent.Callable<Dynamic>
{
	@:overload @:public public function call() : Dynamic;
	
	
}
/**
*
*/
@:native('com$sun$xml$internal$ws$client$dispatch$DispatchImpl$DispatchAsyncInvoker') @:internal extern class DispatchImpl_DispatchAsyncInvoker extends com.sun.xml.internal.ws.client.AsyncInvoker
{
	@:overload @:public override public function do_run() : Void;
	
	
}
