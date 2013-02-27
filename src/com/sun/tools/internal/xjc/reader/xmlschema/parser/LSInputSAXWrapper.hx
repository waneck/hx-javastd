package com.sun.tools.internal.xjc.reader.xmlschema.parser;
/*
* Copyright (c) 1997, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class LSInputSAXWrapper implements org.w3c.dom.ls.LSInput
{
	@:overload public function new(inputSource : org.xml.sax.InputSource) : Void;
	
	@:overload public function getCharacterStream() : java.io.Reader;
	
	@:overload public function setCharacterStream(characterStream : java.io.Reader) : Void;
	
	@:overload public function getByteStream() : java.io.InputStream;
	
	@:overload public function setByteStream(byteStream : java.io.InputStream) : Void;
	
	@:overload public function getStringData() : String;
	
	@:overload public function setStringData(stringData : String) : Void;
	
	@:overload public function getSystemId() : String;
	
	@:overload public function setSystemId(systemId : String) : Void;
	
	@:overload public function getPublicId() : String;
	
	@:overload public function setPublicId(publicId : String) : Void;
	
	@:overload public function getBaseURI() : String;
	
	@:overload public function setBaseURI(baseURI : String) : Void;
	
	@:overload public function getEncoding() : String;
	
	@:overload public function setEncoding(encoding : String) : Void;
	
	@:overload public function getCertifiedText() : Bool;
	
	@:overload public function setCertifiedText(certifiedText : Bool) : Void;
	
	
}
