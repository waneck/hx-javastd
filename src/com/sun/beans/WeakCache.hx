package com.sun.beans;
/*
* Copyright (c) 2008, Oracle and/or its affiliates. All rights reserved.
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
extern class WeakCache<K, V>
{
	/**
	* Returns a value to which the specified {@code key} is mapped,
	* or {@code null} if this map contains no mapping for the {@code key}.
	*
	* @param key  the key whose associated value is returned
	* @return a value to which the specified {@code key} is mapped
	*/
	@:overload public function get(key : K) : V;
	
	/**
	* Associates the specified {@code value} with the specified {@code key}.
	* Removes the mapping for the specified {@code key} from this cache
	* if it is present and the specified {@code value} is {@code null}.
	* If the cache previously contained a mapping for the {@code key},
	* the old value is replaced by the specified {@code value}.
	*
	* @param key    the key with which the specified value is associated
	* @param value  the value to be associated with the specified key
	*/
	@:overload public function put(key : K, value : V) : Void;
	
	/**
	* Removes all of the mappings from this cache.
	*/
	@:overload public function clear() : Void;
	
	
}
