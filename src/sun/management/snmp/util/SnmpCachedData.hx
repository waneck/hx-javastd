package sun.management.snmp.util;
/*
* Copyright (c) 2003, 2006, Oracle and/or its affiliates. All rights reserved.
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
* This class is used to cache table data.
**/
extern class SnmpCachedData implements sun.management.snmp.util.SnmpTableHandler.SnmpTableHandler
{
	/**
	* Compares two SnmpOid.
	**/
	public static var oidComparator(default, null) : java.util.Comparator.Comparator<SnmpOid>;
	
	/**
	* Constructs a new instance of SnmpCachedData. Instances are
	* immutable.
	* @param lastUpdated Time stamp as returned by
	*        {@link System#currentTimeMillis System.currentTimeMillis()}
	* @param indexes The table entry indexes, sorted in ascending order.
	* @param datas   The table datas, sorted according to the
	*                order in <code>indexes</code>: <code>datas[i]</code>
	*                is the data that corresponds to
	*                <code>indexes[i]</code>
	**/
	@:overload public function new(lastUpdated : haxe.Int64, indexes : java.NativeArray<SnmpOid>, datas : java.NativeArray<java.lang.Object.Object>) : Void;
	
	/**
	* Constructs a new instance of SnmpCachedData. Instances are
	* immutable.
	* @param lastUpdated Time stamp as returned by
	*        {@link System#currentTimeMillis System.currentTimeMillis()}
	* @param indexMap The table indexed table data, sorted in ascending
	*                 order by {@link #oidComparator}. The keys must be
	*                 instances of {@link SnmpOid}.
	**/
	@:overload public function new(lastUpdated : haxe.Int64, indexMap : java.util.TreeMap.TreeMap<SnmpOid, java.lang.Object.Object>) : Void;
	
	/**
	* Constructs a new instance of SnmpCachedData. Instances are
	* immutable.
	* @param lastUpdated Time stamp as returned by
	*        {@link System#currentTimeMillis System.currentTimeMillis()}
	* @param indexMap The table indexed table data, sorted in ascending
	*                 order by {@link #oidComparator}. The keys must be
	*                 instances of {@link SnmpOid}.
	**/
	@:overload public function new(lastUpdated : haxe.Int64, indexMap : java.util.TreeMap.TreeMap<SnmpOid, java.lang.Object.Object>, b : Bool) : Void;
	
	/**
	* Time stamp as returned by
	* {@link System#currentTimeMillis System.currentTimeMillis()}
	**/
	public var lastUpdated(default, null) : haxe.Int64;
	
	/**
	* The table entry indexes, sorted in ascending order.
	**/
	public var indexes(default, null) : java.NativeArray<SnmpOid>;
	
	/**
	* The table datas, sorted according to the
	* order in <code>indexes</code>: <code>datas[i]</code>
	* is the data that corresponds to <code>indexes[i]</code>
	**/
	public var datas(default, null) : java.NativeArray<java.lang.Object.Object>;
	
	/**
	* The position of the given <var>index</var>, as returned by
	* <code>java.util.Arrays.binarySearch()</code>
	**/
	@:overload @:final public function find(index : SnmpOid) : Int;
	
	@:overload public function getData(index : SnmpOid) : java.lang.Object.Object;
	
	@:overload public function getNext(index : SnmpOid) : SnmpOid;
	
	@:overload public function contains(index : SnmpOid) : Bool;
	
	
}
