package com.sun.xml.internal.ws.message;
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
extern class ByteArrayAttachment implements com.sun.xml.internal.ws.api.message.Attachment
{
	@:overload @:public public function new(contentId : String, data : java.NativeArray<java.StdTypes.Int8>, start : Int, len : Int, mimeType : String) : Void;
	
	@:overload @:public public function new(contentId : String, data : java.NativeArray<java.StdTypes.Int8>, mimeType : String) : Void;
	
	@:overload @:public public function getContentId() : String;
	
	@:overload @:public public function getContentType() : String;
	
	@:overload @:public public function asByteArray() : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload @:public public function asDataHandler() : javax.activation.DataHandler;
	
	@:overload @:public public function asSource() : javax.xml.transform.Source;
	
	@:overload @:public public function asInputStream() : java.io.InputStream;
	
	@:overload @:public public function writeTo(os : java.io.OutputStream) : Void;
	
	@:overload @:public public function writeTo(saaj : javax.xml.soap.SOAPMessage) : Void;
	
	
}
