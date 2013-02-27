package com.sun.tools.javac.parser;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is similar to Parser except that it stores ending
* positions for the tree nodes.
*
* <p><b>This is NOT part of any supported API.
* If you write code that depends on this, you do so at your own risk.
* This code and its internal interfaces are subject to change or
* deletion without notice.</b></p>
*/
extern class EndPosParser extends com.sun.tools.javac.parser.JavacParser
{
	@:overload public function new(fac : com.sun.tools.javac.parser.ParserFactory, S : com.sun.tools.javac.parser.Lexer, keepDocComments : Bool, keepLineMap : Bool) : Void;
	
	/** {@inheritDoc} */
	@:overload override private function storeEnd(tree : com.sun.tools.javac.tree.JCTree, endpos : Int) : Void;
	
	/** {@inheritDoc} */
	@:overload override private function to<T : com.sun.tools.javac.tree.JCTree>(t : T) : T;
	
	/** {@inheritDoc} */
	@:overload override private function toP<T : com.sun.tools.javac.tree.JCTree>(t : T) : T;
	
	@:overload override public function parseCompilationUnit() : JCCompilationUnit;
	
	/** {@inheritDoc} */
	@:overload override public function getEndPos(tree : com.sun.tools.javac.tree.JCTree) : Int;
	
	
}
