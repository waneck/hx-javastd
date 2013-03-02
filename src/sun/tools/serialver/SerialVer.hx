package sun.tools.serialver;
/*
* Copyright (c) 1996, 2005, Oracle and/or its affiliates. All rights reserved.
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
extern class SerialVer extends java.applet.Applet
{
	@:overload @:synchronized public function init() : Void;
	
	@:overload public function start() : Void;
	
	@:overload public function action(ev : java.awt.Event, obj : Dynamic) : Bool;
	
	@:overload public function handleEvent(ev : java.awt.Event) : Bool;
	
	@:overload public static function main(args : java.NativeArray<String>) : Void;
	
	/**
	* Usage
	*/
	@:overload public static function usage() : Void;
	
	
}
@:internal extern class SerialVerFrame extends java.awt.Frame
{
	/*
	* Handle a window destroy event by exiting.
	*/
	@:overload public function handleEvent(e : java.awt.Event) : Bool;
	
	/*
	* Handle an Exit event by exiting.
	*/
	@:overload public function action(ev : java.awt.Event, obj : Dynamic) : Bool;
	
	
}
@:internal extern class Res
{
	
}
