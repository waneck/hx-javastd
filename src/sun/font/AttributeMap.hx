package sun.font;
/*
* Copyright (c) 2004, 2005, Oracle and/or its affiliates. All rights reserved.
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
What is the dead simplest thing to do?
Extend AbstractMap and don't optimize for anything.

The only new api is 'getValues()' which returns the values struct as
long as no map api has been called.  If any map api is called,
create a real map and forward to it, and nuke values because of the
possibility that the map has been changed.  This is easier than
trying to create a map that only clears values if the map has been
changed, or implementing the map API directly on top of the values
struct.  We can always do that later if need be.
*/
extern class AttributeMap extends java.util.AbstractMap<java.awt.font.TextAttribute, Dynamic>
{
	@:overload @:public public function new(values : sun.font.AttributeValues) : Void;
	
	@:overload @:public override public function entrySet() : java.util.Set<java.util.Map.Map_Entry<java.awt.font.TextAttribute, Dynamic>>;
	
	@:overload @:public public function put(key : java.awt.font.TextAttribute, value : Dynamic) : Dynamic;
	
	@:overload @:public public function getValues() : sun.font.AttributeValues;
	
	@:overload @:public override public function toString() : String;
	
	
}
