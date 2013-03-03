package com.sun.xml.internal.ws.api.pipe;
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
extern class Codecs
{
	/**
	* This creates a full {@link Codec} for SOAP binding using the primary
	* XML codec argument. The codec argument is used to encode/decode SOAP envelopes
	* while the returned codec is responsible for encoding/decoding the whole
	* message.
	*
	* <p>
	* Creates codecs can be set during the {@link Tube}line assembly process.
	*
	* @see ServerTubeAssemblerContext#setCodec(Codec)
	* @see ClientTubeAssemblerContext#setCodec(Codec)
	*
	* @param binding binding of the webservice
	* @param xmlEnvelopeCodec SOAP envelope codec
	* @return non null codec to parse entire SOAP message(including MIME parts)
	*/
	@:overload @:public @:static public static function createSOAPBindingCodec(binding : com.sun.xml.internal.ws.api.WSBinding, xmlEnvelopeCodec : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec) : com.sun.xml.internal.ws.api.pipe.SOAPBindingCodec;
	
	/**
	* Creates a default {@link Codec} that can be used to used to
	* decode XML infoset in SOAP envelope(primary part in MIME message). New codecs
	* can be written using this codec as delegate.
	*
	* @param version SOAP version of the binding
	* @return non null default xml codec
	*/
	@:overload @:public @:static public static function createSOAPEnvelopeXmlCodec(version : com.sun.xml.internal.ws.api.SOAPVersion) : com.sun.xml.internal.ws.api.pipe.StreamSOAPCodec;
	
	
}
