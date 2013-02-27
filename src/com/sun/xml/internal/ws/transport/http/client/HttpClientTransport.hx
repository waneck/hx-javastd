package com.sun.xml.internal.ws.transport.http.client;
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
@:internal extern class HttpClientTransport
{
	@:overload public function new(packet : com.sun.xml.internal.ws.api.message.Packet, reqHeaders : java.util.Map<String, java.util.List<String>>) : Void;
	
	@:overload public function getHeaders() : java.util.Map<String, java.util.List<String>>;
	
	@:overload private function readResponse() : java.io.InputStream;
	
	@:overload private function readResponseCodeAndMessage() : Void;
	
	
}
@:native('com$sun$xml$internal$ws$transport$http$client$HttpClientTransport$HttpClientVerifier') @:internal extern class HttpClientTransport_HttpClientVerifier implements javax.net.ssl.HostnameVerifier
{
	@:overload public function verify(s : String, sslSession : javax.net.ssl.SSLSession) : Bool;
	
	
}
/**
* HttpURLConnection.getOuputStream() returns sun.net.www.http.ChunkedOuputStream in chunked
* streaming mode. If you call ChunkedOuputStream.write(byte[20MB], int, int), then the whole data
* is kept in memory. This wraps the ChunkedOuputStream so that it writes only small
* chunks.
*/
@:native('com$sun$xml$internal$ws$transport$http$client$HttpClientTransport$WSChunkedOuputStream') @:internal extern class HttpClientTransport_WSChunkedOuputStream extends java.io.FilterOutputStream
{
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	
}
