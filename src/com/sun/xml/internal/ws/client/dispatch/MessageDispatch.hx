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
extern class MessageDispatch extends com.sun.xml.internal.ws.client.dispatch.DispatchImpl<com.sun.xml.internal.ws.api.message.Message>
{
	/**
	* {@link Dispatch} implementation for {@link Message}.
	*
	* @author Kohsuke Kawaguchi
	* @since 2.1.1
	*/
	@:require(java1) @:overload public function new(port : javax.xml.namespace.QName, service : com.sun.xml.internal.ws.client.WSServiceDelegate, pipe : com.sun.xml.internal.ws.api.pipe.Tube, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	@:overload public function new(portInfo : com.sun.xml.internal.ws.api.client.WSPortInfo, binding : com.sun.xml.internal.ws.binding.BindingImpl, epr : com.sun.xml.internal.ws.api.addressing.WSEndpointReference) : Void;
	
	
}
