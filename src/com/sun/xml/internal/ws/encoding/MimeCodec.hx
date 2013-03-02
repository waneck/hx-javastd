package com.sun.xml.internal.ws.encoding;
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
@:internal extern class MimeCodec implements com.sun.xml.internal.ws.api.pipe.Codec
{
	public static var MULTIPART_RELATED_MIME_TYPE(default, null) : String;
	
	private var rootCodec : com.sun.xml.internal.ws.api.pipe.Codec;
	
	private var version(default, null) : com.sun.xml.internal.ws.api.SOAPVersion;
	
	private var binding(default, null) : com.sun.xml.internal.ws.api.WSBinding;
	
	@:overload private function new(version : com.sun.xml.internal.ws.api.SOAPVersion, binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload public function getMimeType() : String;
	
	@:overload public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	/**
	* Copy constructor.
	*/
	@:overload private function new(that : com.sun.xml.internal.ws.encoding.MimeCodec) : Void;
	
	@:overload public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	/**
	* Parses a {@link Packet} from a {@link MimeMultipartParser}.
	*/
	@:overload @:abstract private function decode(mpp : com.sun.xml.internal.ws.encoding.MimeMultipartParser, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload @:abstract public function copy() : com.sun.xml.internal.ws.encoding.MimeCodec;
	
	@:overload public static function writeln(s : String, out : java.io.OutputStream) : Void;
	
	/**
	* Writes a string as ASCII string.
	*/
	@:overload public static function writeAsAscii(s : String, out : java.io.OutputStream) : Void;
	
	@:overload public static function writeln(out : java.io.OutputStream) : Void;
	
	
}
