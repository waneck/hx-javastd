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
* This abstract class implements a weak cache for a table whose data
* is obtained from a {@link  List}.
*
* <p><b>NOTE: This class is not synchronized, subclasses must implement
*          the appropriate synchronization whwn needed.</b></p>
**/
extern class SnmpListTableCache extends sun.management.snmp.util.SnmpTableCache.SnmpTableCache
{
	/**
	* The index of the entry corresponding to the given <var>item</var>.
	* <br>This method is called by {@link #updateCachedDatas(Object,List)}.
	* The given <var>item</var> is expected to be always associated with
	* the same index.
	* @param context The context passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rawDatas Raw table datas passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rank Rank of the given <var>item</var> in the
	*        <var>rawDatas</var> list iterator.
	* @param item The raw data object for which an index must be determined.
	**/
	@:overload @:abstract private function getIndex(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : SnmpOid;
	
	/**
	* The data for the entry corresponding to the given <var>item</var>.
	* <br>This method is called by {@link #updateCachedDatas(Object,List)}.
	* @param context The context passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rawDatas Raw table datas passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rank Rank of the given <var>item</var> in the
	*        <var>rawDatas</var> list iterator.
	* @param item The raw data object from which the entry data must be
	*        extracted.
	* @return By default <var>item</var> is returned.
	**/
	@:overload private function getData(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : java.lang.Object.Object;
	
	/**
	* Recompute cached data.
	* @param context A context object, valid during the duration of
	*        of the call to this method, and that will be passed to
	*        {@link #getIndex} and {@link #getData}. <br>
	*        This method is intended to be called by
	*        {@link #updateCachedDatas(Object)}. It is assumed that
	*        the context is be allocated by  before this method is called,
	*        and released just after this method has returned.<br>
	*        This class does not use the context object: it is a simple
	*        hook for subclassed.
	* @param rawDatas The table datas from which the cached data will be
	*        computed.
	* @return the computed cached data.
	**/
	@:overload private function updateCachedDatas(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>) : sun.management.snmp.util.SnmpCachedData.SnmpCachedData;
	
	
}
