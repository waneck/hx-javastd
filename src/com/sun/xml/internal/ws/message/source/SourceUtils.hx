package com.sun.xml.internal.ws.message.source;
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
@:internal extern class SourceUtils
{
	@:overload public function new(src : javax.xml.transform.Source) : Void;
	
	@:overload public function isDOMSource() : Bool;
	
	@:overload public function isStreamSource() : Bool;
	
	@:overload public function isSaxSource() : Bool;
	
	/**
	* This would peek into the Source (DOMSource and SAXSource) for the localName and NamespaceURI
	* of the top-level element.
	* @param src
	* @return QName of the payload
	*/
	@:overload public function sniff(src : javax.xml.transform.Source) : javax.xml.namespace.QName;
	
	@:overload public function sniff(src : javax.xml.transform.Source, sniffer : com.sun.xml.internal.ws.message.RootElementSniffer) : javax.xml.namespace.QName;
	
	@:overload public static function serializeSource(src : javax.xml.transform.Source, writer : javax.xml.stream.XMLStreamWriter) : Void;
	
	
}
