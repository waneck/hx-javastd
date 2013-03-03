package sun.tools.asm;
/*
* Copyright (c) 1994, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class SwitchData
{
	/**
	* Get a label
	*/
	@:overload @:public public function get(n : Int) : sun.tools.asm.Label;
	
	/**
	* Get a label
	*/
	@:overload @:public public function get(n : Null<Int>) : sun.tools.asm.Label;
	
	/**
	* Add a label
	*/
	@:overload @:public public function add(n : Int, lbl : sun.tools.asm.Label) : Void;
	
	/**
	* Get the default label
	*/
	@:overload @:public public function getDefaultLabel() : sun.tools.asm.Label;
	
	/**
	* Return the keys of this enumaration sorted in ascending order
	*/
	@:overload @:public @:synchronized public function sortedKeys() : java.util.Enumeration<Dynamic>;
	
	@:overload @:public public function initTableCase() : Void;
	
	@:overload @:public public function addTableCase(index : Int, where : haxe.Int64) : Void;
	
	@:overload @:public public function addTableDefault(where : haxe.Int64) : Void;
	
	@:overload @:public public function whereCase(key : Dynamic) : haxe.Int64;
	
	@:overload @:public public function getDefault() : Bool;
	
	
}
@:internal extern class SwitchDataEnumeration implements java.util.Enumeration<Dynamic>
{
	/**
	* Are there more keys to return?
	*/
	@:overload @:public public function hasMoreElements() : Bool;
	
	/**
	* Return the next key.
	*/
	@:overload @:public public function nextElement() : Dynamic;
	
	
}
