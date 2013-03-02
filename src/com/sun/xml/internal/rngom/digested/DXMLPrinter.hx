package com.sun.xml.internal.rngom.digested;
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
/*
* Copyright (C) 2004-2011
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in
* all copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
* THE SOFTWARE.
*/
extern class DXMLPrinter
{
	/**
	* Printer of RELAX NG digested model to XML using StAX {@link XMLStreamWriter}.
	*
	* @author <A href="mailto:demakov@ispras.ru">Alexey Demakov</A>
	*/
	private var out : javax.xml.stream.XMLStreamWriter;
	
	private var indentStep : String;
	
	private var newLine : String;
	
	private var indent : Int;
	
	private var afterEnd : Bool;
	
	private var visitor : com.sun.xml.internal.rngom.digested.DXMLPrinter.DXMLPrinter_DXMLPrinterVisitor;
	
	private var ncVisitor : com.sun.xml.internal.rngom.digested.DXMLPrinter.DXMLPrinter_NameClassXMLPrinterVisitor;
	
	private var domPrinter : com.sun.xml.internal.rngom.digested.DOMPrinter;
	
	/**
	* @param out Output stream.
	*/
	@:overload public function new(out : javax.xml.stream.XMLStreamWriter) : Void;
	
	/**
	* Prints grammar enclosed by start/end document.
	*
	* @param grammar
	* @throws XMLStreamException
	*/
	@:overload public function printDocument(grammar : com.sun.xml.internal.rngom.digested.DGrammarPattern) : Void;
	
	/**
	* Prints XML fragment for the given pattern.
	*
	* @throws XMLStreamException
	*/
	@:overload public function print(pattern : com.sun.xml.internal.rngom.digested.DPattern) : Void;
	
	/**
	* Prints XML fragment for the given name class.
	*
	* @throws XMLStreamException
	*/
	@:overload public function print(nc : com.sun.xml.internal.rngom.nc.NameClass) : Void;
	
	@:overload public function print(node : org.w3c.dom.Node) : Void;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$digested$DXMLPrinter$XMLWriterException') extern class DXMLPrinter_XMLWriterException extends java.lang.RuntimeException
{
	@:overload private function new(cause : java.lang.Throwable) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$digested$DXMLPrinter$XMLWriter') extern class DXMLPrinter_XMLWriter
{
	@:overload private function newLine() : Void;
	
	@:overload private function indent() : Void;
	
	@:overload public function startDocument() : Void;
	
	@:overload public function endDocument() : Void;
	
	@:overload @:final public function start(element : String) : Void;
	
	@:overload public function end() : Void;
	
	@:overload public function attr(prefix : String, ns : String, name : String, value : String) : Void;
	
	@:overload public function attr(name : String, value : String) : Void;
	
	@:overload public function ns(prefix : String, uri : String) : Void;
	
	@:overload public function body(text : String) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$digested$DXMLPrinter$DXMLPrinterVisitor') extern class DXMLPrinter_DXMLPrinterVisitor extends com.sun.xml.internal.rngom.digested.DXMLPrinter.DXMLPrinter_XMLWriter implements com.sun.xml.internal.rngom.digested.DPatternVisitor<java.lang.Void>
{
	@:overload private function on(p : com.sun.xml.internal.rngom.digested.DPattern) : Void;
	
	@:overload private function unwrapGroup(p : com.sun.xml.internal.rngom.digested.DPattern) : Void;
	
	@:overload private function unwrapChoice(p : com.sun.xml.internal.rngom.digested.DPattern) : Void;
	
	@:overload private function on(nc : com.sun.xml.internal.rngom.nc.NameClass) : Void;
	
	@:overload private function on(ann : com.sun.xml.internal.rngom.digested.DAnnotation) : Void;
	
	@:overload public function onAttribute(p : com.sun.xml.internal.rngom.digested.DAttributePattern) : java.lang.Void;
	
	@:overload public function onChoice(p : com.sun.xml.internal.rngom.digested.DChoicePattern) : java.lang.Void;
	
	@:overload public function onData(p : com.sun.xml.internal.rngom.digested.DDataPattern) : java.lang.Void;
	
	@:overload public function onElement(p : com.sun.xml.internal.rngom.digested.DElementPattern) : java.lang.Void;
	
	@:overload public function onEmpty(p : com.sun.xml.internal.rngom.digested.DEmptyPattern) : java.lang.Void;
	
	@:overload public function onGrammar(p : com.sun.xml.internal.rngom.digested.DGrammarPattern) : java.lang.Void;
	
	@:overload public function onGroup(p : com.sun.xml.internal.rngom.digested.DGroupPattern) : java.lang.Void;
	
	@:overload public function onInterleave(p : com.sun.xml.internal.rngom.digested.DInterleavePattern) : java.lang.Void;
	
	@:overload public function onList(p : com.sun.xml.internal.rngom.digested.DListPattern) : java.lang.Void;
	
	@:overload public function onMixed(p : com.sun.xml.internal.rngom.digested.DMixedPattern) : java.lang.Void;
	
	@:overload public function onNotAllowed(p : com.sun.xml.internal.rngom.digested.DNotAllowedPattern) : java.lang.Void;
	
	@:overload public function onOneOrMore(p : com.sun.xml.internal.rngom.digested.DOneOrMorePattern) : java.lang.Void;
	
	@:overload public function onOptional(p : com.sun.xml.internal.rngom.digested.DOptionalPattern) : java.lang.Void;
	
	@:overload public function onRef(p : com.sun.xml.internal.rngom.digested.DRefPattern) : java.lang.Void;
	
	@:overload public function onText(p : com.sun.xml.internal.rngom.digested.DTextPattern) : java.lang.Void;
	
	@:overload public function onValue(p : com.sun.xml.internal.rngom.digested.DValuePattern) : java.lang.Void;
	
	@:overload public function onZeroOrMore(p : com.sun.xml.internal.rngom.digested.DZeroOrMorePattern) : java.lang.Void;
	
	
}
@:native('com$sun$xml$internal$rngom$digested$DXMLPrinter$NameClassXMLPrinterVisitor') extern class DXMLPrinter_NameClassXMLPrinterVisitor extends com.sun.xml.internal.rngom.digested.DXMLPrinter.DXMLPrinter_XMLWriter implements com.sun.xml.internal.rngom.nc.NameClassVisitor<java.lang.Void>
{
	@:overload public function visitChoice(nc1 : com.sun.xml.internal.rngom.nc.NameClass, nc2 : com.sun.xml.internal.rngom.nc.NameClass) : java.lang.Void;
	
	@:overload public function visitNsName(ns : String) : java.lang.Void;
	
	@:overload public function visitNsNameExcept(ns : String, nc : com.sun.xml.internal.rngom.nc.NameClass) : java.lang.Void;
	
	@:overload public function visitAnyName() : java.lang.Void;
	
	@:overload public function visitAnyNameExcept(nc : com.sun.xml.internal.rngom.nc.NameClass) : java.lang.Void;
	
	@:overload public function visitName(name : javax.xml.namespace.QName) : java.lang.Void;
	
	@:overload public function visitNull() : java.lang.Void;
	
	
}
