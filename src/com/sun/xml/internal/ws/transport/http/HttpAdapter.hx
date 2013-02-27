package com.sun.xml.internal.ws.transport.http;
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
extern class HttpAdapter extends com.sun.xml.internal.ws.api.server.Adapter<HttpAdapter_HttpToolkit>
{
	public var owner(default, null) : com.sun.xml.internal.ws.transport.http.HttpAdapterList<HttpAdapter>;
	
	/**
	* Servlet URL pattern with which this {@link HttpAdapter} is associated.
	*/
	public var urlPattern(default, null) : String;
	
	private var stickyCookie : Bool;
	
	/**
	* Creates a lone {@link HttpAdapter} that does not know of any other
	* {@link HttpAdapter}s.
	*
	* This is convenient for creating an {@link HttpAdapter} for an environment
	* where they don't know each other (such as JavaSE deployment.)
	*
	* @param endpoint web service endpoint
	* @return singe adapter to process HTTP messages
	*/
	@:overload public static function createAlone(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : HttpAdapter;
	
	/**
	* @deprecated
	*      remove as soon as we can update the test util.
	* @param endpoint web service endpoint
	* @param owner list of related adapters
	*/
	@:overload private function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, owner : com.sun.xml.internal.ws.transport.http.HttpAdapterList<HttpAdapter>) : Void;
	
	@:overload private function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>, owner : com.sun.xml.internal.ws.transport.http.HttpAdapterList<HttpAdapter>, urlPattern : String) : Void;
	
	/**
	* Return the last known service definition of the endpoint.
	*
	* @return The service definition of the endpoint
	*/
	@:overload public function getServiceDefinition() : com.sun.xml.internal.ws.api.server.ServiceDefinition;
	
	/**
	* Fill in WSDL map.
	*
	* @param sdef service definition
	*/
	@:overload public function initWSDLMap(sdef : com.sun.xml.internal.ws.api.server.ServiceDefinition) : Void;
	
	/**
	* Returns the "/abc/def/ghi" portion if
	* the URL pattern is "/abc/def/ghi/*".
	*/
	@:overload public function getValidPath() : String;
	
	@:overload override private function createToolkit() : HttpAdapter_HttpToolkit;
	
	/**
	* Receives the incoming HTTP connection and dispatches
	* it to JAX-WS. This method returns when JAX-WS completes
	* processing the request and the whole reply is written
	* to {@link WSHTTPConnection}.
	*
	* <p>
	* This method is invoked by the lower-level HTTP stack,
	* and "connection" here is an HTTP connection.
	*
	* <p>
	* To populate a request {@link Packet} with more info,
	* define {@link PropertySet.Property properties} on
	* {@link WSHTTPConnection}.
	*
	* @param connection to receive/send HTTP messages for web service endpoints
	* @throws IOException when I/O errors happen
	*/
	@:overload public function handle(connection : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Void;
	
	@:overload public function handleGet(connection : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Bool;
	
	@:overload public function invokeAsync(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Void;
	
	@:overload public function invokeAsync(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection, _callback : HttpAdapter_CompletionCallback) : Void;
	
	public static var NO_OP_COMPLETION_CALLBACK(default, null) : HttpAdapter_CompletionCallback;
	
	/**
	* Sends out the WSDL (and other referenced documents)
	* in response to the GET requests to URLs like "?wsdl" or "?xsd=2".
	*
	* @param con
	*      The connection to which the data will be sent.
	*
	* @throws IOException when I/O errors happen
	*/
	@:overload public function publishWSDL(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Void;
	
	/**
	* Dumps what goes across HTTP transport.
	*/
	@:native('dump') public static var _dump : Bool;
	
	public static var publishStatusPage : Bool;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$CompletionCallback') extern interface HttpAdapter_CompletionCallback
{
	@:overload public function onCompletion() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$AsyncTransport') @:internal extern class HttpAdapter_AsyncTransport extends com.sun.xml.internal.ws.api.server.AbstractServerAsyncTransport<com.sun.xml.internal.ws.transport.http.WSHTTPConnection>
{
	@:overload public function new() : Void;
	
	@:overload public function handleAsync(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Void;
	
	@:overload private function encodePacket(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection, packet : com.sun.xml.internal.ws.api.message.Packet, codec : com.sun.xml.internal.ws.api.pipe.Codec) : Void;
	
	@:overload private function getAcceptableMimeTypes(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : String;
	
	@:overload private function getTransportBackChannel(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : com.sun.xml.internal.ws.api.server.TransportBackChannel;
	
	@:overload private function getPropertySet(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : com.sun.xml.internal.ws.api.PropertySet;
	
	@:overload private function getWebServiceContextDelegate(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$Oneway') @:internal extern class HttpAdapter_Oneway implements com.sun.xml.internal.ws.api.server.TransportBackChannel
{
	@:overload public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$HttpToolkit') @:internal extern class HttpAdapter_HttpToolkit extends com.sun.xml.internal.ws.api.server.Adapter.Adapter_Toolkit
{
	@:overload public function handle(con : com.sun.xml.internal.ws.transport.http.WSHTTPConnection) : Void;
	
	
}
/**
* HTTP/1.0 connections require Content-Length. So just buffer to find out
* the length.
*/
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$Http10OutputStream') @:internal extern class HttpAdapter_Http10OutputStream extends com.sun.xml.internal.ws.util.ByteArrayBuffer
{
	@:overload override public function close() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$HttpAdapter$DummyList') @:internal extern class HttpAdapter_DummyList extends com.sun.xml.internal.ws.transport.http.HttpAdapterList<HttpAdapter>
{
	@:overload override private function createHttpAdapter(name : String, urlPattern : String, endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : HttpAdapter;
	
	
}
