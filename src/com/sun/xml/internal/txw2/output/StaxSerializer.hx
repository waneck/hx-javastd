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
extern class StaxSerializer implements com.sun.xml.internal.txw2.output.XmlSerializer
{
	@:overload @:public public function new(writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	@:overload @:public public function new(writer : javax.xml.stream.XMLStreamWriter, indenting : Bool) : Void;
	
	@:overload @:public public function startDocument() : Void;
	
	@:overload @:public public function beginStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload @:public public function writeAttribute(uri : String, localName : String, prefix : String, value : java.lang.StringBuilder) : Void;
	
	@:overload @:public public function writeXmlns(prefix : String, uri : String) : Void;
	
	@:overload @:public public function endStartTag(uri : String, localName : String, prefix : String) : Void;
	
	@:overload @:public public function endTag() : Void;
	
	@:overload @:public public function text(text : java.lang.StringBuilder) : Void;
	
	@:overload @:public public function cdata(text : java.lang.StringBuilder) : Void;
	
	@:overload @:public public function comment(comment : java.lang.StringBuilder) : Void;
	
	@:overload @:public public function endDocument() : Void;
	
	@:overload @:public public function flush() : Void;
	
	
}
