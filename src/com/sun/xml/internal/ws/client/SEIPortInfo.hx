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
@:internal extern class SEIPortInfo extends javax.xml.ws.handler.PortInfo
{
	/**
	* {@link PortInfo} that has {@link SEIModel}.
	*
	* This object is created statically when {@link WSServiceDelegate} is created
	* with an service interface.
	*
	* @author Kohsuke Kawaguchi
	*/
	public var sei(default, null) : Class<Dynamic>;
	
	/**
	* Model of {@link #sei}.
	*/
	public var model(default, null) : com.sun.xml.internal.ws.model.SOAPSEIModel;
	
	@:overload public function new(owner : com.sun.xml.internal.ws.client.WSServiceDelegate, sei : Class<Dynamic>, model : com.sun.xml.internal.ws.model.SOAPSEIModel, portModel : com.sun.xml.internal.ws.api.model.wsdl.WSDLPort) : Void;
	
	@:overload public function createBinding(webServiceFeatures : java.NativeArray<javax.xml.ws.WebServiceFeature>, portInterface : Class<Dynamic>) : com.sun.xml.internal.ws.binding.BindingImpl;
	
	
}
