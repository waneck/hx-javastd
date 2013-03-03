package com.sun.xml.internal.ws.streaming;
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
extern class XMLStreamWriterUtil
{
	/**
	* Gives the underlying stream for XMLStreamWriter. It closes any start elements, and returns the stream so
	* that JAXB can write infoset directly to the stream.
	*
	* @param writer XMLStreamWriter for which stream is required
	* @return  underlying OutputStream, null if writer doesn't provide a way to get it
	* @throws XMLStreamException if any of writer operations throw the exception
	*/
	@:overload @:public @:static public static function getOutputStream(writer : javax.xml.stream.XMLStreamWriter) : java.io.OutputStream;
	
	@:overload @:public @:static public static function encodeQName(writer : javax.xml.stream.XMLStreamWriter, qname : javax.xml.namespace.QName, prefixFactory : com.sun.xml.internal.ws.streaming.PrefixFactory) : String;
	
	
}
