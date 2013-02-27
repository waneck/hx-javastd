package sun.java2d.jules;
/*
* Copyright (c) 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class TrapezoidList
{
	public static var TRAP_START_INDEX(default, null) : Int;
	
	public static var TRAP_SIZE(default, null) : Int;
	
	@:overload public function new(trapArray : java.NativeArray<Int>) : Void;
	
	@:overload @:final public function getTrapArray() : java.NativeArray<Int>;
	
	@:overload @:final public function getSize() : Int;
	
	@:overload @:final public function setSize(size : Int) : Void;
	
	@:overload @:final public function getLeft() : Int;
	
	@:overload @:final public function getTop() : Int;
	
	@:overload @:final public function getRight() : Int;
	
	@:overload @:final public function getBottom() : Int;
	
	@:overload @:final public function getTop(pos : Int) : Int;
	
	@:overload @:final public function getBottom(pos : Int) : Int;
	
	@:overload @:final public function getP1XLeft(pos : Int) : Int;
	
	@:overload @:final public function getP1YLeft(pos : Int) : Int;
	
	@:overload @:final public function getP2XLeft(pos : Int) : Int;
	
	@:overload @:final public function getP2YLeft(pos : Int) : Int;
	
	@:overload @:final public function getP1XRight(pos : Int) : Int;
	
	@:overload @:final public function getP1YRight(pos : Int) : Int;
	
	@:overload @:final public function getP2XRight(pos : Int) : Int;
	
	@:overload @:final public function getP2YRight(pos : Int) : Int;
	
	
}
