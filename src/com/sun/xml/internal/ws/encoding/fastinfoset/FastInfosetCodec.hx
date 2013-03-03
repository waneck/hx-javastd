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
extern class FastInfosetCodec implements com.sun.xml.internal.ws.api.pipe.Codec
{
	@:overload @:public public function getMimeType() : String;
	
	@:overload @:public public function copy() : com.sun.xml.internal.ws.api.pipe.Codec;
	
	@:overload @:public public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:public public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:public public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload @:public public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:public public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, response : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Creates a new {@link FastInfosetCodec} instance.
	*
	* @return a new {@link FastInfosetCodec} instance.
	*/
	@:overload @:public @:static public static function create() : com.sun.xml.internal.ws.encoding.fastinfoset.FastInfosetCodec;
	
	/**
	* Creates a new {@link FastInfosetCodec} instance.
	*
	* @param retainState if true the Codec should retain the state of
	*        vocabulary tables for multiple encode/decode invocations.
	* @return a new {@link FastInfosetCodec} instance.
	*/
	@:overload @:public @:static public static function create(retainState : Bool) : com.sun.xml.internal.ws.encoding.fastinfoset.FastInfosetCodec;
	
	
}
