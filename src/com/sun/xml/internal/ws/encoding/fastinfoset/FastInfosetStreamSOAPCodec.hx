package com.sun.xml.internal.ws.encoding.fastinfoset;
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
extern class FastInfosetStreamSOAPCodec implements com.sun.xml.internal.ws.api.pipe.Codec
{
	private var _defaultContentType(default, null) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function getMimeType() : String;
	
	@:overload public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function decode(_in : java.io.InputStream, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:abstract private function createHeader(reader : javax.xml.stream.XMLStreamReader, mark : com.sun.xml.internal.stream.buffer.XMLStreamBuffer) : com.sun.xml.internal.ws.message.stream.StreamHeader;
	
	@:overload @:abstract private function getContentType(soapAction : String) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	/**
	* Creates a new {@link FastInfosetStreamSOAPCodec} instance.
	*
	* @param version the SOAP version of the codec.
	* @return a new {@link FastInfosetStreamSOAPCodec} instance.
	*/
	@:overload public static function create(soapCodec : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec, version : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.encoding.fastinfoset.FastInfosetStreamSOAPCodec;
	
	/**
	* Creates a new {@link FastInfosetStreamSOAPCodec} instance.
	*
	* @param version the SOAP version of the codec.
	* @param retainState if true the Codec should retain the state of
	*        vocabulary tables for multiple encode/decode invocations.
	* @return a new {@link FastInfosetStreamSOAPCodec} instance.
	*/
	@:overload public static function create(soapCodec : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec, version : com.sun.xml.internal.ws.api.SOAPVersion, retainState : Bool) : com.sun.xml.internal.ws.encoding.fastinfoset.FastInfosetStreamSOAPCodec;
	
	/**
	* Creates a copy of this {@link Codec}.
	*
	* <p>
	* Since {@link Codec} instance is not re-entrant, the caller
	* who needs to encode two {@link Message}s simultaneously will
	* want to have two {@link Codec} instances. That's what this
	* method produces.
	*
	* <h3>Implentation Note</h3>
	* <p>
	* Note that this method might be invoked by one thread while
	* another thread is executing one of the {@link #encode} methods.
	* <!-- or otherwise you'd always have to maintain one idle copy -->
	* <!-- just so that you can make copies from -->
	* This should be OK because you'll be only copying things that
	* are thread-safe, and creating new ones for thread-unsafe resources,
	* but please let us know if this contract is difficult.
	*
	* @return
	*      always non-null valid {@link Codec} that performs
	*      the encoding work in the same way --- that is, if you
	*      copy an FI codec, you'll get another FI codec.
	*
	*      <p>
	*      Once copied, two {@link Codec}s may be invoked from
	*      two threads concurrently; therefore, they must not share
	*      any state that requires isolation (such as temporary buffer.)
	*
	*      <p>
	*      If the {@link Codec} implementation is already
	*      re-entrant and multi-thread safe to begin with,
	*      then this method may simply return <tt>this</tt>.
	*/
	@:overload public function copy() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	
}
