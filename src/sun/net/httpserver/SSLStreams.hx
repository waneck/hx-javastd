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
/**
* given a non-blocking SocketChannel, it produces
* (blocking) streams which encrypt/decrypt the SSL content
* and handle the SSL handshaking automatically.
*/
@:internal extern class SSLStreams
{
	/**
	* send the data in the given ByteBuffer. If a handshake is needed
	* then this is handled within this method. When this call returns,
	* all of the given user data has been sent and any handshake has been
	* completed. Caller should check if engine has been closed.
	*/
	@:overload public function sendData(src : java.nio.ByteBuffer) : sun.net.httpserver.SSLStreams.SSLStreams_WrapperResult;
	
	/**
	* read data thru the engine into the given ByteBuffer. If the
	* given buffer was not large enough, a new one is allocated
	* and returned. This call handles handshaking automatically.
	* Caller should check if engine has been closed.
	*/
	@:overload public function recvData(dst : java.nio.ByteBuffer) : sun.net.httpserver.SSLStreams.SSLStreams_WrapperResult;
	
	
}
@:native('sun$net$httpserver$SSLStreams$Parameters') @:internal extern class SSLStreams_Parameters extends com.sun.net.httpserver.HttpsParameters
{
	@:overload override public function getClientAddress() : java.net.InetSocketAddress;
	
	@:overload override public function getHttpsConfigurator() : com.sun.net.httpserver.HttpsConfigurator;
	
	@:overload override public function setSSLParameters(p : javax.net.ssl.SSLParameters) : Void;
	
	
}
@:native('sun$net$httpserver$SSLStreams$WrapperResult') @:internal extern class SSLStreams_WrapperResult
{
	
}
@:native('sun$net$httpserver$SSLStreams$BufType') extern enum SSLStreams_BufType
{
	PACKET;
	APPLICATION;
	
}

/**
* This is a thin wrapper over SSLEngine and the SocketChannel,
* which guarantees the ordering of wraps/unwraps with respect to the underlying
* channel read/writes. It handles the UNDER/OVERFLOW status codes
* It does not handle the handshaking status codes, or the CLOSED status code
* though once the engine is closed, any attempt to read/write to it
* will get an exception.  The overall result is returned.
* It functions synchronously/blocking
*/
@:native('sun$net$httpserver$SSLStreams$EngineWrapper') @:internal extern class SSLStreams_EngineWrapper
{
	
}
/**
* represents an SSL input stream. Multiple https requests can
* be sent over one stream. closing this stream causes an SSL close
* input.
*/
@:native('sun$net$httpserver$SSLStreams$InputStream') @:internal extern class SSLStreams_InputStream extends java.io.InputStream
{
	@:overload override public function read(buf : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Int;
	
	@:overload override public function available() : Int;
	
	@:overload override public function markSupported() : Bool;
	
	@:overload override public function reset() : Void;
	
	@:overload override public function skip(s : haxe.Int64) : haxe.Int64;
	
	/**
	* close the SSL connection. All data must have been consumed
	* before this is called. Otherwise an exception will be thrown.
	* [Note. May need to revisit this. not quite the normal close() symantics
	*/
	@:overload override public function close() : Void;
	
	@:overload override public function read(buf : java.NativeArray<java.StdTypes.Int8>) : Int;
	
	@:overload override public function read() : Int;
	
	
}
/**
* represents an SSL output stream. plain text data written to this stream
* is encrypted by the stream. Multiple HTTPS responses can be sent on
* one stream. closing this stream initiates an SSL closure
*/
@:native('sun$net$httpserver$SSLStreams$OutputStream') @:internal extern class SSLStreams_OutputStream extends java.io.OutputStream
{
	@:overload override public function write(b : Int) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload override public function write(b : java.NativeArray<java.StdTypes.Int8>, off : Int, len : Int) : Void;
	
	@:overload override public function flush() : Void;
	
	@:overload override public function close() : Void;
	
	
}
