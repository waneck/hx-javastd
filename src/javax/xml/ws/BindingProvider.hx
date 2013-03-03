package javax.xml.ws;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern interface BindingProvider
{
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
	@:overload @:public public function getRequestContext() : java.util.Map<String, Dynamic>;
	
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
	@:overload @:public public function getResponseContext() : java.util.Map<String, Dynamic>;
	
	/**
	* Get the Binding for this binding provider.
	*
	* @return The Binding for this binding provider.
	**/
	@:overload @:public public function getBinding() : javax.xml.ws.Binding;
	
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
	@:require(java1) @:overload @:public @:public public function getEndpointReference() : javax.xml.ws.EndpointReference;
	
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
	@:require(java1) @:overload @:public @:public public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>) : T;
	
	
}
