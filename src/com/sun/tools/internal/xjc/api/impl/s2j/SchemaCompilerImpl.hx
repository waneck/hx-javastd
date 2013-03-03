package com.sun.tools.internal.xjc.api.impl.s2j;
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
extern class SchemaCompilerImpl extends com.sun.tools.internal.xjc.ErrorReceiver implements com.sun.tools.internal.xjc.api.SchemaCompiler
{
	@:protected @:final private var opts(default, null) : com.sun.tools.internal.xjc.Options;
	
	@:protected private var forest : com.sun.tools.internal.xjc.reader.internalizer.DOMForest;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function getOptions() : com.sun.tools.internal.xjc.Options;
	
	@:overload @:public public function getParserHandler(systemId : String) : org.xml.sax.ContentHandler;
	
	@:overload @:public public function parseSchema(systemId : String, element : org.w3c.dom.Element) : Void;
	
	@:overload @:public public function parseSchema(source : org.xml.sax.InputSource) : Void;
	
	@:overload @:public public function setTargetVersion(version : com.sun.tools.internal.xjc.api.SpecVersion) : Void;
	
	@:overload @:public public function parseSchema(systemId : String, reader : javax.xml.stream.XMLStreamReader) : Void;
	
	@:overload @:public public function setEntityResolver(entityResolver : org.xml.sax.EntityResolver) : Void;
	
	@:overload @:public public function setDefaultPackageName(packageName : String) : Void;
	
	@:overload @:public public function forcePackageName(packageName : String) : Void;
	
	@:overload @:public public function setClassNameAllocator(allocator : com.sun.tools.internal.xjc.api.ClassNameAllocator) : Void;
	
	@:overload @:public public function resetSchema() : Void;
	
	@:overload @:public public function bind() : com.sun.tools.internal.xjc.api.impl.s2j.JAXBModelImpl;
	
	@:overload @:public public function setErrorListener(errorListener : com.sun.xml.internal.bind.api.ErrorListener) : Void;
	
	@:overload @:public override public function info(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function warning(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function error(exception : org.xml.sax.SAXParseException) : Void;
	
	@:overload @:public override public function fatalError(exception : org.xml.sax.SAXParseException) : Void;
	
	
}
