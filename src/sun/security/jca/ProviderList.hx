package sun.security.jca;
/*
* Copyright (c) 2003, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class ProviderList
{
	@:overload public static function add(providerList : ProviderList, p : java.security.Provider) : ProviderList;
	
	@:overload public static function insertAt(providerList : ProviderList, p : java.security.Provider, position : Int) : ProviderList;
	
	@:overload public static function remove(providerList : ProviderList, name : String) : ProviderList;
	
	@:overload public static function newList(providers : java.NativeArray<java.security.Provider>) : ProviderList;
	
	@:overload public function size() : Int;
	
	/**
	* Return an unmodifiable List of all Providers in this List. The
	* individual Providers are loaded on demand. Elements that could not
	* be initialized are replaced with EMPTY_PROVIDER.
	*/
	@:overload public function providers() : java.util.List<java.security.Provider>;
	
	@:overload public function getProvider(name : String) : java.security.Provider;
	
	/**
	* Return the index at which the provider with the specified name is
	* installed or -1 if it is not present in this ProviderList.
	*/
	@:overload public function getIndex(name : String) : Int;
	
	@:overload public function toArray() : java.NativeArray<java.security.Provider>;
	
	@:overload public function toString() : String;
	
	/**
	* Return a Service describing an implementation of the specified
	* algorithm from the Provider with the highest precedence that
	* supports that algorithm. Return null if no Provider supports this
	* algorithm.
	*/
	@:overload public function getService(type : String, name : String) : java.security.Provider.Provider_Service;
	
	/**
	* Return a List containing all the Services describing implementations
	* of the specified algorithms in precedence order. If no implementation
	* exists, this method returns an empty List.
	*
	* The elements of this list are determined lazily on demand.
	*
	* The List returned is NOT thread safe.
	*/
	@:overload public function getServices(type : String, algorithm : String) : java.util.List<java.security.Provider.Provider_Service>;
	
	/**
	* This method exists for compatibility with JCE only. It will be removed
	* once JCE has been changed to use the replacement method.
	* @deprecated use getServices(List<ServiceId>) instead
	*/
	@:overload public function getServices(type : String, algorithms : java.util.List<String>) : java.util.List<java.security.Provider.Provider_Service>;
	
	@:overload public function getServices(ids : java.util.List<sun.security.jca.ServiceId>) : java.util.List<java.security.Provider.Provider_Service>;
	
	
}
/**
* Inner class for a List of Services. Custom List implementation in
* order to delay Provider initialization and lookup.
* Not thread safe.
*/
@:native('sun$security$jca$ProviderList$ServiceList') @:internal extern class ProviderList_ServiceList extends java.util.AbstractList<java.security.Provider.Provider_Service>
{
	@:overload override public function get(index : Int) : java.security.Provider.Provider_Service;
	
	@:overload override public function size() : Int;
	
	@:overload override public function isEmpty() : Bool;
	
	@:overload override public function iterator() : java.util.Iterator<java.security.Provider.Provider_Service>;
	
	
}
