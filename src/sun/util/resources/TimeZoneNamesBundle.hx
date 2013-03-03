package sun.util.resources;
/*
* Copyright (c) 2005, 2007, Oracle and/or its affiliates. All rights reserved.
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
/*
* (C) Copyright Taligent, Inc. 1996, 1997 - All Rights Reserved
* (C) Copyright IBM Corp. 1996 - 1998 - All Rights Reserved
*
* The original version of this source code and documentation
* is copyrighted and owned by Taligent, Inc., a wholly-owned
* subsidiary of IBM. These materials are provided under terms
* of a License Agreement between Taligent and Sun. This technology
* is protected by multiple US and International patents.
*
* This notice and attribution to Taligent may not be removed.
* Taligent is a registered trademark of Taligent, Inc.
*
*/
extern class TimeZoneNamesBundle extends sun.util.resources.OpenListResourceBundle
{
	/**
	* Maps time zone IDs to locale-specific names.
	* The value returned is an array of five strings:
	* <ul>
	* <li>The time zone ID (same as the key, not localized).
	* <li>The long name of the time zone in standard time (localized).
	* <li>The short name of the time zone in standard time (localized).
	* <li>The long name of the time zone in daylight savings time (localized).
	* <li>The short name of the time zone in daylight savings time (localized).
	* </ul>
	* The localized names come from the subclasses's
	* <code>getContents</code> implementations, while the time zone
	* ID is inserted into the returned array by this method.
	*/
	@:overload @:public override public function handleGetObject(key : String) : Dynamic;
	
	/**
	* Use LinkedHashMap to preserve order of bundle entries.
	*/
	@:overload @:protected override private function createMap(size : Int) : java.util.Map<Dynamic, Dynamic>;
	
	/**
	* Provides key/value mappings for a specific
	* resource bundle. Each entry of the array
	* returned must be an array with two elements:
	* <ul>
	* <li>The key, which must be a string.
	* <li>The value, which must be an array of
	*     four strings:
	*     <ul>
	*     <li>The long name of the time zone in standard time.
	*     <li>The short name of the time zone in standard time.
	*     <li>The long name of the time zone in daylight savings time.
	*     <li>The short name of the time zone in daylight savings time.
	*     </ul>
	* </ul>
	*/
	@:overload @:protected @:abstract override private function getContents() : java.NativeArray<java.NativeArray<Dynamic>>;
	
	
}
