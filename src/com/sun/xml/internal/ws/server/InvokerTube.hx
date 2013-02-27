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
extern class InvokerTube<T> extends com.sun.xml.internal.ws.api.pipe.helper.AbstractTubeImpl
{
	@:overload private function new(invoker : com.sun.xml.internal.ws.api.server.Invoker) : Void;
	
	@:overload public function setEndpoint(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	@:overload private function getEndpoint() : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>;
	
	/**
	* Returns the {@link Invoker} object that serves the request.
	*/
	@:overload @:final public function getInvoker(request : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.server.Invoker;
	
	/**
	* processRequest() and processResponse() do not share any instance variables
	* while processing the request. {@link InvokerTube} is stateless and terminal,
	* so no need to create copies.
	*/
	@:overload @:final override public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : com.sun.xml.internal.ws.api.pipe.helper.AbstractTubeImpl;
	
	@:overload override public function preDestroy() : Void;
	
	/**
	* This method can be called while the user service is servicing the request
	* synchronously, to obtain the current request packet.
	*
	* <p>
	* This is primarily designed for {@link StatefulInstanceResolver}. Use with care.
	*/
	@:overload public static function getCurrentPacket() : com.sun.xml.internal.ws.api.message.Packet;
	
	
}
