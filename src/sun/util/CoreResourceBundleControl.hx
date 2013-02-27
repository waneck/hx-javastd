package sun.util;
/*
* Copyright (c) 2005, Oracle and/or its affiliates. All rights reserved.
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
//// -- This file was mechanically generated: Do not edit! -- //
extern class CoreResourceBundleControl extends java.util.ResourceBundle.ResourceBundle_Control
{
	@:overload private function new() : Void;
	
	/**
	* This method is to provide a customized ResourceBundle.Control to speed
	* up the search of resources in JDK.
	*
	* @return the instance of resource bundle control.
	*/
	@:overload public static function getRBControlInstance() : CoreResourceBundleControl;
	
	/**
	* This method is to provide a customized ResourceBundle.Control to speed
	* up the search of resources in JDK, with the bundle's package name check.
	*
	* @param bundleName bundle name to check
	* @return the instance of resource bundle control if the bundle is JDK's,
	*    otherwise returns null.
	*/
	@:overload public static function getRBControlInstance(bundleName : String) : CoreResourceBundleControl;
	
	/**
	* @returns a list of candidate locales to search from.
	* @exception NullPointerException if baseName or locale is null.
	*/
	@:overload override public function getCandidateLocales(baseName : String, locale : java.util.Locale) : java.util.List<java.util.Locale>;
	
	/**
	* @ returns TTL_DONT_CACHE so that ResourceBundle instance won't be cached.
	* User of this CoreResourceBundleControl should probably maintain a hard reference
	* to the ResourceBundle object themselves.
	*/
	@:overload override public function getTimeToLive(baseName : String, locale : java.util.Locale) : haxe.Int64;
	
	
}
