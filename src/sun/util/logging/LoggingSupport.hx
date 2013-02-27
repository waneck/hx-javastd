package sun.util.logging;
/*
* Copyright (c) 2009, Oracle and/or its affiliates. All rights reserved.
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
extern class LoggingSupport
{
	/**
	* Returns true if java.util.logging support is available.
	*/
	@:overload public static function isAvailable() : Bool;
	
	@:overload public static function getLoggerNames() : java.util.List<String>;
	
	@:overload public static function getLoggerLevel(loggerName : String) : String;
	
	@:overload public static function setLoggerLevel(loggerName : String, levelName : String) : Void;
	
	@:overload public static function getParentLoggerName(loggerName : String) : String;
	
	@:overload public static function getLogger(name : String) : Dynamic;
	
	@:overload public static function getLevel(logger : Dynamic) : Dynamic;
	
	@:overload public static function setLevel(logger : Dynamic, newLevel : Dynamic) : Void;
	
	@:overload public static function isLoggable(logger : Dynamic, level : Dynamic) : Bool;
	
	@:overload public static function log(logger : Dynamic, level : Dynamic, msg : String) : Void;
	
	@:overload public static function log(logger : Dynamic, level : Dynamic, msg : String, t : java.lang.Throwable) : Void;
	
	@:overload public static function log(logger : Dynamic, level : Dynamic, msg : String, params : java.NativeArray<Dynamic>) : Void;
	
	@:overload public static function parseLevel(levelName : String) : Dynamic;
	
	@:overload public static function getLevelName(level : Dynamic) : String;
	
	@:overload public static function getSimpleFormat() : String;
	
	
}
