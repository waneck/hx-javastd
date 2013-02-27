package sun.awt.X11;
/*
* Copyright (c) 2003, 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class WindowPropertyGetter
{
	@:overload public function new(window : haxe.Int64, property : sun.awt.X11.XAtom, offset : haxe.Int64, length : haxe.Int64, auto_delete : Bool, type : haxe.Int64) : Void;
	
	@:overload public function new(window : haxe.Int64, property : sun.awt.X11.XAtom, offset : haxe.Int64, length : haxe.Int64, auto_delete : Bool, type : sun.awt.X11.XAtom) : Void;
	
	@:overload public function execute() : Int;
	
	@:overload public function execute(errorHandler : sun.awt.X11.XErrorHandler) : Int;
	
	@:overload public function isExecuted() : Bool;
	
	@:overload public function isDisposed() : Bool;
	
	@:overload public function getActualFormat() : Int;
	
	@:overload public function getActualType() : haxe.Int64;
	
	@:overload public function getNumberOfItems() : Int;
	
	@:overload public function getData() : haxe.Int64;
	
	@:overload public function getBytesAfter() : haxe.Int64;
	
	@:overload public function dispose() : Void;
	
	
}
