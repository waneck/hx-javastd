package sun.awt;
/*
* Copyright (c) 1997, 2012, Oracle and/or its affiliates. All rights reserved.
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
* @author Pavel Porvatov
*/
extern class OSInfo
{
	/*
	The map windowsVersionMap must contain all windows version constants except WINDOWS_UNKNOWN,
	and so the method getWindowsVersion() will return the constant for known OS.
	It allows compare objects by "==" instead of "equals".
	*/
	public static var WINDOWS_UNKNOWN(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_95(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_98(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_ME(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_2000(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_XP(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_2003(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	public static var WINDOWS_VISTA(default, null) : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	/**
	* Returns type of operating system.
	*/
	@:overload public static function getOSType() : sun.awt.OSInfo.OSInfo_OSType;
	
	@:overload public static function getOSTypeAction() : java.security.PrivilegedAction<sun.awt.OSInfo.OSInfo_OSType>;
	
	@:overload public static function getWindowsVersion() : sun.awt.OSInfo.OSInfo_WindowsVersion;
	
	
}
@:native('sun$awt$OSInfo$OSType') extern enum OSInfo_OSType
{
	WINDOWS;
	LINUX;
	SOLARIS;
	MACOSX;
	UNKNOWN;
	
}

@:native('sun$awt$OSInfo$WindowsVersion') extern class OSInfo_WindowsVersion implements java.lang.Comparable<sun.awt.OSInfo.OSInfo_WindowsVersion>
{
	@:overload public function getMajor() : Int;
	
	@:overload public function getMinor() : Int;
	
	@:overload public function compareTo(o : sun.awt.OSInfo.OSInfo_WindowsVersion) : Int;
	
	@:overload public function equals(obj : Dynamic) : Bool;
	
	@:overload public function hashCode() : Int;
	
	@:overload public function toString() : String;
	
	
}
