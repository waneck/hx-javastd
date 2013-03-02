package com.sun.corba.se.impl.orbutil;
/*
* Copyright (c) 2002, Oracle and/or its affiliates. All rights reserved.
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
extern class ObjectWriter
{
	@:overload public static function make(isIndenting : Bool, initialLevel : Int, increment : Int) : com.sun.corba.se.impl.orbutil.ObjectWriter;
	
	@:overload @:abstract public function startObject(obj : Dynamic) : Void;
	
	@:overload @:abstract public function startElement() : Void;
	
	@:overload @:abstract public function endElement() : Void;
	
	@:overload @:abstract public function endObject(str : String) : Void;
	
	@:overload @:abstract public function endObject() : Void;
	
	@:overload public function toString() : String;
	
	@:overload public function append(arg : Bool) : Void;
	
	@:overload public function append(arg : java.StdTypes.Char16) : Void;
	
	@:overload public function append(arg : java.StdTypes.Int16) : Void;
	
	@:overload public function append(arg : Int) : Void;
	
	@:overload public function append(arg : haxe.Int64) : Void;
	
	@:overload public function append(arg : Single) : Void;
	
	@:overload public function append(arg : Float) : Void;
	
	@:overload public function append(arg : String) : Void;
	
	private var result : java.lang.StringBuffer;
	
	@:overload private function new() : Void;
	
	@:overload private function appendObjectHeader(obj : Dynamic) : Void;
	
	
}
/** Expected patterns:
* startObject endObject( str )
*   header( elem )\n
* startObject ( startElement append* endElement ) * endObject
*   header(\n
*       append*\n *
*   )\n
*/
@:native('com$sun$corba$se$impl$orbutil$ObjectWriter$IndentingObjectWriter') @:internal extern class ObjectWriter_IndentingObjectWriter extends com.sun.corba.se.impl.orbutil.ObjectWriter
{
	@:overload public function new(initialLevel : Int, increment : Int) : Void;
	
	@:overload override public function startObject(obj : Dynamic) : Void;
	
	@:overload override public function startElement() : Void;
	
	@:overload override public function endElement() : Void;
	
	@:overload override public function endObject(str : String) : Void;
	
	@:overload override public function endObject() : Void;
	
	
}
@:native('com$sun$corba$se$impl$orbutil$ObjectWriter$SimpleObjectWriter') @:internal extern class ObjectWriter_SimpleObjectWriter extends com.sun.corba.se.impl.orbutil.ObjectWriter
{
	@:overload override public function startObject(obj : Dynamic) : Void;
	
	@:overload override public function startElement() : Void;
	
	@:overload override public function endObject(str : String) : Void;
	
	@:overload override public function endElement() : Void;
	
	@:overload override public function endObject() : Void;
	
	
}
