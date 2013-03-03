package com.sun.tools.internal.xjc.reader.relaxng;
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
@:internal extern class TypeUseBinder implements com.sun.xml.internal.rngom.digested.DPatternVisitor<com.sun.tools.internal.xjc.model.TypeUse>
{
	@:overload @:public public function new(compiler : com.sun.tools.internal.xjc.reader.relaxng.RELAXNGCompiler) : Void;
	
	@:overload @:public public function onGrammar(p : com.sun.xml.internal.rngom.digested.DGrammarPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onChoice(p : com.sun.xml.internal.rngom.digested.DChoicePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onData(p : com.sun.xml.internal.rngom.digested.DDataPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onValue(p : com.sun.xml.internal.rngom.digested.DValuePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onInterleave(p : com.sun.xml.internal.rngom.digested.DInterleavePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onGroup(p : com.sun.xml.internal.rngom.digested.DGroupPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onNotAllowed(p : com.sun.xml.internal.rngom.digested.DNotAllowedPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onEmpty(p : com.sun.xml.internal.rngom.digested.DEmptyPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onList(p : com.sun.xml.internal.rngom.digested.DListPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onOneOrMore(p : com.sun.xml.internal.rngom.digested.DOneOrMorePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onZeroOrMore(p : com.sun.xml.internal.rngom.digested.DZeroOrMorePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onOptional(p : com.sun.xml.internal.rngom.digested.DOptionalPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onRef(p : com.sun.xml.internal.rngom.digested.DRefPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onText(p : com.sun.xml.internal.rngom.digested.DTextPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onAttribute(p : com.sun.xml.internal.rngom.digested.DAttributePattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onElement(p : com.sun.xml.internal.rngom.digested.DElementPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	@:overload @:public public function onMixed(p : com.sun.xml.internal.rngom.digested.DMixedPattern) : com.sun.tools.internal.xjc.model.TypeUse;
	
	
}
