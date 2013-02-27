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
extern class XMLHTTPBindingCodec extends com.sun.xml.internal.ws.encoding.MimeCodec
{
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload override public function getMimeType() : String;
	
	@:overload override public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload override private function decode(mpp : com.sun.xml.internal.ws.encoding.MimeMultipartParser, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload override public function copy() : com.sun.xml.internal.ws.encoding.MimeCodec;
	
	@:overload public static function requiresTransformationOfDataSource(isFastInfoset : Bool, useFastInfoset : Bool) : Bool;
	
	@:overload public static function transformDataSource(_in : javax.activation.DataSource, isFastInfoset : Bool, useFastInfoset : Bool, binding : com.sun.xml.internal.ws.api.WSBinding) : javax.activation.DataSource;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$XMLHTTPBindingCodec$AcceptContentType') @:internal extern class XMLHTTPBindingCodec_AcceptContentType implements com.sun.xml.internal.ws.api.pipe.ContentType
{
	@:overload public function set(p : com.sun.xml.internal.ws.api.message.Packet, c : com.sun.xml.internal.ws.api.pipe.ContentType) : XMLHTTPBindingCodec_AcceptContentType;
	
	@:overload public function getContentType() : String;
	
	@:overload public function getSOAPActionHeader() : String;
	
	@:overload public function getAcceptHeader() : String;
	
	
}
