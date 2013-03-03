package com.sun.xml.internal.fastinfoset.util;
/*
* Copyright (c) 2004, 2011, Oracle and/or its affiliates. All rights reserved.
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
*
* THIS FILE WAS MODIFIED BY SUN MICROSYSTEMS, INC.
*/
extern class StringIntMap extends com.sun.xml.internal.fastinfoset.util.KeyIntMap
{
	@:protected @:static @:final private static var NULL_ENTRY(default, null) : com.sun.xml.internal.fastinfoset.util.StringIntMap.StringIntMap_Entry;
	
	@:protected private var _readOnlyMap : com.sun.xml.internal.fastinfoset.util.StringIntMap;
	
	@:protected private var _lastEntry : com.sun.xml.internal.fastinfoset.util.StringIntMap.StringIntMap_Entry;
	
	@:protected private var _table : java.NativeArray<com.sun.xml.internal.fastinfoset.util.StringIntMap.StringIntMap_Entry>;
	
	@:protected private var _index : Int;
	
	@:protected private var _totalCharacterCount : Int;
	
	@:overload @:public public function new(initialCapacity : Int, loadFactor : Single) : Void;
	
	@:overload @:public public function new(initialCapacity : Int) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public override public function clear() : Void;
	
	@:overload @:public override public function setReadOnlyMap(readOnlyMap : com.sun.xml.internal.fastinfoset.util.KeyIntMap, clear : Bool) : Void;
	
	@:overload @:public @:final public function setReadOnlyMap(readOnlyMap : com.sun.xml.internal.fastinfoset.util.StringIntMap, clear : Bool) : Void;
	
	@:overload @:public @:final public function getNextIndex() : Int;
	
	@:overload @:public @:final public function getIndex() : Int;
	
	@:overload @:public @:final public function obtainIndex(key : String) : Int;
	
	@:overload @:public @:final public function add(key : String) : Void;
	
	@:overload @:public @:final public function get(key : String) : Int;
	
	@:overload @:public @:final public function getTotalCharacterCount() : Int;
	
	@:overload @:protected @:final private function resize(newCapacity : Int) : Void;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$util$StringIntMap$Entry') extern class StringIntMap_Entry extends com.sun.xml.internal.fastinfoset.util.KeyIntMap.KeyIntMap_BaseEntry
{
	@:overload @:public public function new(key : String, hash : Int, value : Int, next : com.sun.xml.internal.fastinfoset.util.StringIntMap.StringIntMap_Entry) : Void;
	
	
}
