package com.sun.xml.internal.txw2.output;
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
extern class StreamSerializer implements com.sun.xml.internal.txw2.output.XmlSerializer
{
	@:overload public function new(out : java.io.OutputStream) : Void;
	
	@:overload public function new(out : java.io.OutputStream, encoding : String) : Void;
	
	@:overload public function new(out : java.io.Writer) : Void;
	
	@:overload public function new(streamResult : javax.xml.transform.stream.StreamResult) : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function beginStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function writeAttribute(uri : String, localName : String, prefix : String, value : java.lang.StringBuilder) : Void;
	
	@:overload public function writeXmlns(prefix : String, uri : String) : Void;
	
	@:overload public function endStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload public function endTag() : Void;
	
	@:overload public function text(text : java.lang.StringBuilder) : Void;
	
	@:overload public function cdata(text : java.lang.StringBuilder) : Void;
	
	@:overload public function comment(comment : java.lang.StringBuilder) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function flush() : Void;
	
	
}
