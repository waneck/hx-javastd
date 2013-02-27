package sun.net;
/*
* Copyright (c) 1998, 2010, Oracle and/or its affiliates. All rights reserved.
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
extern class InetAddressCachePolicy
{
	public static var FOREVER(default, null) : Int;
	
	public static var NEVER(default, null) : Int;
	
	/* default value for positive lookups */
	public static var DEFAULT_POSITIVE(default, null) : Int;
	
	@:overload @:synchronized public static function get() : Int;
	
	@:overload @:synchronized public static function getNegative() : Int;
	
	/**
	* Sets the cache policy for successful lookups if the user has not
	* already specified a cache policy for it using a
	* command-property.
	* @param newPolicy the value in seconds for how long the lookup
	* should be cached
	*/
	@:overload @:synchronized public static function setIfNotSet(newPolicy : Int) : Void;
	
	/**
	* Sets the cache policy for negative lookups if the user has not
	* already specified a cache policy for it using a
	* command-property.
	* @param newPolicy the value in seconds for how long the lookup
	* should be cached
	*/
	@:overload @:synchronized public static function setNegativeIfNotSet(newPolicy : Int) : Void;
	
	
}
