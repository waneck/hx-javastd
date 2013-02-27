package sun.net.www;
/*
* Copyright (c) 1996, 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class HeaderParser
{
	@:overload public function new(raw : String) : Void;
	
	/**
	* create a new HeaderParser from this, whose keys (and corresponding values)
	* range from "start" to "end-1"
	*/
	@:overload public function subsequence(start : Int, end : Int) : HeaderParser;
	
	@:overload public function findKey(i : Int) : String;
	
	@:overload public function findValue(i : Int) : String;
	
	@:overload public function findValue(key : String) : String;
	
	@:overload public function findValue(k : String, Default : String) : String;
	
	@:overload public function keys() : java.util.Iterator<Dynamic>;
	
	@:overload public function values() : java.util.Iterator<Dynamic>;
	
	@:overload public function toString() : String;
	
	@:overload public function findInt(k : String, Default : Int) : Int;
	
	
}
@:native('sun$net$www$HeaderParser$ParserIterator') @:internal extern class HeaderParser_ParserIterator implements java.util.Iterator<Dynamic>
{
	@:overload public function hasNext() : Bool;
	
	@:overload public function next() : Dynamic;
	
	@:overload public function remove() : Void;
	
	
}
