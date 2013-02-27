package com.sun.xml.internal.ws.handler;
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
extern class ClientLogicalHandlerTube extends com.sun.xml.internal.ws.handler.HandlerTube
{
	/**
	* Creates a new instance of LogicalHandlerTube
	*/
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, seiModel : com.sun.xml.internal.ws.api.model.SEIModel, port : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort, next : com.sun.xml.internal.ws.api.pipe.Tube) : Void;
	
	/**
	* This constructor is used on client-side where, SOAPHandlerTube is created
	* first and then a LogicalHandlerTube is created with a handler to that
	* SOAPHandlerTube.
	* With this handle, LogicalHandlerTube can call
	* SOAPHandlerTube.closeHandlers()
	*/
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, seiModel : com.sun.xml.internal.ws.api.model.SEIModel, next : com.sun.xml.internal.ws.api.pipe.Tube, cousinTube : com.sun.xml.internal.ws.handler.HandlerTube) : Void;
	
	@:overload override private function initiateClosing(mc : javax.xml.ws.handler.MessageContext) : Void;
	
	@:overload override public function copy(cloner : com.sun.xml.internal.ws.api.pipe.TubeCloner) : com.sun.xml.internal.ws.api.pipe.helper.AbstractFilterTubeImpl;
	
	
}
