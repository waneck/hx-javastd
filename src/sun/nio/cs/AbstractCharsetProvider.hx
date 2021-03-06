package sun.nio.cs;
/*
* Copyright (c) 2000, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class AbstractCharsetProvider extends java.nio.charset.spi.CharsetProvider
{
	@:overload @:protected private function new() : Void;
	
	@:overload @:protected private function new(pkgPrefixName : String) : Void;
	
	/* Declare support for the given charset
	*/
	@:overload @:protected private function charset(name : String, className : String, aliases : java.NativeArray<String>) : Void;
	
	@:overload @:protected private function deleteCharset(name : String, aliases : java.NativeArray<String>) : Void;
	
	/* Late initialization hook, needed by some providers
	*/
	@:overload @:protected private function init() : Void;
	
	@:overload @:public @:final override public function charsetForName(charsetName : String) : java.nio.charset.Charset;
	
	@:overload @:public @:final override public function charsets() : java.util.Iterator<java.nio.charset.Charset>;
	
	@:overload @:public @:final public function aliases(charsetName : String) : java.NativeArray<String>;
	
	
}
