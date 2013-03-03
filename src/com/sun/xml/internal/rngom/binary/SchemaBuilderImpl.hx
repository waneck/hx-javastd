package com.sun.xml.internal.rngom.binary;
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
extern class SchemaBuilderImpl implements com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic> implements com.sun.xml.internal.rngom.ast.builder.ElementAnnotationBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic> implements com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>
{
	@:overload @:public public function expandPattern(_pattern : com.sun.xml.internal.rngom.ast.om.ParsedPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	/**
	*
	* @param eh
	*        Error handler to receive errors while building the schema.
	*/
	@:overload @:public public function new(eh : org.xml.sax.ErrorHandler) : Void;
	
	/**
	*
	* @param eh
	*        Error handler to receive errors while building the schema.
	* @param datatypeLibraryFactory
	*        This is consulted to locate datatype libraries.
	* @param pb
	*        Used to build patterns.
	*/
	@:overload @:public public function new(eh : org.xml.sax.ErrorHandler, datatypeLibraryFactory : org.relaxng.datatype.DatatypeLibraryFactory, pb : com.sun.xml.internal.rngom.binary.SchemaPatternBuilder) : Void;
	
	@:overload @:public public function getNameClassBuilder() : com.sun.xml.internal.rngom.ast.builder.NameClassBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function makeChoice(patterns : java.util.List<Dynamic>, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeInterleave(patterns : java.util.List<Dynamic>, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeGroup(patterns : java.util.List<Dynamic>, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeOneOrMore(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeZeroOrMore(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeOptional(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeList(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeMixed(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeEmpty(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeNotAllowed(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeText(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeErrorPattern() : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeAttribute(nc : com.sun.xml.internal.rngom.ast.om.ParsedNameClass, p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeElement(nc : com.sun.xml.internal.rngom.ast.om.ParsedNameClass, p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeDataPatternBuilder(datatypeLibrary : String, type : String, loc : com.sun.xml.internal.rngom.ast.om.Location) : com.sun.xml.internal.rngom.ast.builder.DataPatternBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function makeValue(datatypeLibrary : String, type : String, value : String, context : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeGrammar(parent : com.sun.xml.internal.rngom.ast.builder.Scope<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.builder.Grammar<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function annotate(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function annotateAfter(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, e : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function commentAfter(p : com.sun.xml.internal.rngom.ast.om.ParsedPattern, comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeExternalRef(current : com.sun.xml.internal.rngom.parse.Parseable, uri : String, ns : String, scope : com.sun.xml.internal.rngom.ast.builder.Scope<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeLocation(systemId : String, lineNumber : Int, columnNumber : Int) : com.sun.xml.internal.rngom.ast.om.Location;
	
	@:overload @:public public function makeAnnotations(comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>, context : com.sun.xml.internal.rngom.parse.Context) : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function makeElementAnnotationBuilder(ns : String, localName : String, prefix : String, loc : com.sun.xml.internal.rngom.ast.om.Location, comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>, context : com.sun.xml.internal.rngom.parse.Context) : com.sun.xml.internal.rngom.ast.builder.ElementAnnotationBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function makeCommentList() : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>;
	
	@:overload @:public public function addComment(value : String, loc : com.sun.xml.internal.rngom.ast.om.Location) : Void;
	
	@:overload @:public public function addAttribute(ns : String, localName : String, prefix : String, value : String, loc : com.sun.xml.internal.rngom.ast.om.Location) : Void;
	
	@:overload @:public public function addElement(ea : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : Void;
	
	@:overload @:public public function addComment(comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : Void;
	
	@:overload @:public public function addLeadingComment(comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : Void;
	
	@:overload @:public public function makeElementAnnotation() : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation;
	
	@:overload @:public public function addText(value : String, loc : com.sun.xml.internal.rngom.ast.om.Location, comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : Void;
	
	@:overload @:public public function usesComments() : Bool;
	
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$OpenIncludes') @:internal extern class SchemaBuilderImpl_OpenIncludes
{
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$DummyDataPatternBuilder') @:internal extern class SchemaBuilderImpl_DummyDataPatternBuilder implements com.sun.xml.internal.rngom.ast.builder.DataPatternBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>
{
	@:overload @:public public function addParam(name : String, value : String, context : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function makePattern(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makePattern(except : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function annotation(ea : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$ValidationContextImpl') @:internal extern class SchemaBuilderImpl_ValidationContextImpl implements org.relaxng.datatype.ValidationContext
{
	@:overload @:public public function resolveNamespacePrefix(prefix : String) : String;
	
	@:overload @:public public function getBaseUri() : String;
	
	@:overload @:public public function isUnparsedEntity(entityName : String) : Bool;
	
	@:overload @:public public function isNotation(notationName : String) : Bool;
	
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$DataPatternBuilderImpl') @:internal extern class SchemaBuilderImpl_DataPatternBuilderImpl implements com.sun.xml.internal.rngom.ast.builder.DataPatternBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>
{
	@:overload @:public public function addParam(name : String, value : String, context : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function makePattern(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makePattern(except : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function annotation(ea : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : Void;
	
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$GrammarImpl') @:internal extern class SchemaBuilderImpl_GrammarImpl implements com.sun.xml.internal.rngom.ast.builder.Grammar<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic> implements com.sun.xml.internal.rngom.ast.builder.Div<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic> implements com.sun.xml.internal.rngom.ast.builder.IncludedGrammar<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>
{
	@:overload @:protected private function new(sb : com.sun.xml.internal.rngom.binary.SchemaBuilderImpl, g : com.sun.xml.internal.rngom.binary.SchemaBuilderImpl.SchemaBuilderImpl_GrammarImpl) : Void;
	
	@:overload @:public public function endGrammar(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function endDiv(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function endIncludedGrammar(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function define(name : String, combine : com.sun.xml.internal.rngom.ast.builder.GrammarSection.GrammarSection_Combine, pattern : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function topLevelAnnotation(ea : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : Void;
	
	@:overload @:public public function topLevelComment(comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : Void;
	
	@:overload @:public public function makeRef(name : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeParentRef(name : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function makeDiv() : com.sun.xml.internal.rngom.ast.builder.Div<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function makeInclude() : com.sun.xml.internal.rngom.ast.builder.Include<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$Override') @:internal extern class SchemaBuilderImpl_Override
{
	
}
@:native('com$sun$xml$internal$rngom$binary$SchemaBuilderImpl$IncludeImpl') @:internal extern class SchemaBuilderImpl_IncludeImpl implements com.sun.xml.internal.rngom.ast.builder.Include<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic> implements com.sun.xml.internal.rngom.ast.builder.Div<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>
{
	@:overload @:public public function define(name : String, combine : com.sun.xml.internal.rngom.ast.builder.GrammarSection.GrammarSection_Combine, pattern : com.sun.xml.internal.rngom.ast.om.ParsedPattern, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function endDiv(loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function topLevelAnnotation(ea : com.sun.xml.internal.rngom.ast.om.ParsedElementAnnotation) : Void;
	
	@:overload @:public public function topLevelComment(comments : com.sun.xml.internal.rngom.ast.builder.CommentList<Dynamic>) : Void;
	
	@:overload @:public public function makeDiv() : com.sun.xml.internal.rngom.ast.builder.Div<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload @:public public function endInclude(current : com.sun.xml.internal.rngom.parse.Parseable, uri : String, ns : String, loc : com.sun.xml.internal.rngom.ast.om.Location, anno : com.sun.xml.internal.rngom.ast.builder.Annotations<Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function makeInclude() : com.sun.xml.internal.rngom.ast.builder.Include<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	
}
