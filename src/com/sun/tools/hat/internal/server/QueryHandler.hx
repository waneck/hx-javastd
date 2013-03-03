package com.sun.tools.hat.internal.server;
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
@:internal extern class QueryHandler
{
	/**
	*
	* @author      Bill Foote
	*/
	@:protected private var urlStart : String;
	
	@:protected private var query : String;
	
	@:protected private var out : java.io.PrintWriter;
	
	@:protected private var snapshot : com.sun.tools.hat.internal.model.Snapshot;
	
	@:overload @:protected private function encodeForURL(s : String) : String;
	
	@:overload @:protected private function startHtml(title : String) : Void;
	
	@:overload @:protected private function endHtml() : Void;
	
	@:overload @:protected private function error(msg : String) : Void;
	
	@:overload @:protected private function printAnchorStart() : Void;
	
	@:overload @:protected private function printThingAnchorTag(id : haxe.Int64) : Void;
	
	@:overload @:protected private function printObject(obj : com.sun.tools.hat.internal.model.JavaObject) : Void;
	
	@:overload @:protected private function printThing(thing : com.sun.tools.hat.internal.model.JavaThing) : Void;
	
	@:overload @:protected private function printRoot(root : com.sun.tools.hat.internal.model.Root) : Void;
	
	@:overload @:protected private function printClass(clazz : com.sun.tools.hat.internal.model.JavaClass) : Void;
	
	@:overload @:protected private function encodeForURL(clazz : com.sun.tools.hat.internal.model.JavaClass) : String;
	
	@:overload @:protected private function printField(field : com.sun.tools.hat.internal.model.JavaField) : Void;
	
	@:overload @:protected private function printStatic(member : com.sun.tools.hat.internal.model.JavaStatic) : Void;
	
	@:overload @:protected private function printStackTrace(_trace : com.sun.tools.hat.internal.model.StackTrace) : Void;
	
	@:overload @:protected private function printHex(addr : haxe.Int64) : Void;
	
	@:overload @:protected private function parseHex(value : String) : haxe.Int64;
	
	@:overload @:protected private function print(str : String) : Void;
	
	
}
