package com.sun.xml.internal.bind.v2.runtime.unmarshaller;
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
@:internal extern class ValidatingUnmarshaller implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor implements com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor
{
	/**
	* Creates a new instance of ValidatingUnmarshaller.
	*/
	@:overload public function new(schema : javax.xml.validation.Schema, next : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor) : Void;
	
	@:overload public function startDocument(locator : com.sun.xml.internal.bind.v2.runtime.unmarshaller.LocatorEx, nsContext : javax.xml.namespace.NamespaceContext) : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload public function startElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function endElement(tagName : com.sun.xml.internal.bind.v2.runtime.unmarshaller.TagName) : Void;
	
	@:overload public function startPrefixMapping(prefix : String, nsUri : String) : Void;
	
	@:overload public function endPrefixMapping(prefix : String) : Void;
	
	@:overload public function text(pcdata : java.lang.CharSequence) : Void;
	
	@:overload public function getContext() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.UnmarshallingContext;
	
	@:overload public function getPredictor() : com.sun.xml.internal.bind.v2.runtime.unmarshaller.XmlVisitor.XmlVisitor_TextPredictor;
	
	@:overload public function expectText() : Bool;
	
	
}
