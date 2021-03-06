package com.sun.xml.internal.ws.transport.http.server;
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
@:internal extern class ServerConnectionImpl extends com.sun.xml.internal.ws.transport.http.WSHTTPConnection implements com.sun.xml.internal.ws.api.server.WebServiceContextDelegate
{
	@:overload @:public public function new(adapter : com.sun.xml.internal.ws.transport.http.HttpAdapter, httpExchange : com.sun.net.httpserver.HttpExchange) : Void;
	
	@:overload @:public override public function getRequestHeaders() : java.util.Map<String, java.util.List<String>>;
	
	@:overload @:public override public function getRequestHeader(headerName : String) : String;
	
	@:overload @:public override public function setResponseHeaders(headers : java.util.Map<String, java.util.List<String>>) : Void;
	
	@:overload @:public override public function getResponseHeaders() : java.util.Map<String, java.util.List<String>>;
	
	@:overload @:public override public function setContentTypeResponseHeader(value : String) : Void;
	
	@:overload @:public override public function setStatus(status : Int) : Void;
	
	@:overload @:public override public function getStatus() : Int;
	
	@:overload @:public override public function getInput() : java.io.InputStream;
	
	@:overload @:public override public function getOutput() : java.io.OutputStream;
	
	@:overload @:public override public function getWebServiceContextDelegate() : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate;
	
	@:overload @:public public function getUserPrincipal(request : com.sun.xml.internal.ws.api.message.Packet) : java.security.Principal;
	
	@:overload @:public public function isUserInRole(request : com.sun.xml.internal.ws.api.message.Packet, role : String) : Bool;
	
	@:overload @:public public function getEPRAddress(request : com.sun.xml.internal.ws.api.message.Packet, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : String;
	
	@:overload @:public public function getWSDLAddress(request : com.sun.xml.internal.ws.api.message.Packet, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : String;
	
	@:overload @:public override public function isSecure() : Bool;
	
	@:overload @:public override public function getRequestMethod() : String;
	
	@:overload @:public override public function getQueryString() : String;
	
	@:overload @:public override public function getPathInfo() : String;
	
	@:overload @:public public function getExchange() : com.sun.net.httpserver.HttpExchange;
	
	@:overload @:public override public function getBaseAddress() : String;
	
	@:overload @:public override public function getProtocol() : String;
	
	@:overload @:public override public function setContentLengthResponseHeader(value : Int) : Void;
	
	@:overload @:protected override private function getPropertyMap() : com.sun.xml.internal.ws.api.PropertySet.PropertySet_PropertyMap;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$server$ServerConnectionImpl$LWHSInputStream') @:internal extern class ServerConnectionImpl_LWHSInputStream extends java.io.FilterInputStream
{
	@:overload @:public override public function close() : Void;
	
	
}
