package java.awt;
/*
* Copyright (c) 1998, 2006, Oracle and/or its affiliates. All rights reserved.
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
* (C) Copyright IBM Corp. 1998 - All Rights Reserved
*
* The original version of this source code and documentation is copyrighted
* and owned by IBM, Inc. These materials are provided under terms of a
* License Agreement between IBM and Sun. This technology is protected by
* multiple US and International patents. This notice and attribution to IBM
* may not be removed.
*
*/
extern class ComponentOrientation implements java.io.Serializable
{
	/**
	* Items run left to right and lines flow top to bottom
	* Examples: English, French.
	*/
	public static var LEFT_TO_RIGHT(default, null) : java.awt.ComponentOrientation;
	
	/**
	* Items run right to left and lines flow top to bottom
	* Examples: Arabic, Hebrew.
	*/
	public static var RIGHT_TO_LEFT(default, null) : java.awt.ComponentOrientation;
	
	/**
	* Indicates that a component's orientation has not been set.
	* To preserve the behavior of existing applications,
	* isLeftToRight will return true for this value.
	*/
	public static var UNKNOWN(default, null) : java.awt.ComponentOrientation;
	
	/**
	* Are lines horizontal?
	* This will return true for horizontal, left-to-right writing
	* systems such as Roman.
	*/
	@:overload public function isHorizontal() : Bool;
	
	/**
	* HorizontalLines: Do items run left-to-right?<br>
	* Vertical Lines:  Do lines run left-to-right?<br>
	* This will return true for horizontal, left-to-right writing
	* systems such as Roman.
	*/
	@:overload public function isLeftToRight() : Bool;
	
	/**
	* Returns the orientation that is appropriate for the given locale.
	* @param locale the specified locale
	*/
	@:overload public static function getOrientation(locale : java.util.Locale) : java.awt.ComponentOrientation;
	
	/**
	* Returns the orientation appropriate for the given ResourceBundle's
	* localization.  Three approaches are tried, in the following order:
	* <ol>
	* <li>Retrieve a ComponentOrientation object from the ResourceBundle
	*      using the string "Orientation" as the key.
	* <li>Use the ResourceBundle.getLocale to determine the bundle's
	*      locale, then return the orientation for that locale.
	* <li>Return the default locale's orientation.
	* </ol>
	*
	* @deprecated As of J2SE 1.4, use {@link #getOrientation(java.util.Locale)}.
	*/
	@:overload public static function getOrientation(bdl : java.util.ResourceBundle) : java.awt.ComponentOrientation;
	
	
}
