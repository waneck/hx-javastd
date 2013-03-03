package com.sun.xml.internal.ws.api.handler;
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
extern interface MessageHandlerContext extends javax.xml.ws.handler.MessageContext
{
	/**
	* Gets the message from this message context
	*
	* @return The contained message; returns <code>null</code> if no
	*         message is present in this message context
	*/
	@:overload @:public public function getMessage() : com.sun.xml.internal.ws.api.message.Message;
	
	/**
	* Sets the message in this message context
	*/
	@:overload @:public public function setMessage(message : com.sun.xml.internal.ws.api.message.Message) : Void;
	
	/**
	* @see javax.xml.ws.handler.soap.SOAPMessageContext#getRoles()
	*/
	@:overload @:public public function getRoles() : java.util.Set<String>;
	
	/**
	* Provides access to <code>WSBinding</code> which can be used in various ways.
	* for example: <code>WSBinding#getSOAPVersion</code> to get SOAP version of the binding.
	*              <code>WSBinding#isFeatureEnabled(AddressingFeature)</code> to check if addressing is enabled
	*/
	@:overload @:public public function getWSBinding() : com.sun.xml.internal.ws.api.WSBinding;
	
	/**
	* Provides access to <code>SEIModel</code>.
	*/
	@:overload @:public public function getSEIModel() : com.sun.xml.internal.ws.api.model.SEIModel;
	
	/**
	* Gets the {@link WSDLPort} that represents the port.
	* @return
	*      returns the WSDLModel of the port that the client/endpoint binds to.
	*      null when the Service is not configured with WSDL information.
	*/
	@:overload @:public public function getPort() : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort;
	
	
}
