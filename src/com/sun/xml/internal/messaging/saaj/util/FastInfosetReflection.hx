package com.sun.xml.internal.messaging.saaj.util;
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
extern class FastInfosetReflection
{
	@:overload public static function DOMDocumentParser_new() : Dynamic;
	
	@:overload public static function DOMDocumentParser_parse(parser : Dynamic, d : org.w3c.dom.Document, s : java.io.InputStream) : Void;
	
	@:overload public static function DOMDocumentSerializer_new() : Dynamic;
	
	@:overload public static function DOMDocumentSerializer_serialize(serializer : Dynamic, node : org.w3c.dom.Node) : Void;
	
	@:overload public static function DOMDocumentSerializer_setOutputStream(serializer : Dynamic, os : java.io.OutputStream) : Void;
	
	@:overload public static function isFastInfosetSource(source : javax.xml.transform.Source) : Bool;
	
	@:overload public static function getFastInfosetSource_class() : Class<Dynamic>;
	
	@:overload public static function FastInfosetSource_new(is : java.io.InputStream) : javax.xml.transform.Source;
	
	@:overload public static function FastInfosetSource_getInputStream(source : javax.xml.transform.Source) : java.io.InputStream;
	
	@:overload public static function FastInfosetSource_setInputStream(source : javax.xml.transform.Source, is : java.io.InputStream) : Void;
	
	@:overload public static function isFastInfosetResult(result : javax.xml.transform.Result) : Bool;
	
	@:overload public static function FastInfosetResult_new(os : java.io.OutputStream) : javax.xml.transform.Result;
	
	@:overload public static function FastInfosetResult_getOutputStream(result : javax.xml.transform.Result) : java.io.OutputStream;
	
	
}
