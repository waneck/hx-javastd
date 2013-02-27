package com.sun.xml.internal.ws.server.provider;
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
@:internal extern class AsyncProviderInvokerTube<T> extends com.sun.xml.internal.ws.server.provider.ProviderInvokerTube<T>
{
	@:overload public function new(invoker : com.sun.xml.internal.ws.api.server.Invoker, argsBuilder : com.sun.xml.internal.ws.server.provider.ProviderArgumentsBuilder<T>) : Void;
	
	/*
	* This binds the parameter for Provider endpoints and invokes the
	* invoke() method of {@linke Provider} endpoint. The return value from
	* invoke() is used to create a new {@link Message} that traverses
	* through the Pipeline to transport.
	*/
	@:overload override public function processRequest(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override public function processResponse(response : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	@:overload override public function processException(t : java.lang.Throwable) : com.sun.xml.internal.ws.api.pipe.NextAction;
	
	
}
@:native('com$sun$xml$internal$ws$server$provider$AsyncProviderInvokerTube$AsyncProviderCallbackImpl') @:internal extern class AsyncProviderInvokerTube_AsyncProviderCallbackImpl implements com.sun.xml.internal.ws.api.server.AsyncProviderCallback<Dynamic>
{
	@:overload public function new(request : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload public function send(param : Dynamic) : Void;
	
	@:overload public function sendError(t : java.lang.Throwable) : Void;
	
	
}
/**
* The single {@link javax.xml.ws.WebServiceContext} instance injected into application.
*/
@:native('com$sun$xml$internal$ws$server$provider$AsyncProviderInvokerTube$AsyncWebServiceContext') @:internal extern class AsyncProviderInvokerTube_AsyncWebServiceContext extends com.sun.xml.internal.ws.server.AbstractWebServiceContext
{
	@:overload override public function getRequestPacket() : com.sun.xml.internal.ws.api.message.Packet;
	
	
}
