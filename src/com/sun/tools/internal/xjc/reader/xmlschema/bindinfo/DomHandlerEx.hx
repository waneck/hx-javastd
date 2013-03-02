package com.sun.tools.internal.xjc.reader.xmlschema.bindinfo;
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
@:internal extern class DomHandlerEx implements javax.xml.bind.annotation.DomHandler<com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_DomAndLocation, com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_ResultImpl>
{
	@:overload public function createUnmarshaller(errorHandler : javax.xml.bind.ValidationEventHandler) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_ResultImpl;
	
	@:overload public function getElement(r : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_ResultImpl) : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_DomAndLocation;
	
	@:overload public function marshal(domAndLocation : com.sun.tools.internal.xjc.reader.xmlschema.bindinfo.DomHandlerEx.DomHandlerEx_DomAndLocation, errorHandler : javax.xml.bind.ValidationEventHandler) : javax.xml.transform.Source;
	
	
}
/**
* {@link DomHandler} that produces a W3C DOM but with a location information.
*
* @author Kohsuke Kawaguchi
*/
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$DomHandlerEx$DomAndLocation') extern class DomHandlerEx_DomAndLocation
{
	public var element(default, null) : org.w3c.dom.Element;
	
	public var loc(default, null) : org.xml.sax.Locator;
	
	@:overload public function new(element : org.w3c.dom.Element, loc : org.xml.sax.Locator) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$reader$xmlschema$bindinfo$DomHandlerEx$ResultImpl') extern class DomHandlerEx_ResultImpl extends javax.xml.transform.sax.SAXResult
{
	
}
