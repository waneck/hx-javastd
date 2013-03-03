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
extern interface GrammarSection<P, E, L, A, CL>
{
	/**
	* Called when a pattern is defined.
	*
	* @param name
	*      Name of the pattern. For the definition by a &lt;start/> element,
	*      this parameter is the same as {@link #START}.
	*      to test if it's a named pattern definition or the start pattern definition.
	* @param combine
	*      null or {@link #COMBINE_CHOICE} or {@link #COMBINE_INTERLEAVE} depending
	*      on the value of the combine attribute.
	* @param pattern
	*      The pattern to be defined.
	*/
	@:overload public function define(name : String, combine : com.sun.xml.internal.rngom.ast.builder.GrammarSection.GrammarSection_Combine, pattern : P, loc : L, anno : A) : Void;
	
	/**
	* Called when an annotation is found.
	*/
	@:overload public function topLevelAnnotation(ea : E) : Void;
	
	/**
	* Called when a comment is found.
	*/
	@:overload public function topLevelComment(comments : CL) : Void;
	
	/**
	* Called when &lt;div> is found.
	*
	* @return
	*      the returned {@link Div} object will receive callbacks for structures
	*      inside the &lt;div> element.
	*/
	@:overload public function makeDiv() : com.sun.xml.internal.rngom.ast.builder.Div<P, E, L, A, CL>;
	
	/**
	* Returns null if already in an include.
	*/
	@:overload public function makeInclude() : com.sun.xml.internal.rngom.ast.builder.Include<P, E, L, A, CL>;
	
	
}
/**
* The container that can have &lt;define> elements.
* <p>
* {@link Div}, {@link Grammar}, {@link Include}, or {@link IncludedGrammar}.
*/
@:native('com$sun$xml$internal$rngom$ast$builder$GrammarSection$Combine') @:internal extern class GrammarSection_Combine
{
	@:overload @:final @:public public function toString() : String;
	
	
}
