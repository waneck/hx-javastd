package sun.util.locale;
/*
* Copyright (c) 2010, 2011, Oracle and/or its affiliates. All rights reserved.
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
*******************************************************************************
* Copyright (C) 2009-2010, International Business Machines Corporation and    *
* others. All Rights Reserved.                                                *
*******************************************************************************
*/
extern class LocaleObjectCache<K, V>
{
	@:overload public function new() : Void;
	
	@:overload public function new(initialCapacity : Int, loadFactor : Single, concurrencyLevel : Int) : Void;
	
	@:overload public function get(key : K) : V;
	
	@:overload private function put(key : K, value : V) : V;
	
	@:overload @:abstract private function createObject(key : K) : V;
	
	@:overload private function normalizeKey(key : K) : K;
	
	
}
@:native('sun$util$locale$LocaleObjectCache$CacheEntry') @:internal extern class LocaleObjectCache_CacheEntry<K, V> extends java.lang.ref.SoftReference<V>
{
	
}