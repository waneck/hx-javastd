package com.sun.xml.internal.ws.api.server;
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
extern class AbstractServerAsyncTransport<T>
{
	/**
	* {@link WSEndpoint#setExecutor} should be called before creating the
	* transport
	*
	* @param endpoint webservices requests are directed towards this endpoint
	*/
	@:overload @:public public function new(endpoint : com.sun.xml.internal.ws.api.server.WSEndpoint<Dynamic>) : Void;
	
	/**
	* decodes the transport data to Packet
	*
	* @param connection that carries the web service request
	* @param codec for encoding/decoding {@link Message}
	* @return decoded {@link Packet}
	* @throws IOException if an i/o error happens while encoding/decoding
	*/
	@:overload @:protected private function decodePacket(connection : T, codec : com.sun.xml.internal.ws.api.pipe.Codec) : com.sun.xml.internal.ws.api.message.Packet;
	
	/**
	* Encodes the {@link Packet} to infoset and writes on the connection.
	*
	* @param connection that carries the web service request
	* @param packet that needs to encoded to infoset
	* @param codec that does the encoding of Packet
	* @throws IOException if an i/o error happens while encoding/decoding
	*/
	@:overload @:protected @:abstract private function encodePacket(connection : T, packet : com.sun.xml.internal.ws.api.message.Packet, codec : com.sun.xml.internal.ws.api.pipe.Codec) : Void;
	
	/**
	* If the request has Accept header, return that value
	*
	* @param connection that carries the web service request
	* @return Accept MIME types
	*/
	@:overload @:protected @:abstract private function getAcceptableMimeTypes(connection : T) : String;
	
	/**
	* {@link TransportBackChannel} used by jax-ws runtime to close the connection
	* while the processing of the request is still continuing. In oneway HTTP case, a
	* response code needs to be sent before invoking the endpoint.
	*
	* @param connection that carries the web service request
	* @return TransportBackChannel instance using the connection
	*/
	@:overload @:protected @:abstract private function getTransportBackChannel(connection : T) : com.sun.xml.internal.ws.api.server.TransportBackChannel;
	
	/**
	* If there are any properties associated with the connection, those will
	* be added to {@link Packet}
	*
	* @param connection that carries the web service request
	* @return {@link PropertySet} for the connection
	*/
	@:overload @:protected @:abstract private function getPropertySet(connection : T) : com.sun.xml.internal.ws.api.PropertySet;
	
	/**
	* Return a {@link WebServiceContextDelegate} using the underlying connection.
	*
	* @param connection that carries the web service request
	* @return non-null WebServiceContextDelegate instance
	*/
	@:overload @:protected @:abstract private function getWebServiceContextDelegate(connection : T) : com.sun.xml.internal.ws.api.server.WebServiceContextDelegate;
	
	/**
	* Reads and decodes infoset from the connection and invokes the endpoints. The
	* response is encoded and written to the connection. The response could be
	* written using a different thread.
	*
	* @param connection that carries the web service request
	* @throws IOException if an i/o error happens while encoding/decoding
	*/
	@:overload @:protected private function handle(connection : T) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$api$server$AbstractServerAsyncTransport$CodecPool') @:internal extern class AbstractServerAsyncTransport_CodecPool extends com.sun.xml.internal.ws.util.Pool<com.sun.xml.internal.ws.api.pipe.Codec>
{
	@:overload @:protected override private function create() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	
}
