package com.sun.xml.internal.rngom.ast.builder;
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
extern interface SchemaBuilder<N, P, E, L, A, CL>
{
	/**
	* Returns the {@link NameClassBuilder}, which is used to build name
	* classes for this {@link SchemaBuilder}. The
	* {@link com.sun.xml.internal.rngom.nc.NameClass}es that are built will then be
	* fed into this {@link SchemaBuilder}to further build RELAX NG patterns.
	*
	* @return always return a non-null valid object. This method can (and
	*         probably should) always return the same object.
	*/
	@:overload public function getNameClassBuilder() : com.sun.xml.internal.rngom.ast.builder.NameClassBuilder<N, E, L, A, CL>;
	
	@:overload public function makeChoice(patterns : java.util.List<P>, loc : L, anno : A) : P;
	
	@:overload public function makeInterleave(patterns : java.util.List<P>, loc : L, anno : A) : P;
	
	@:overload public function makeGroup(patterns : java.util.List<P>, loc : L, anno : A) : P;
	
	@:overload public function makeOneOrMore(p : P, loc : L, anno : A) : P;
	
	@:overload public function makeZeroOrMore(p : P, loc : L, anno : A) : P;
	
	@:overload public function makeOptional(p : P, loc : L, anno : A) : P;
	
	@:overload public function makeList(p : P, loc : L, anno : A) : P;
	
	@:overload public function makeMixed(p : P, loc : L, anno : A) : P;
	
	@:overload public function makeEmpty(loc : L, anno : A) : P;
	
	@:overload public function makeNotAllowed(loc : L, anno : A) : P;
	
	@:overload public function makeText(loc : L, anno : A) : P;
	
	@:overload public function makeAttribute(nc : N, p : P, loc : L, anno : A) : P;
	
	@:overload public function makeElement(nc : N, p : P, loc : L, anno : A) : P;
	
	@:overload public function makeDataPatternBuilder(datatypeLibrary : String, type : String, loc : L) : com.sun.xml.internal.rngom.ast.builder.DataPatternBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>;
	
	@:overload public function makeValue(datatypeLibrary : String, type : String, value : String, c : com.sun.xml.internal.rngom.parse.Context, ns : String, loc : L, anno : A) : P;
	
	/**
	*
	* @param parent
	*      The parent scope. null if there's no parent scope.
	*      For example, if the complete document looks like the following:
	*      <pre><xmp>
	*      <grammar>
	*        <start><element name="root"><empty/></element></start>
	*      </grammar>
	*      </xmp></pre>
	*      Then when the outer-most {@link Grammar} is created, it will
	*      receive the <tt>null</tt> parent.
	*/
	@:overload public function makeGrammar(parent : com.sun.xml.internal.rngom.ast.builder.Scope<P, E, L, A, CL>) : com.sun.xml.internal.rngom.ast.builder.Grammar<P, E, L, A, CL>;
	
	/**
	* Called when annotation is found right inside a pattern
	*
	* such as,
	*
	* <pre><xmp>
	* <element name="foo">     <!-- this becomes 'P' -->
	*   <foreign:annotation /> <!-- this becomes 'A' -->
	*   ...
	* </element>
	* </xmp></pre>
	*/
	@:overload public function annotate(p : P, anno : A) : P;
	
	/**
	* Called when element annotation is found after a pattern.
	*
	* such as,
	*
	* <pre><xmp>
	* <element name="foo">
	*   <empty />              <!-- this becomes 'P' -->
	*   <foreign:annotation /> <!-- this becomes 'E' -->
	* </element>
	* </xmp></pre>
	*/
	@:overload public function annotateAfter(p : P, e : E) : P;
	
	@:overload public function commentAfter(p : P, comments : CL) : P;
	
	/**
	*
	* @param current
	*      Current grammar that we are parsing. This is what contains
	*      externalRef.
	* @param scope
	*      The parent scope. null if there's no parent scope.
	*      See {@link #makeGrammar(Scope)} for more details about
	*      when this parameter can be null.
	*/
	@:overload public function makeExternalRef(current : com.sun.xml.internal.rngom.parse.Parseable, uri : String, ns : String, scope : com.sun.xml.internal.rngom.ast.builder.Scope<P, E, L, A, CL>, loc : L, anno : A) : P;
	
	@:overload public function makeLocation(systemId : String, lineNumber : Int, columnNumber : Int) : L;
	
	/**
	* Creates {@link Annotations} object to parse annotations on patterns.
	*
	* @return
	*      must be non-null.
	*/
	@:overload public function makeAnnotations(comments : CL, context : com.sun.xml.internal.rngom.parse.Context) : A;
	
	@:overload public function makeElementAnnotationBuilder(ns : String, localName : String, prefix : String, loc : L, comments : CL, context : com.sun.xml.internal.rngom.parse.Context) : com.sun.xml.internal.rngom.ast.builder.ElementAnnotationBuilder<P, E, L, A, CL>;
	
	@:overload public function makeCommentList() : CL;
	
	@:overload public function makeErrorPattern() : P;
	
	/**
	* If this {@link SchemaBuilder}is interested in actually parsing
	* comments, this method returns true.
	* <p>
	* Returning false allows the schema parser to speed up the processing by
	* skiping comment-related handlings.
	*/
	@:overload public function usesComments() : Bool;
	
	/**
	* Called after all the parsing is done.
	*
	* <p>
	* This hook typically allows as {@link SchemaBuilder} to expand
	* notAllowed (if it's following the simplification as in the spec.)
	*/
	@:overload public function expandPattern(p : P) : P;
	
	
}
