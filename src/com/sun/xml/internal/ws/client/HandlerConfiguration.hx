package com.sun.xml.internal.ws.client;
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
* This class holds the handler information and roles on the Binding (mutable info in the binding).
*
* HandlerConfiguration is immutable, and a new object is created when the BindingImpl is created or User calls
* Binding.setHandlerChain() or SOAPBinding.setRoles().
*
* During invocation in Stub.process(), snapshot of the handler configuration is set in Packet.handlerConfig. The
* information in the HandlerConfiguration is used by MUPipe and HandlerTube implementations.
*
* @author Rama Pulavarthi
*/
extern class HandlerConfiguration
{
	/**
	* @param roles               This contains the roles assumed by the Binding implementation.
	* @param handlerChain        This contains the handler chain set on the Binding
	*/
	@:overload @:public public function new(roles : java.util.Set<String>, handlerChain : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>) : Void;
	
	/**
	* This is called when roles as reset on binding using SOAPBinding#setRoles(), to save reparsing the handlers again.
	* @param roles
	* @param oldConfig
	*/
	@:overload @:public public function new(roles : java.util.Set<String>, oldConfig : com.sun.xml.internal.ws.client.HandlerConfiguration) : Void;
	
	@:overload @:public public function getRoles() : java.util.Set<String>;
	
	/**
	*
	* @return return a copy of handler chain
	*/
	@:overload @:public public function getHandlerChain() : java.util.List<javax.xml.ws.handler.Handler<Dynamic>>;
	
	@:overload @:public public function getLogicalHandlers() : java.util.List<javax.xml.ws.handler.LogicalHandler<Dynamic>>;
	
	@:overload @:public public function getSoapHandlers() : java.util.List<javax.xml.ws.handler.soap.SOAPHandler<Dynamic>>;
	
	@:overload @:public public function getMessageHandlers() : java.util.List<com.sun.xml.internal.ws.api.handler.MessageHandler<Dynamic>>;
	
	@:overload @:public public function getHandlerKnownHeaders() : java.util.Set<javax.xml.namespace.QName>;
	
	
}
