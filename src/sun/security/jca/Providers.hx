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
extern class Providers
{
	@:overload public static function getSunProvider() : java.security.Provider;
	
	/**
	* Start JAR verification. This sets a special provider list for
	* the current thread. You MUST save the return value from this
	* method and you MUST call stopJarVerification() with that object
	* once you are done.
	*/
	@:overload public static function startJarVerification() : Dynamic;
	
	/**
	* Stop JAR verification. Call once you have completed JAR verification.
	*/
	@:overload public static function stopJarVerification(obj : Dynamic) : Void;
	
	/**
	* Return the current ProviderList. If the thread-local list is set,
	* it is returned. Otherwise, the system wide list is returned.
	*/
	@:overload public static function getProviderList() : sun.security.jca.ProviderList;
	
	/**
	* Set the current ProviderList. Affects the thread-local list if set,
	* otherwise the system wide list.
	*/
	@:overload public static function setProviderList(newList : sun.security.jca.ProviderList) : Void;
	
	/**
	* Get the full provider list with invalid providers (those that
	* could not be loaded) removed. This is the list we need to
	* present to applications.
	*/
	@:overload public static function getFullProviderList() : sun.security.jca.ProviderList;
	
	@:overload public static function getThreadProviderList() : sun.security.jca.ProviderList;
	
	/**
	* Methods to manipulate the thread local provider list. It is for use by
	* JAR verification (see above) and the SunJSSE FIPS mode only.
	*
	* It should be used as follows:
	*
	*   ProviderList list = ...;
	*   ProviderList oldList = Providers.beginThreadProviderList(list);
	*   try {
	*     // code that needs thread local provider list
	*   } finally {
	*     Providers.endThreadProviderList(oldList);
	*   }
	*
	*/
	@:overload @:synchronized public static function beginThreadProviderList(list : sun.security.jca.ProviderList) : sun.security.jca.ProviderList;
	
	@:overload @:synchronized public static function endThreadProviderList(list : sun.security.jca.ProviderList) : Void;
	
	
}
