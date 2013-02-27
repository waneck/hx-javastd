package sun.misc;
/*
* Copyright (c) 1999, 2011, Oracle and/or its affiliates. All rights reserved.
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
extern class Version
{
	@:overload public static function init() : Void;
	
	/**
	* In case you were wondering this method is called by java -version.
	* Sad that it prints to stderr; would be nicer if default printed on
	* stdout.
	*/
	@:overload public static function print() : Void;
	
	/**
	* This is the same as print except that it adds an extra line-feed
	* at the end, typically used by the -showversion in the launcher
	*/
	@:overload public static function println() : Void;
	
	/**
	* Give a stream, it will print version info on it.
	*/
	@:overload public static function print(ps : java.io.PrintStream) : Void;
	
	/**
	* Returns the major version of the running JVM if it's 1.6 or newer
	* or any RE VM build. It will return 0 if it's an internal 1.5 or
	* 1.4.x build.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jvmMajorVersion() : Int;
	
	/**
	* Returns the minor version of the running JVM if it's 1.6 or newer
	* or any RE VM build. It will return 0 if it's an internal 1.5 or
	* 1.4.x build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jvmMinorVersion() : Int;
	
	/**
	* Returns the micro version of the running JVM if it's 1.6 or newer
	* or any RE VM build. It will return 0 if it's an internal 1.5 or
	* 1.4.x build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jvmMicroVersion() : Int;
	
	/**
	* Returns the update release version of the running JVM if it's
	* a RE build. It will return 0 if it's an internal build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jvmUpdateVersion() : Int;
	
	@:overload @:synchronized public static function jvmSpecialVersion() : String;
	
	@:overload @:native public static function getJvmSpecialVersion() : String;
	
	/**
	* Returns the build number of the running JVM if it's a RE build
	* It will return 0 if it's an internal build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jvmBuildNumber() : Int;
	
	/**
	* Returns the major version of the running JDK.
	*
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jdkMajorVersion() : Int;
	
	/**
	* Returns the minor version of the running JDK.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jdkMinorVersion() : Int;
	
	/**
	* Returns the micro version of the running JDK.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jdkMicroVersion() : Int;
	
	/**
	* Returns the update release version of the running JDK if it's
	* a RE build. It will return 0 if it's an internal build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jdkUpdateVersion() : Int;
	
	@:overload @:synchronized public static function jdkSpecialVersion() : String;
	
	@:overload @:native public static function getJdkSpecialVersion() : String;
	
	/**
	* Returns the build number of the running JDK if it's a RE build
	* It will return 0 if it's an internal build.
	* @since 1.6
	*/
	@:require(java6) @:overload @:synchronized public static function jdkBuildNumber() : Int;
	
	
}
