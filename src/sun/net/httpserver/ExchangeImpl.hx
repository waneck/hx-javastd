package sun.net.httpserver;
/*
* Copyright (c) 2005, 2010, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class ExchangeImpl
{
	@:overload @:public public function getRequestHeaders() : com.sun.net.httpserver.Headers;
	
	@:overload @:public public function getResponseHeaders() : com.sun.net.httpserver.Headers;
	
	@:overload @:public public function getRequestURI() : java.net.URI;
	
	@:overload @:public public function getRequestMethod() : String;
	
	@:overload @:public public function getHttpContext() : sun.net.httpserver.HttpContextImpl;
	
	@:overload @:public public function close() : Void;
	
	@:overload @:public public function getRequestBody() : java.io.InputStream;
	
	@:overload @:public public function getResponseCode() : Int;
	
	@:overload @:public public function getResponseBody() : java.io.OutputStream;
	
	@:overload @:public public function sendResponseHeaders(rCode : Int, contentLen : haxe.Int64) : Void;
	
	@:overload @:public public function getRemoteAddress() : java.net.InetSocketAddress;
	
	@:overload @:public public function getLocalAddress() : java.net.InetSocketAddress;
	
	@:overload @:public public function getProtocol() : String;
	
	@:overload @:public public function getSSLSession() : javax.net.ssl.SSLSession;
	
	@:overload @:public public function getAttribute(name : String) : Dynamic;
	
	@:overload @:public public function setAttribute(name : String, value : Dynamic) : Void;
	
	@:overload @:public public function setStreams(i : java.io.InputStream, o : java.io.OutputStream) : Void;
	
	@:overload @:public public function getPrincipal() : com.sun.net.httpserver.HttpPrincipal;
	
	
}
@:internal extern class PlaceholderOutputStream extends java.io.OutputStream
{
	@:overload @:public override public function write(b : Int) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:public override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload @:public override public function flush() : Void;
	
	@:overload @:public override public function close() : Void;
	
	
}
