package com.sun.corba.se.impl.oa.poa;
/*
* Copyright (c) 1997, 2003, Oracle and/or its affiliates. All rights reserved.
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
extern class ActiveObjectMap
{
	private var poa : com.sun.corba.se.impl.oa.poa.POAImpl;
	
	@:overload private function new(poa : com.sun.corba.se.impl.oa.poa.POAImpl) : Void;
	
	@:overload public static function create(poa : com.sun.corba.se.impl.oa.poa.POAImpl, multipleIDsAllowed : Bool) : com.sun.corba.se.impl.oa.poa.ActiveObjectMap;
	
	@:overload @:final public function contains(value : org.omg.PortableServer.Servant) : Bool;
	
	@:overload @:final public function containsKey(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : Bool;
	
	/** get Returbs the entry assigned to the key, or creates a new
	* entry in state INVALID if none is present.
	*/
	@:overload @:final public function get(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : com.sun.corba.se.impl.oa.poa.AOMEntry;
	
	@:overload @:final public function getServant(entry : com.sun.corba.se.impl.oa.poa.AOMEntry) : org.omg.PortableServer.Servant;
	
	@:overload @:abstract public function getKey(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key;
	
	@:overload public function getKey(value : org.omg.PortableServer.Servant) : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key;
	
	@:overload private function putEntry(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key, value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Void;
	
	@:overload @:final public function putServant(servant : org.omg.PortableServer.Servant, value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Void;
	
	@:overload @:abstract private function removeEntry(entry : com.sun.corba.se.impl.oa.poa.AOMEntry, key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : Void;
	
	@:overload @:final public function remove(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : Void;
	
	@:overload @:abstract public function hasMultipleIDs(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Bool;
	
	@:overload private function clear() : Void;
	
	@:overload @:final public function keySet() : java.util.Set<Dynamic>;
	
	
}
/**  The ActiveObjectMap maintains associations between servants and
* their keys.  There are two variants, to support whether or not
* multiple IDs per servant are allowed.  This class suppots bidirectional
* traversal of the key-servant association.  Access to an instance of this
* class is serialized by the POA mutex.
*/
@:native('com$sun$corba$se$impl$oa$poa$ActiveObjectMap$Key') extern class ActiveObjectMap_Key
{
	public var id : java.NativeArray<java.StdTypes.Int8>;
	
	@:overload public function toString() : String;
	
	@:overload public function equals(key : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
@:internal extern class SingleObjectMap extends com.sun.corba.se.impl.oa.poa.ActiveObjectMap
{
	@:overload public function new(poa : com.sun.corba.se.impl.oa.poa.POAImpl) : Void;
	
	@:overload override public function getKey(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key;
	
	@:overload override private function putEntry(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key, value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Void;
	
	@:overload override public function hasMultipleIDs(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Bool;
	
	@:overload override private function removeEntry(entry : com.sun.corba.se.impl.oa.poa.AOMEntry, key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : Void;
	
	@:overload override public function clear() : Void;
	
	
}
@:internal extern class MultipleObjectMap extends com.sun.corba.se.impl.oa.poa.ActiveObjectMap
{
	@:overload public function new(poa : com.sun.corba.se.impl.oa.poa.POAImpl) : Void;
	
	@:overload override public function getKey(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key;
	
	@:overload override private function putEntry(key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key, value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Void;
	
	@:overload override public function hasMultipleIDs(value : com.sun.corba.se.impl.oa.poa.AOMEntry) : Bool;
	
	@:overload override private function removeEntry(entry : com.sun.corba.se.impl.oa.poa.AOMEntry, key : com.sun.corba.se.impl.oa.poa.ActiveObjectMap.ActiveObjectMap_Key) : Void;
	
	@:overload override public function clear() : Void;
	
	
}
