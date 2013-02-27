package sun.tools.java;
/*
* Copyright (c) 1994, 2004, Oracle and/or its affiliates. All rights reserved.
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
extern class Scanner implements sun.tools.java.Constants
{
	/**
	* The increment for each character.
	*/
	public static var OFFSETINC(default, null) : haxe.Int64;
	
	/**
	* The increment for each line.
	*/
	public static var LINEINC(default, null) : haxe.Int64;
	
	/**
	* End of input
	*/
	public static var EOF(default, null) : Int;
	
	/**
	* Where errors are reported
	*/
	public var env : sun.tools.java.Environment;
	
	/**
	* Input reader
	*/
	//private var _in : sun.tools.java.ScannerInputReader;
	
	/**
	* If true, present all comments as tokens.
	* Contents are not saved, but positions are recorded accurately,
	* so the comment can be recovered from the text.
	* Line terminations are also returned as comment tokens,
	* and may be distinguished by their start and end positions,
	* which are equal (meaning, these tokens contain no chars).
	*/
	public var scanComments : Bool;
	
	/**
	* Current token
	*/
	public var token : Int;
	
	/**
	* The position of the current token
	*/
	public var pos : haxe.Int64;
	
	/**
	* The position of the previous token
	*/
	public var prevPos : haxe.Int64;
	
	/**
	* The current character
	*/
	private var ch : Int;
	
	/*
	* Token values.
	*/
	public var charValue : java.StdTypes.Char16;
	
	public var intValue : Int;
	
	public var longValue : haxe.Int64;
	
	public var floatValue : Single;
	
	public var doubleValue : Float;
	
	public var stringValue : String;
	
	public var idValue : sun.tools.java.Identifier;
	
	public var radix : Int;
	
	/*
	* A doc comment preceding the most recent token
	*/
	public var docComment : String;
	
	/**
	* Create a scanner to scan an input stream.
	*/
	@:overload public function new(env : sun.tools.java.Environment, _in : java.io.InputStream) : Void;
	
	/**
	* Setup input from the given input stream,
	* and scan the first token from it.
	*/
	@:overload private function useInputStream(_in : java.io.InputStream) : Void;
	
	/**
	* Create a scanner to scan an input stream.
	*/
	@:overload private function new(env : sun.tools.java.Environment) : Void;
	
	/**
	* The ending position of the current token
	*/
	@:overload public function getEndPos() : haxe.Int64;
	
	/**
	* If the current token is IDENT, return the identifier occurrence.
	* It will be freshly allocated.
	*/
	@:overload public function getIdToken() : sun.tools.java.IdentifierToken;
	
	/**
	* Scan the next token.
	* @return the position of the previous token.
	*/
	@:overload public function scan() : haxe.Int64;
	
	@:overload private function xscan() : haxe.Int64;
	
	/**
	* Scan to a matching '}', ']' or ')'. The current token must be
	* a '{', '[' or '(';
	*/
	@:overload public function match(open : Int, close : Int) : Void;
	
	
}
