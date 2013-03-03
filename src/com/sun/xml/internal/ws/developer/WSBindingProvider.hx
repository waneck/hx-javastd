package com.sun.xml.internal.ws.developer;
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
extern interface WSBindingProvider extends javax.xml.ws.BindingProvider extends java.io.Closeable
{
	/**
	* Sets the out-bound headers to be added to messages sent from
	* this {@link BindingProvider}.
	*
	* <p>
	* Calling this method would discard any out-bound headers
	* that were previously set.
	*
	* <p>
	* A new {@link Header} object can be created by using
	* one of the methods on {@link Headers}.
	*
	* @param headers
	*      The headers to be added to the future request messages.
	*      To clear the outbound headers, pass in either null
	*      or empty list.
	* @throws IllegalArgumentException
	*      if the list contains null item.
	*/
	@:overload public function setOutboundHeaders(headers : java.util.List<com.sun.xml.internal.ws.api.message.Header>) : Void;
	
	/**
	* Sets the out-bound headers to be added to messages sent from
	* this {@link BindingProvider}.
	*
	* <p>
	* Works like {@link #setOutboundHeaders(List)} except
	* that it accepts a var arg array.
	*
	* @param headers
	*      Can be null or empty.
	*/
	@:overload public function setOutboundHeaders(headers : java.NativeArray<com.sun.xml.internal.ws.api.message.Header>) : Void;
	
	/**
	* Sets the out-bound headers to be added to messages sent from
	* this {@link BindingProvider}.
	*
	* <p>
	* Each object must be a JAXB-bound object that is understood
	* by the {@link JAXBContext} object known by this {@link WSBindingProvider}
	* (that is, if this is a {@link Dispatch} with JAXB, then
	* {@link JAXBContext} given to {@link Service#createDispatch(QName,JAXBContext,Mode)}
	* and if this is a typed proxy, then {@link JAXBContext}
	* implicitly created by the JAX-WS RI.)
	*
	* @param headers
	*      Can be null or empty.
	* @throws UnsupportedOperationException
	*      If this {@lini WSBindingProvider} is a {@link Dispatch}
	*      that does not use JAXB.
	*/
	@:overload public function setOutboundHeaders(headers : java.NativeArray<Dynamic>) : Void;
	
	@:overload public function getInboundHeaders() : java.util.List<com.sun.xml.internal.ws.api.message.Header>;
	
	/**
	* Sets the endpoint address for all the invocations that happen
	* from {@link BindingProvider}. Instead of doing the following
	*
	* <p>
	* ((BindingProvider)proxy).getRequestContext().put(
	*      BindingProvider.ENDPOINT_ADDRESS_PROPERTY, "...")
	* <p>
	* you could do this:
	*
	* <p>
	* ((WSBindingProvider)proxy).setAddress("...");
	*
	* @param address Address of the service
	*/
	@:overload public function setAddress(address : String) : Void;
	
	/**
	* Similar to {link BindingProvider#getEndpointReference(}, but returns WSEndpointReference that has more
	* convenience methods
	*
	* @return WSEndpointReference of the target servcie endpoint
	*
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload public function getWSEndpointReference() : com.sun.xml.internal.ws.api.addressing.WSEndpointReference;
	
	/**
	*
	* @return WSPortInfo object that captures the port information for which the stub is created.
	* @since JAX-WS 2.2
	*/
	@:require(java2) @:overload public function getPortInfo() : com.sun.xml.internal.ws.api.client.WSPortInfo;
	
	/**
	* Get the ManagedObjectManager for this provider.
	*/
	@:overload @:public public function getManagedObjectManager() : com.sun.org.glassfish.gmbal.ManagedObjectManager;
	
	
}
