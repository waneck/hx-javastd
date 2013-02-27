package com.sun.xml.internal.ws.api.message;
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
extern interface Attachment
{
	/**
	* Content ID of the attachment. Uniquely identifies an attachment.
	*
	* @return
	*      The content ID like "foo-bar-zot@abc.com", without
	*      surrounding '&lt;' and '>' used as the transfer syntax.
	*/
	@:overload public function getContentId() : String;
	
	/**
	* Gets the MIME content-type of this attachment.
	*/
	@:overload public function getContentType() : String;
	
	/**
	* Gets the attachment as an exact-length byte array.
	*/
	@:overload public function asByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	/**
	* Gets the attachment as a {@link DataHandler}.
	*/
	@:overload public function asDataHandler() : javax.activation.DataHandler;
	
	/**
	* Gets the attachment as a {@link Source}.
	* Note that there's no guarantee that the attachment is actually an XML.
	*/
	@:overload public function asSource() : javax.xml.transform.Source;
	
	/**
	* Obtains this attachment as an {@link InputStream}.
	*/
	@:overload public function asInputStream() : java.io.InputStream;
	
	/**
	* Writes the contents of the attachment into the given stream.
	*/
	@:overload public function writeTo(os : java.io.OutputStream) : Void;
	
	/**
	* Writes this attachment to the given {@link SOAPMessage}.
	*/
	@:overload public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	
}
