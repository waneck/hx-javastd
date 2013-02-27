package com.sun.jmx.mbeanserver;
/*
* Copyright (c) 2005, 2008, Oracle and/or its affiliates. All rights reserved.
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
@:internal extern class WeakIdentityHashMap<K, V>
{
	@:overload public function put(key : K, value : V) : V;
	
	@:overload public function remove(key : K) : V;
	
	
}
/**
* WeakReference where equals and hashCode are based on the
* referent.  More precisely, two objects are equal if they are
* identical or if they both have the same non-null referent.  The
* hashCode is the value the original referent had.  Even if the
* referent is cleared, the hashCode remains.  Thus, objects of
* this class can be used as keys in hash-based maps and sets.
*/
@:native('com$sun$jmx$mbeanserver$WeakIdentityHashMap$IdentityWeakReference') @:internal extern class WeakIdentityHashMap_IdentityWeakReference<T> extends java.lang.ref.WeakReference<T>
{
	@:overload public function equals(o : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	
}
