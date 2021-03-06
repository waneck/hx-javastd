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
extern class PrefixArray extends com.sun.xml.internal.fastinfoset.util.ValueArray
{
	@:public @:static @:final public static var PREFIX_MAP_SIZE(default, null) : Int;
	
	@:public public var _array : java.NativeArray<String>;
	
	@:public public var _currentInScope : java.NativeArray<Int>;
	
	@:public public var _declarationId : Int;
	
	@:overload @:public public function new(initialCapacity : Int, maximumCapacity : Int) : Void;
	
	@:overload @:public public function new() : Void;
	
	@:overload @:public public function countNamespacePool() : Int;
	
	@:overload @:public public function countPrefixPool() : Int;
	
	@:overload @:public @:final override public function clear() : Void;
	
	@:overload @:public @:final public function clearCompletely() : Void;
	
	@:overload @:public @:final public function getArray() : java.NativeArray<String>;
	
	@:overload @:public @:final override public function setReadOnlyArray(readOnlyArray : com.sun.xml.internal.fastinfoset.util.ValueArray, clear : Bool) : Void;
	
	@:overload @:public @:final public function setReadOnlyArray(readOnlyArray : com.sun.xml.internal.fastinfoset.util.PrefixArray, clear : Bool) : Void;
	
	@:overload @:public @:final public function getCompleteArray() : java.NativeArray<String>;
	
	@:overload @:public @:final public function get(i : Int) : String;
	
	@:overload @:public @:final public function add(s : String) : Int;
	
	@:overload @:protected @:final private function resize() : Void;
	
	@:overload @:public @:final public function clearDeclarationIds() : Void;
	
	@:overload @:public @:final public function pushScope(prefixIndex : Int, namespaceIndex : Int) : Void;
	
	@:overload @:public @:final public function pushScopeWithPrefixEntry(prefix : String, namespaceName : String, prefixIndex : Int, namespaceIndex : Int) : Void;
	
	@:overload @:public @:final public function popScope(prefixIndex : Int) : Void;
	
	@:overload @:public @:final public function popScopeWithPrefixEntry(prefixIndex : Int) : Void;
	
	@:overload @:public @:final public function getNamespaceFromPrefix(prefix : String) : String;
	
	@:overload @:public @:final public function getPrefixFromNamespace(namespaceName : String) : String;
	
	@:overload @:public @:final public function getPrefixes() : java.util.Iterator<Dynamic>;
	
	@:overload @:public @:final public function getPrefixesFromNamespace(namespaceName : String) : java.util.Iterator<Dynamic>;
	
	
}
@:native('com$sun$xml$internal$fastinfoset$util$PrefixArray$PrefixEntry') @:internal extern class PrefixArray_PrefixEntry
{
	
}
@:native('com$sun$xml$internal$fastinfoset$util$PrefixArray$NamespaceEntry') @:internal extern class PrefixArray_NamespaceEntry
{
	
}
