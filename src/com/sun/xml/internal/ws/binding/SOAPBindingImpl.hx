package com.sun.xml.internal.ws.binding;
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
/**
* @author WS Development Team
*/
extern class SOAPBindingImpl extends com.sun.xml.internal.ws.binding.BindingImpl implements javax.xml.ws.soap.SOAPBinding
{
	@:public @:static @:final public static var X_SOAP12HTTP_BINDING(default, null) : String;
	
	@:protected @:final private var soapVersion(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	/**
	*  This method should be called if the binding has SOAPSEIModel
	*  The Headers understood by the Port are set, so that they can be used for MU
	*  processing.
	*
	* @param headers
	*/
	@:overload @:public public function setPortKnownHeaders(headers : java.util.Set<javax.xml.namespace.QName>) : Void;
	
	@:overload @:public public function understandsHeader(header : javax.xml.namespace.QName) : Bool;
	
	/**
	* Sets the handlers on the binding and then sorts the handlers in to logical and protocol handlers.
	* Creates a new HandlerConfiguration object and sets it on the BindingImpl. Also parses Headers understood by
	* Protocol Handlers and sets the HandlerConfiguration.
	*/
	@:overload @:public override public function setHandlerChain(chain : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>) : Void;
	
	@:overload @:protected private function addRequiredRoles(roles : java.util.Set<String>) : Void;
	
	@:overload @:public public function getRoles() : java.util.Set<String>;
	
	/**
	* Adds the next and other roles in case this has
	* been called by a user without them.
	* Creates a new HandlerConfiguration object and sets it on the BindingImpl.
	*/
	@:overload @:public public function setRoles(roles : java.util.Set<String>) : Void;
	
	/**
	* Used typically by the runtime to enable/disable Mtom optimization
	*/
	@:overload @:public public function isMTOMEnabled() : Bool;
	
	/**
	* Client application can override if the MTOM optimization should be enabled
	*/
	@:overload @:public public function setMTOMEnabled(b : Bool) : Void;
	
	@:overload @:public public function getSOAPFactory() : javax.xml.soap.SOAPFactory;
	
	@:overload @:public public function getMessageFactory() : javax.xml.soap.MessageFactory;
	
	
}
