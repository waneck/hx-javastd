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
extern class DSchemaBuilderImpl implements com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<com.sun.xml.internal.rngom.nc.NameClass, com.sun.xml.internal.rngom.digested.DPattern, com.sun.xml.internal.rngom.digested.ElementWrapper, com.sun.xml.internal.rngom.ast.util.LocatorImpl, com.sun.xml.internal.rngom.digested.Annotation, com.sun.xml.internal.rngom.digested.CommentListImpl>
{
	@:overload public function new() : Void;
	
	@:overload public function getNameClassBuilder() : com.sun.xml.internal.rngom.ast.builder.NameClassBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function makeChoice(patterns : java.util.List<com.sun.xml.internal.rngom.digested.DPattern>, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeInterleave(patterns : java.util.List<com.sun.xml.internal.rngom.digested.DPattern>, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeGroup(patterns : java.util.List<com.sun.xml.internal.rngom.digested.DPattern>, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeOneOrMore(p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeZeroOrMore(p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeOptional(p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeList(p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeMixed(p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeEmpty(loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeNotAllowed(loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeText(loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeAttribute(nc : com.sun.xml.internal.rngom.nc.NameClass, p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeElement(nc : com.sun.xml.internal.rngom.nc.NameClass, p : com.sun.xml.internal.rngom.digested.DPattern, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeDataPatternBuilder(datatypeLibrary : String, type : String, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl) : com.sun.xml.internal.rngom.ast.builder.DataPatternBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function makeValue(datatypeLibrary : String, type : String, value : String, c : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeGrammar(parent : com.sun.xml.internal.rngom.ast.builder.Scope<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.builder.Grammar<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function annotate(p : com.sun.xml.internal.rngom.digested.DPattern, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function annotateAfter(p : com.sun.xml.internal.rngom.digested.DPattern, e : com.sun.xml.internal.rngom.digested.ElementWrapper) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function commentAfter(p : com.sun.xml.internal.rngom.digested.DPattern, comments : com.sun.xml.internal.rngom.digested.CommentListImpl) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeExternalRef(current : com.sun.xml.internal.rngom.parse.Parseable, uri : String, ns : String, scope : com.sun.xml.internal.rngom.ast.builder.Scope<com.sun.xml.internal.rngom.digested.DPattern, com.sun.xml.internal.rngom.digested.ElementWrapper, com.sun.xml.internal.rngom.ast.util.LocatorImpl, com.sun.xml.internal.rngom.digested.Annotation, com.sun.xml.internal.rngom.digested.CommentListImpl>, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, anno : com.sun.xml.internal.rngom.digested.Annotation) : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function makeLocation(systemId : String, lineNumber : Int, columnNumber : Int) : com.sun.xml.internal.rngom.ast.util.LocatorImpl;
	
	@:overload public function makeAnnotations(comments : com.sun.xml.internal.rngom.digested.CommentListImpl, context : com.sun.xml.internal.rngom.parse.Context) : com.sun.xml.internal.rngom.digested.Annotation;
	
	@:overload public function makeElementAnnotationBuilder(ns : String, localName : String, prefix : String, loc : com.sun.xml.internal.rngom.ast.util.LocatorImpl, comments : com.sun.xml.internal.rngom.digested.CommentListImpl, context : com.sun.xml.internal.rngom.parse.Context) : com.sun.xml.internal.rngom.ast.builder.ElementAnnotationBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function makeCommentList() : com.sun.xml.internal.rngom.digested.CommentListImpl;
	
	@:overload public function makeErrorPattern() : com.sun.xml.internal.rngom.digested.DPattern;
	
	@:overload public function usesComments() : Bool;
	
	@:overload public function expandPattern(p : com.sun.xml.internal.rngom.digested.DPattern) : com.sun.xml.internal.rngom.digested.DPattern;
	
	
}
