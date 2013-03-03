package com.sun.xml.internal.xsom.util;
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
extern class DomAnnotationParserFactory implements com.sun.xml.internal.xsom.parser.AnnotationParserFactory
{
	/**
	* {@link AnnotationParserFactory} that parses annotations into a W3C DOM.
	*
	* <p>
	* If you use this parser factory, you'll get {@link Element} that represents
	* &lt;xs:annotation> from {@link XSAnnotation#getAnnotation()}.
	*
	* <p>
	* When multiple &lt;xs:annotation>s are found for the given schema component,
	* you'll see all &lt;xs:appinfo>s and &lt;xs:documentation>s combined under
	* one &lt;xs:annotation> element.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:overload @:public public function create() : com.sun.xml.internal.xsom.parser.AnnotationParser;
	
	
}
@:native('com$sun$xml$internal$xsom$util$DomAnnotationParserFactory$AnnotationParserImpl') @:internal extern class DomAnnotationParserFactory_AnnotationParserImpl extends com.sun.xml.internal.xsom.parser.AnnotationParser
{
	@:overload @:public override public function getContentHandler(context : com.sun.xml.internal.xsom.parser.AnnotationContext, parentElementName : String, errorHandler : org.xml.sax.ErrorHandler, entityResolver : org.xml.sax.EntityResolver) : org.xml.sax.ContentHandler;
	
	@:overload @:public override public function getResult(existing : Dynamic) : Dynamic;
	
	
}
