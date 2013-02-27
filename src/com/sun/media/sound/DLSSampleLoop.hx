package com.sun.media.sound;
/*
* Copyright (c) 2007, Oracle and/or its affiliates. All rights reserved.
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
/**
* This class is used to store loop points inside DLSSampleOptions class.
*
* @author Karl Helgason
*/
extern class DLSSampleLoop
{
	public static var LOOP_TYPE_FORWARD(default, null) : Int;
	
	public static var LOOP_TYPE_RELEASE(default, null) : Int;
	
	private var type : haxe.Int64;
	
	private var start : haxe.Int64;
	
	private var length : haxe.Int64;
	
	@:overload public function getLength() : haxe.Int64;
	
	@:overload public function setLength(length : haxe.Int64) : Void;
	
	@:overload public function getStart() : haxe.Int64;
	
	@:overload public function setStart(start : haxe.Int64) : Void;
	
	@:overload public function getType() : haxe.Int64;
	
	@:overload public function setType(type : haxe.Int64) : Void;
	
	
}
