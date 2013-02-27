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
* This abstract class implements a weak cache that holds table data, for
* a table whose data is obtained from a list  where a name can be obtained
* for each item in the list.
* <p>This object maintains a map between an entry name and its associated
* SnmpOid index, so that a given entry is always associated to the same
* index.</p>
* <p><b>NOTE: This class is not synchronized, subclasses must implement
*          the appropriate synchronization whwn needed.</b></p>
**/
extern class SnmpNamedListTableCache extends sun.management.snmp.util.SnmpListTableCache.SnmpListTableCache
{
	/**
	* This map associate an entry name with the SnmpOid index that's
	* been allocated for it.
	**/
	private var names : java.util.TreeMap.TreeMap<Dynamic, Dynamic>;
	
	/**
	* The last allocate index.
	**/
	private var last : haxe.Int64;
	
	/**
	* Returns the key to use as name for the given <var>item</var>.
	* <br>This method is called by {@link #getIndex(Object,List,int,Object)}.
	* The given <var>item</var> is expected to be always associated with
	* the same name.
	* @param context The context passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rawDatas Raw table datas passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rank Rank of the given <var>item</var> in the
	*        <var>rawDatas</var> list iterator.
	* @param item The raw data object for which a key name must be determined.
	**/
	@:overload @:abstract private function getKey(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : java.lang.String.String;
	
	/**
	* Find a new index for the entry corresponding to the
	* given <var>item</var>.
	* <br>This method is called by {@link #getIndex(Object,List,int,Object)}
	* when a new index needs to be allocated for an <var>item</var>. The
	* index returned must not be already in used.
	* @param context The context passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rawDatas Raw table datas passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rank Rank of the given <var>item</var> in the
	*        <var>rawDatas</var> list iterator.
	* @param item The raw data object for which an index must be determined.
	**/
	@:overload private function makeIndex(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : SnmpOid;
	
	/**
	* Call {@link #getKey(Object,List,int,Object)} in order to get
	* the item name. Then check whether an index was already allocated
	* for the entry by that name. If yes return it. Otherwise, call
	* {@link #makeIndex(Object,List,int,Object)} to compute a new
	* index for that entry.
	* Finally store the association between
	* the name and index in the context TreeMap.
	* @param context The context passed to
	*        {@link #updateCachedDatas(Object,List)}.
	*        It is expected to
	*        be an instance of  {@link TreeMap}.
	* @param rawDatas Raw table datas passed to
	*        {@link #updateCachedDatas(Object,List)}.
	* @param rank Rank of the given <var>item</var> in the
	*        <var>rawDatas</var> list iterator.
	* @param item The raw data object for which an index must be determined.
	**/
	@:overload override private function getIndex(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>, rank : Int, item : java.lang.Object.Object) : SnmpOid;
	
	/**
	* Allocate a new {@link TreeMap} to serve as context, then
	* call {@link SnmpListTableCache#updateCachedDatas(Object,List)}, and
	* finally replace the {@link #names} TreeMap by the new allocated
	* TreeMap.
	* @param rawDatas The table datas from which the cached data will be
	*        computed.
	**/
	@:overload override private function updateCachedDatas(context : java.lang.Object.Object, rawDatas : java.util.List.List<Dynamic>) : sun.management.snmp.util.SnmpCachedData.SnmpCachedData;
	
	/**
	* Load a list of raw data from which to build the cached data.
	* This method is called when nothing is found in the request
	* contextual cache.
	* @param userData The request contextual cache allocated by
	*        the {@link JvmContextFactory}.
	*
	**/
	@:overload @:abstract private function loadRawDatas(userData : java.util.Map.Map<Dynamic, Dynamic>) : java.util.List.List<Dynamic>;
	
	/**
	*The name under which the raw data is to be found/put in
	*        the request contextual cache.
	**/
	@:overload @:abstract private function getRawDatasKey() : java.lang.String.String;
	
	/**
	* Get a list of raw data from which to build the cached data.
	* Obtains a list of raw data by first looking it up in the
	* request contextual cache <var>userData</var> under the given
	* <var>key</var>. If nothing is found in the cache, calls
	* {@link #loadRawDatas(Map)} to obtain a new rawData list,
	* and cache the result in <var>userData</var> under <var>key</var>.
	* @param userData The request contextual cache allocated by
	*        the {@link JvmContextFactory}.
	* @param key The name under which the raw data is to be found/put in
	*        the request contextual cache.
	*
	**/
	@:overload private function getRawDatas(userData : java.util.Map.Map<java.lang.Object.Object, java.lang.Object.Object>, key : java.lang.String.String) : java.util.List.List<Dynamic>;
	
	/**
	* Update cahed datas.
	* Obtains a {@link List} of raw datas by calling
	* {@link #getRawDatas(Map,String) getRawDatas((Map)context,getRawDatasKey())}.<br>
	* Then allocate a new {@link TreeMap} to serve as temporary map between
	* names and indexes, and call {@link #updateCachedDatas(Object,List)}
	* with that temporary map as context.<br>
	* Finally replaces the {@link #names} TreeMap by the temporary
	* TreeMap.
	* @param context The request contextual cache allocated by the
	*        {@link JvmContextFactory}.
	**/
	@:overload override private function updateCachedDatas(context : java.lang.Object.Object) : sun.management.snmp.util.SnmpCachedData.SnmpCachedData;
	
	
}
