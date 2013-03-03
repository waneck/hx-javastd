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
@:internal extern class DefineFinder extends com.sun.xml.internal.rngom.digested.DPatternWalker
{
	/**
	* Recursively find all {@link DDefine}s in the grammar.
	*
	* @author Kohsuke Kawaguchi
	*/
	@:public @:final public var defs(default, null) : java.util.Set<com.sun.xml.internal.rngom.digested.DDefine>;
	
	@:overload @:public override public function onGrammar(p : com.sun.xml.internal.rngom.digested.DGrammarPattern) : java.lang.Void;
	
	/**
	* We visit all {@link DDefine}s from {@link DGrammarPattern},
	* so no point in resolving refs.
	*/
	@:overload @:public override public function onRef(p : com.sun.xml.internal.rngom.digested.DRefPattern) : java.lang.Void;
	
	
}
