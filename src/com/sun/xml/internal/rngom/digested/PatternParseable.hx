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
@:internal extern class PatternParseable implements com.sun.xml.internal.rngom.parse.Parseable
{
	@:overload @:public public function new(p : com.sun.xml.internal.rngom.digested.DPattern) : Void;
	
	@:overload @:public public function parse(sb : com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function parseInclude(uri : String, f : com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>, g : com.sun.xml.internal.rngom.ast.builder.IncludedGrammar<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>, inheritedNs : String) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function parseExternal(uri : String, f : com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>, s : com.sun.xml.internal.rngom.ast.builder.Scope<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>, inheritedNs : String) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	
}
@:native('com$sun$xml$internal$rngom$digested$PatternParseable$Parser') @:internal extern class PatternParseable_Parser implements com.sun.xml.internal.rngom.digested.DPatternVisitor<com.sun.xml.internal.rngom.ast.om.ParsedPattern>
{
	@:overload @:public public function new(sb : com.sun.xml.internal.rngom.ast.builder.SchemaBuilder<Dynamic, Dynamic, Dynamic, Dynamic, Dynamic, Dynamic>) : Void;
	
	@:overload @:public public function onAttribute(p : com.sun.xml.internal.rngom.digested.DAttributePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onChoice(p : com.sun.xml.internal.rngom.digested.DChoicePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onData(p : com.sun.xml.internal.rngom.digested.DDataPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onElement(p : com.sun.xml.internal.rngom.digested.DElementPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onEmpty(p : com.sun.xml.internal.rngom.digested.DEmptyPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onGrammar(p : com.sun.xml.internal.rngom.digested.DGrammarPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onGroup(p : com.sun.xml.internal.rngom.digested.DGroupPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onInterleave(p : com.sun.xml.internal.rngom.digested.DInterleavePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onList(p : com.sun.xml.internal.rngom.digested.DListPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onMixed(p : com.sun.xml.internal.rngom.digested.DMixedPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onNotAllowed(p : com.sun.xml.internal.rngom.digested.DNotAllowedPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onOneOrMore(p : com.sun.xml.internal.rngom.digested.DOneOrMorePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onOptional(p : com.sun.xml.internal.rngom.digested.DOptionalPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onRef(p : com.sun.xml.internal.rngom.digested.DRefPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onText(p : com.sun.xml.internal.rngom.digested.DTextPattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onValue(p : com.sun.xml.internal.rngom.digested.DValuePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	@:overload @:public public function onZeroOrMore(p : com.sun.xml.internal.rngom.digested.DZeroOrMorePattern) : com.sun.xml.internal.rngom.ast.om.ParsedPattern;
	
	
}
