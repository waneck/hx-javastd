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
extern class SOAPBindingCodec extends com.sun.xml.internal.ws.encoding.MimeCodec implements com.sun.xml.internal.ws.api.pipe.SOAPBindingCodec
{
	@:overload public function getXMLCodec() : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec;
	
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding) : Void;
	
	@:overload public function new(binding : com.sun.xml.internal.ws.api.WSBinding, xmlSoapCodec : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec) : Void;
	
	@:overload override public function getMimeType() : String;
	
	@:overload override public function getStaticContentType(packet : com.sun.xml.internal.ws.api.message.Packet) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, out : java.io.OutputStream) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function encode(packet : com.sun.xml.internal.ws.api.message.Packet, buffer : java.nio.channels.WritableByteChannel) : com.sun.xml.internal.ws.api.pipe.ContentType;
	
	@:overload override public function decode(_in : java.io.InputStream, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload override public function decode(_in : java.nio.channels.ReadableByteChannel, contentType : String, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	@:overload override public function copy() : SOAPBindingCodec;
	
	@:overload override private function decode(mpp : com.sun.xml.internal.ws.encoding.MimeMultipartParser, packet : com.sun.xml.internal.ws.api.message.Packet) : Void;
	
	
}
@:native('com$sun$xml$internal$ws$encoding$SOAPBindingCodec$TriState') privateextern enum SOAPBindingCodec_TriState
{
	UNSET;
	TRUE;
	FALSE;
	
}

@:native('com$sun$xml$internal$ws$encoding$SOAPBindingCodec$AcceptContentType') @:internal extern class SOAPBindingCodec_AcceptContentType implements com.sun.xml.internal.ws.api.pipe.ContentType
{
	@:overload public function set(p : com.sun.xml.internal.ws.api.message.Packet, c : com.sun.xml.internal.ws.api.pipe.ContentType) : SOAPBindingCodec_AcceptContentType;
	
	@:overload public function getContentType() : String;
	
	@:overload public function getSOAPActionHeader() : String;
	
	@:overload public function getAcceptHeader() : String;
	
	
}
