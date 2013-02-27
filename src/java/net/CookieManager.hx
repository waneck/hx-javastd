package java.net;
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
extern class CookieManager extends java.net.CookieHandler
{
	/**
	* Create a new cookie manager.
	*
	* <p>This constructor will create new cookie manager with default
	* cookie store and accept policy. The effect is same as
	* <tt>CookieManager(null, null)</tt>.
	*/
	@:overload public function new() : Void;
	
	/**
	* Create a new cookie manager with specified cookie store and cookie policy.
	*
	* @param store     a <tt>CookieStore</tt> to be used by cookie manager.
	*                  if <tt>null</tt>, cookie manager will use a default one,
	*                  which is an in-memory CookieStore implmentation.
	* @param cookiePolicy      a <tt>CookiePolicy</tt> instance
	*                          to be used by cookie manager as policy callback.
	*                          if <tt>null</tt>, ACCEPT_ORIGINAL_SERVER will
	*                          be used.
	*/
	@:overload public function new(store : java.net.CookieStore, cookiePolicy : java.net.CookiePolicy) : Void;
	
	/**
	* To set the cookie policy of this cookie manager.
	*
	* <p> A instance of <tt>CookieManager</tt> will have
	* cookie policy ACCEPT_ORIGINAL_SERVER by default. Users always
	* can call this method to set another cookie policy.
	*
	* @param cookiePolicy      the cookie policy. Can be <tt>null</tt>, which
	*                          has no effects on current cookie policy.
	*/
	@:overload public function setCookiePolicy(cookiePolicy : java.net.CookiePolicy) : Void;
	
	/**
	* To retrieve current cookie store.
	*
	* @return  the cookie store currently used by cookie manager.
	*/
	@:overload public function getCookieStore() : java.net.CookieStore;
	
	@:overload override public function get(uri : java.net.URI, requestHeaders : java.util.Map<String, java.util.List<String>>) : java.util.Map<String, java.util.List<String>>;
	
	@:overload override public function put(uri : java.net.URI, responseHeaders : java.util.Map<String, java.util.List<String>>) : Void;
	
	
}
@:native('java$net$CookieManager$CookiePathComparator') @:internal extern class CookieManager_CookiePathComparator implements java.util.Comparator<java.net.HttpCookie>
{
	@:overload public function compare(c1 : java.net.HttpCookie, c2 : java.net.HttpCookie) : Int;
	
	
}
