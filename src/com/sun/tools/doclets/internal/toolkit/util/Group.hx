package com.sun.tools.doclets.internal.toolkit.util;
/*
* Copyright (c) 1998, 2008, Oracle and/or its affiliates. All rights reserved.
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
* Process and manage grouping of packages, as specified by "-group" option on
* the command line.
* <p>
* For example, if user has used -group option as
* -group "Core Packages" "java.*" -group "CORBA Packages" "org.omg.*", then
* the packages specified on the command line will be grouped according to their
* names starting with either "java." or "org.omg.". All the other packages
* which do not fall in the user given groups, are grouped in default group,
* named as either "Other Packages" or "Packages" depending upon if "-group"
* option used or not at all used respectively.
* </p>
* <p>
* Also the packages are grouped according to the longest possible match of
* their names with the grouping information provided. For example, if there
* are two groups, like -group "Lang" "java.lang" and -group "Core" "java.*",
* will put the package java.lang in the group "Lang" and not in group "Core".
* </p>
*
* This code is not part of an API.
* It is implementation that is subject to change.
* Do not use it as an API
*
* @author Atul M Dambalkar
*/
extern class Group
{
	@:overload public function new(configuration : com.sun.tools.doclets.internal.toolkit.Configuration) : Void;
	
	/**
	* Depending upon the format of the package name provided in the "-group"
	* option, generate two separate maps. There will be a map for mapping
	* regular expression(only meta character allowed is '*' and that is at the
	* end of the regular expression) on to the group name. And another map
	* for mapping (possible) package names(if the name format doesen't contain
	* meta character '*', then it is assumed to be a package name) on to the
	* group name. This will also sort all the regular expressions found in the
	* reverse order of their lengths, i.e. longest regular expression will be
	* first in the sorted list.
	*
	* @param groupname       The name of the group from -group option.
	* @param pkgNameFormList List of the package name formats.
	*/
	@:overload public function checkPackageGroups(groupname : String, pkgNameFormList : String) : Bool;
	
	/**
	* Group the packages according the grouping information provided on the
	* command line. Given a list of packages, search each package name in
	* regular expression map as well as package name map to get the
	* corresponding group name. Create another map with mapping of group name
	* to the package list, which will fall under the specified group. If any
	* package doesen't belong to any specified group on the comamnd line, then
	* a new group named "Other Packages" will be created for it. If there are
	* no groups found, in other words if "-group" option is not at all used,
	* then all the packages will be grouped under group "Packages".
	*
	* @param packages Packages specified on the command line.
	*/
	@:overload public function groupPackages(packages : java.NativeArray<com.sun.javadoc.PackageDoc>) : java.util.Map<String, java.util.List<com.sun.javadoc.PackageDoc>>;
	
	/**
	* Return the list of groups, in the same order as specified
	* on the command line.
	*/
	@:overload public function getGroupList() : java.util.List<String>;
	
	
}
/**
* Since we need to sort the keys in the reverse order(longest key first),
* the compare method in the implementing class is doing the reverse
* comparison.
*/
@:native('com$sun$tools$doclets$internal$toolkit$util$Group$MapKeyComparator') @:internal extern class Group_MapKeyComparator implements java.util.Comparator<String>
{
	@:overload public function compare(key1 : String, key2 : String) : Int;
	
	
}
