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
extern class Instruction implements sun.tools.java.Constants
{
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, opc : Int, value : Dynamic, flagCondInverted : Bool) : Void;
	
	/**
	* Constructor
	*/
	@:overload public function new(flagNoCovered : Bool, where : haxe.Int64, opc : Int, value : Dynamic) : Void;
	
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, opc : Int, flagNoCovered : Bool) : Void;
	
	/**
	* Constructor
	*/
	@:overload public function new(where : haxe.Int64, opc : Int, value : Dynamic) : Void;
	
	/**
	* When deciding between a lookupswitch and a tableswitch, this
	* value is used in determining how much size increase is
	* acceptable.
	*/
	public static var SWITCHRATIO(default, null) : Float;
	
	/**
	* Accessor
	*/
	@:overload public function getOpcode() : Int;
	
	@:overload public function getValue() : Dynamic;
	
	@:overload public function setValue(value : Dynamic) : Void;
	
	/**
	* toString
	*/
	@:overload public function toString() : String;
	
	
}
