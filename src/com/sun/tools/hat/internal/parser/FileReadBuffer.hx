package com.sun.tools.hat.internal.parser;
/*
* Copyright (c) 1997, 2008, Oracle and/or its affiliates. All rights reserved.
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
* The Original Code is HAT. The Initial Developer of the
* Original Code is Bill Foote, with contributions from others
* at JavaSoft/Sun.
*/
@:internal extern class FileReadBuffer implements com.sun.tools.hat.internal.parser.ReadBuffer
{
	@:overload @:synchronized public function get(pos : haxe.Int64, buf : java.NativeArray<java.StdTypes.Int8>) : Void;
	
	@:overload @:synchronized public function getChar(pos : haxe.Int64) : java.StdTypes.Char16;
	
	@:overload @:synchronized public function getByte(pos : haxe.Int64) : java.StdTypes.Int8;
	
	@:overload @:synchronized public function getShort(pos : haxe.Int64) : java.StdTypes.Int16;
	
	@:overload @:synchronized public function getInt(pos : haxe.Int64) : Int;
	
	@:overload @:synchronized public function getLong(pos : haxe.Int64) : haxe.Int64;
	
	
}