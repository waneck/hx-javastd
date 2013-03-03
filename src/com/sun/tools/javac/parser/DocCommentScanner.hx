package com.sun.tools.javac.parser;
/*
* Copyright (c) 2004, 2010, Oracle and/or its affiliates. All rights reserved.
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
/** An extension to the base lexical analyzer that captures
*  and processes the contents of doc comments.  It does so by
*  translating Unicode escape sequences and by stripping the
*  leading whitespace and starts from each line of the comment.
*
*  <p><b>This is NOT part of any supported API.
*  If you write code that depends on this, you do so at your own risk.
*  This code and its internal interfaces are subject to change or
*  deletion without notice.</b>
*/
extern class DocCommentScanner extends com.sun.tools.javac.parser.Scanner
{
	/** Create a scanner from the input buffer.  buffer must implement
	*  array() and compact(), and remaining() must be less than limit().
	*/
	@:overload @:protected private function new(fac : com.sun.tools.javac.parser.ScannerFactory, buffer : java.nio.CharBuffer) : Void;
	
	/** Create a scanner from the input array.  The array must have at
	*  least a single character of extra space.
	*/
	@:overload @:protected private function new(fac : com.sun.tools.javac.parser.ScannerFactory, input : java.NativeArray<java.StdTypes.Char16>, inputLength : Int) : Void;
	
	/* Reset doc comment before reading each new token
	*/
	@:overload @:public override public function nextToken() : Void;
	
	/**
	* Returns the documentation string of the current token.
	*/
	@:overload @:public override public function docComment() : String;
	
	/**
	* Process a doc comment and make the string content available.
	* Strips leading whitespace and stars.
	*/
	@:overload @:protected override private function processComment(style : com.sun.tools.javac.parser.Scanner.Scanner_CommentStyle) : Void;
	
	/** Build a map for translating between line numbers and
	* positions in the input.
	*
	* @return a LineMap */
	@:overload @:public override public function getLineMap() : com.sun.tools.javac.util.Position.Position_LineMap;
	
	
}
