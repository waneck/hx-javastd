package com.sun.tools.internal.xjc;
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
extern class ModelLoader
{
	/**
	* A convenience method to load schemas into a {@link Model}.
	*/
	@:native('load') @:overload @:public @:static public static function _load(opt : com.sun.tools.internal.xjc.Options, codeModel : com.sun.codemodel.internal.JCodeModel, er : com.sun.tools.internal.xjc.ErrorReceiver) : com.sun.tools.internal.xjc.model.Model;
	
	@:overload @:public public function new(_opt : com.sun.tools.internal.xjc.Options, _codeModel : com.sun.codemodel.internal.JCodeModel, er : com.sun.tools.internal.xjc.ErrorReceiver) : Void;
	
	/**
	* Builds DOMForest and performs the internalization.
	*
	* @throws SAXException
	*      when a fatal error happens
	*/
	@:overload @:public public function buildDOMForest(logic : com.sun.tools.internal.xjc.reader.internalizer.InternalizationLogic) : com.sun.tools.internal.xjc.reader.internalizer.DOMForest;
	
	/**
	* Parses a set of XML Schema files into an annotated grammar.
	*/
	@:overload @:public public function loadXMLSchema() : com.sun.xml.internal.xsom.XSSchemaSet;
	
	/**
	* Annotates the obtained schema set.
	*
	* @return
	*      null if an error happens. In that case, the error messages
	*      will be properly reported to the controller by this method.
	*/
	@:overload @:public public function annotateXMLSchema(xs : com.sun.xml.internal.xsom.XSSchemaSet) : com.sun.tools.internal.xjc.model.Model;
	
	@:overload @:public public function createXSOMParser(parser : com.sun.xml.internal.xsom.parser.XMLParser) : com.sun.xml.internal.xsom.parser.XSOMParser;
	
	@:overload @:public public function createXSOMParser(forest : com.sun.tools.internal.xjc.reader.internalizer.DOMForest) : com.sun.xml.internal.xsom.parser.XSOMParser;
	
	/**
	* Parses a {@link DOMForest} into a {@link XSSchemaSet}.
	*
	* @return
	*      null if the parsing failed.
	*/
	@:overload @:public public function createXSOM(forest : com.sun.tools.internal.xjc.reader.internalizer.DOMForest, scdBasedBindingSet : com.sun.tools.internal.xjc.reader.internalizer.SCDBasedBindingSet) : com.sun.xml.internal.xsom.XSSchemaSet;
	
	
}
/**
* {@link XMLParser} implementation that adds additional processors into the chain.
*
* <p>
* This parser will parse a DOM forest as:
* DOMForestParser -->
*   ExtensionBindingChecker -->
*     ProhibitedFeatureFilter -->
*       XSOMParser
*/
@:native('com$sun$tools$internal$xjc$ModelLoader$XMLSchemaParser') @:internal extern class ModelLoader_XMLSchemaParser implements com.sun.xml.internal.xsom.parser.XMLParser
{
	@:overload @:public public function parse(source : org.xml.sax.InputSource, handler : org.xml.sax.ContentHandler, errorHandler : org.xml.sax.ErrorHandler, entityResolver : org.xml.sax.EntityResolver) : Void;
	
	
}
@:native('com$sun$tools$internal$xjc$ModelLoader$SpeculationFailure') @:internal extern class ModelLoader_SpeculationFailure extends java.lang.Error
{
	
}
@:native('com$sun$tools$internal$xjc$ModelLoader$SpeculationChecker') @:internal extern class ModelLoader_SpeculationChecker extends org.xml.sax.helpers.XMLFilterImpl
{
	@:overload @:public override public function startElement(uri : String, localName : String, qName : String, attributes : org.xml.sax.Attributes) : Void;
	
	
}
