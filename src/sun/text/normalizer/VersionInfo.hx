package sun.text.normalizer;
/*
* Copyright (c) 2005, 2009, Oracle and/or its affiliates. All rights reserved.
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
*******************************************************************************
* (C) Copyright IBM Corp. and others, 1996-2009 - All Rights Reserved         *
*                                                                             *
* The original version of this source code and documentation is copyrighted   *
* and owned by IBM, These materials are provided under terms of a License     *
* Agreement between IBM and Sun. This technology is protected by multiple     *
* US and International patents. This notice and attribution to IBM may not    *
* to removed.                                                                 *
*******************************************************************************
*/
extern class VersionInfo
{
	/**
	* Returns an instance of VersionInfo with the argument version.
	* @param version version String in the format of "major.minor.milli.micro"
	*                or "major.minor.milli" or "major.minor" or "major",
	*                where major, minor, milli, micro are non-negative numbers
	*                <= 255. If the trailing version numbers are
	*                not specified they are taken as 0s. E.g. Version "3.1" is
	*                equivalent to "3.1.0.0".
	* @return an instance of VersionInfo with the argument version.
	* @exception throws an IllegalArgumentException when the argument version
	*                is not in the right format
	* @stable ICU 2.6
	*/
	@:overload public static function getInstance(version : String) : sun.text.normalizer.VersionInfo;
	
	/**
	* Returns an instance of VersionInfo with the argument version.
	* @param major major version, non-negative number <= 255.
	* @param minor minor version, non-negative number <= 255.
	* @param milli milli version, non-negative number <= 255.
	* @param micro micro version, non-negative number <= 255.
	* @exception throws an IllegalArgumentException when either arguments are
	*                                     negative or > 255
	* @stable ICU 2.6
	*/
	@:overload public static function getInstance(major : Int, minor : Int, milli : Int, micro : Int) : sun.text.normalizer.VersionInfo;
	
	/**
	* Compares other with this VersionInfo.
	* @param other VersionInfo to be compared
	* @return 0 if the argument is a VersionInfo object that has version
	*           information equals to this object.
	*           Less than 0 if the argument is a VersionInfo object that has
	*           version information greater than this object.
	*           Greater than 0 if the argument is a VersionInfo object that
	*           has version information less than this object.
	* @stable ICU 2.6
	*/
	@:overload public function compareTo(other : sun.text.normalizer.VersionInfo) : Int;
	
	
}
