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
extern class MonitorRootService extends com.sun.xml.internal.ws.server.MonitorBase
{
	@:overload @:public public function policy() : String;
	
	@:overload @:public public function container() : com.sun.xml.internal.ws.api.server.Container;
	
	@:overload @:public public function portName() : javax.xml.namespace.QName;
	
	@:overload @:public public function serviceName() : javax.xml.namespace.QName;
	
	/*  NOTE:  These are not ready when the AMX Validator runs so NPE.
	@ManagedAttribute
	@Description("The last tube in the dispatch chain")
	public @NotNull Tube terminalTube() {
	return endpoint.getAssemblerContext().getTerminalTube();
	}

	@ManagedAttribute
	@Description("True if tubeline is known to be used for serving synchronous transport")
	public boolean synchronous() {
	return endpoint.getAssemblerContext().isSynchronous();
	}

	@ManagedAttribute
	@Description("")
	public String codecMimeType() {
	return endpoint.getAssemblerContext().getCodec().getMimeType();
	}
	*/
	@:overload @:public public function soapVersionHttpBindingId() : String;
	
	@:overload @:public public function addressingVersion() : com.sun.xml.internal.ws.api.addressing.AddressingVersion;
	
	@:overload @:public public function bindingID() : com.sun.xml.internal.ws.api.BindingID;
	
	@:overload @:public public function features() : com.sun.xml.internal.ws.api.WSFeatureList;
	
	@:overload @:public public function wsdlPortTypeName() : javax.xml.namespace.QName;
	
	@:overload @:public public function wsdlEndpointAddress() : com.sun.xml.internal.ws.api.EndpointAddress;
	
	@:overload @:public public function serviceDefinitionImports() : java.util.Set<String>;
	
	@:overload @:public public function serviceDefinitionURL() : java.net.URL;
	
	@:overload @:public public function seiModelWSDLLocation() : String;
	
	@:overload @:public public function jaxwsRuntimeVersion() : String;
	
	@:overload @:public public function dumpHTTPMessages() : Bool;
	
	@:overload @:public public function dumpHTTPMessages(x : Bool) : Void;
	
	
}
