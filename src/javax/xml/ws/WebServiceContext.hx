package javax.xml.ws;
/*
* Copyright (c) 2005, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern interface WebServiceContext
{
	/**
	* Returns the <code>MessageContext</code> for the request being served
	* at the time this method is called. Only properties with
	* APPLICATION scope will be visible to the application.
	*
	* @return MessageContext The message context.
	*
	* @throws IllegalStateException This exception is thrown
	*         if the method is called while no request is
	*         being serviced.
	*
	* @see javax.xml.ws.handler.MessageContext
	* @see javax.xml.ws.handler.MessageContext.Scope
	* @see java.lang.IllegalStateException
	**/
	@:overload @:public public function getMessageContext() : javax.xml.ws.handler.MessageContext;
	
	/**
	* Returns the Principal that identifies the sender
	* of the request currently being serviced. If the
	* sender has not been authenticated, the method
	* returns <code>null</code>.
	*
	* @return Principal The principal object.
	*
	* @throws IllegalStateException This exception is thrown
	*         if the method is called while no request is
	*         being serviced.
	*
	* @see java.security.Principal
	* @see java.lang.IllegalStateException
	**/
	@:overload @:public public function getUserPrincipal() : java.security.Principal;
	
	/**
	* Returns a boolean indicating whether the
	* authenticated user is included in the specified
	* logical role. If the user has not been
	* authenticated, the method returns <code>false</code>.
	*
	* @param role  A <code>String</code> specifying the name of the role
	*
	* @return a <code>boolean</code> indicating whether
	* the sender of the request belongs to a given role
	*
	* @throws IllegalStateException This exception is thrown
	*         if the method is called while no request is
	*         being serviced.
	**/
	@:overload @:public public function isUserInRole(role : String) : Bool;
	
	/**
	* Returns the <code>EndpointReference</code> for this
	* endpoint.
	* <p>
	* If the {@link Binding} for this <code>bindingProvider</code> is
	* either SOAP1.1/HTTP or SOAP1.2/HTTP, then a
	* <code>W3CEndpointReference</code> MUST be returned.
	*
	* @param referenceParameters Reference parameters to be associated with the
	* returned <code>EndpointReference</code> instance.
	* @return EndpointReference of the endpoint associated with this
	* <code>WebServiceContext</code>.
	* If the returned <code>EndpointReference</code> is of type
	* <code>W3CEndpointReference</code> then it MUST contain the
	* the specified <code>referenceParameters</code>.
	*
	* @throws IllegalStateException This exception is thrown
	*         if the method is called while no request is
	*         being serviced.
	*
	* @see W3CEndpointReference
	*
	* @since JAX-WS 2.1
	*/
	@:require(java1) @:overload @:public public function getEndpointReference(referenceParameters : java.NativeArray<org.w3c.dom.Element>) : javax.xml.ws.EndpointReference;
	
	/**
	* Returns the <code>EndpointReference</code> associated with
	* this endpoint.
	*
	* @param clazz The type of <code>EndpointReference</code> that
	* MUST be returned.
	* @param referenceParameters Reference parameters to be associated with the
	* returned <code>EndpointReference</code> instance.
	* @return EndpointReference of type <code>clazz</code> of the endpoint
	* associated with this <code>WebServiceContext</code> instance.
	* If the returned <code>EndpointReference</code> is of type
	* <code>W3CEndpointReference</code> then it MUST contain the
	* the specified <code>referenceParameters</code>.
	*
	* @throws IllegalStateException This exception is thrown
	*         if the method is called while no request is
	*         being serviced.
	* @throws WebServiceException If the <code>clazz</code> type of
	* <code>EndpointReference</code> is not supported.
	*
	* @since JAX-WS 2.1
	**/
	@:require(java1) @:overload @:public public function getEndpointReference<T : javax.xml.ws.EndpointReference>(clazz : Class<T>, referenceParameters : java.NativeArray<org.w3c.dom.Element>) : T;
	
	
}
